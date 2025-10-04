#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Generate SQL INSERT statements for:
  - location(id, name, region, shape)
  - pokemon(..., location_id, image_vector, text_vector, ...)
using PokeAPI for Generation 1 (Kanto).

Usage:
  python gen_kanto_inserts.py > inserts.sql

Requires: requests
  pip install requests
"""

import requests
import sys
import time
from collections import OrderedDict

POKEAPI = "https://pokeapi.co/api/v2"
GENERATION_ID = 1  # Kanto
SRID = 4326        # WGS84 for synthetic polygons

# ---- helpers ---------------------------------------------------------------

def esc(val: str) -> str:
    """Escape single quotes for SQL literals."""
    if val is None:
        return None
    return val.replace("'", "''")

def sql_literal(val):
    """Return SQL literal with quoting or NULL."""
    if val is None:
        return "NULL"
    return "'" + esc(str(val)) + "'"

def wkt_polygon_from_index(idx: int, cell_size=0.1, grid_width=15):
    """
    Produce a small square polygon in a deterministic grid.
    This is a synthetic placeholder (valid PostGIS polygon).
    """
    row = idx // grid_width
    col = idx % grid_width
    x1 = -10.0 + col * cell_size
    y1 =  40.0 + row * cell_size
    x2 = x1 + cell_size
    y2 = y1 + cell_size
    coords = [(x1,y1),(x2,y1),(x2,y2),(x1,y2),(x1,y1)]
    wkt = "POLYGON((" + ", ".join(f"{x} {y}" for x,y in coords) + "))"
    return wkt

def get_json(url):
    for attempt in range(3):
        r = requests.get(url, timeout=30, headers={"User-Agent":"kanto-sql-gen/1.0"})
        if r.status_code == 200:
            return r.json()
        time.sleep(0.8 * (attempt + 1))
    raise RuntimeError(f"Failed GET {url}: {r.status_code} {r.text[:200]}")

def flavor_text_en(species_json):
    entries = species_json.get("flavor_text_entries", [])
    for e in entries:
        if e.get("language", {}).get("name") == "en":
            txt = e.get("flavor_text", "").replace("\n", " ").replace("\f", " ").strip()
            return txt
    return None

def is_legendary_or_mythical(species_json):
    return bool(species_json.get("is_legendary") or species_json.get("is_mythical"))

def sum_stats(pokemon_json):
    return sum(s["base_stat"] for s in pokemon_json.get("stats", []))

def types_tuple(pokemon_json):
    types = sorted(pokemon_json.get("types", []), key=lambda t: t["slot"])
    t1 = types[0]["type"]["name"] if len(types) >= 1 else None
    t2 = types[1]["type"]["name"] if len(types) >= 2 else None
    return t1, t2

def official_artwork(pokemon_json):
    try:
        return pokemon_json["sprites"]["other"]["official-artwork"]["front_default"]
    except Exception:
        return pokemon_json.get("sprites", {}).get("front_default")

def primary_kanto_location_name(pokemon_id):
    """
    Return first Kanto location name where the Pokémon can be encountered, or None.
    """
    url = f"{POKEAPI}/pokemon/{pokemon_id}/encounters"
    enc = get_json(url)
    for area in enc:
        loc_area = area.get("location_area", {})
        la_url = loc_area.get("url")
        if not la_url:
            continue
        la_json = get_json(la_url)
        loc = la_json.get("location", {})
        loc_name = loc.get("name")
        loc_url = loc.get("url")
        if not (loc_name and loc_url):
            continue
        loc_json = get_json(loc_url)
        region = loc_json.get("region", {}).get("name")
        if region == "kanto":
            pretty = loc_name.replace("-", " ").title()
            return pretty
    return None

# ---- main ------------------------------------------------------------------

def main():
    print("-- Generating Kanto Pokémon and location INSERTs from PokeAPI")
    # 1) get Generation 1 species list (bulbasaur..mew)
    gen = get_json(f"{POKEAPI}/generation/{GENERATION_ID}")
    species_urls = [s["url"] for s in gen["pokemon_species"]]

    def species_id(url):
        # urls like .../pokemon-species/1/
        return int(url.strip("/").split("/")[-1])
    species_urls.sort(key=species_id)

    print(f"-- Found {len(species_urls)} species in Generation {GENERATION_ID}")
    # 2) Build location set and Pokémon rows
    unique_locations = OrderedDict()  # name -> {'region': 'Kanto', 'wkt': ...}
    pokemon_rows = []

    print("-- Fetching species and Pokémon details from PokeAPI...")

    for s_url in species_urls:
        print(f"-- Processing {s_url}", file=sys.stderr)
        s_json = get_json(s_url)
        sid = species_id(s_url)
        name = s_json["name"].replace("-", " ").title()
        description = flavor_text_en(s_json)
        legendary = is_legendary_or_mythical(s_json)

        # default variety -> pokemon details
        p_json = get_json(f"{POKEAPI}/pokemon/{sid}")
        t1, t2 = types_tuple(p_json)
        total = sum_stats(p_json)
        image_url = official_artwork(p_json)

        # Determine a primary Kanto location (if any)
        loc_name = primary_kanto_location_name(sid)
        if loc_name and loc_name not in unique_locations:
            idx = len(unique_locations)
            wkt = wkt_polygon_from_index(idx)
            unique_locations[loc_name] = {"region": "Kanto", "wkt": wkt}

        pokemon_rows.append({
            "id": sid,
            "name": name,
            "description": description,
            "type1": t1,
            "type2": t2,
            "total": total,
            "generation": 1,
            "legendary": legendary,
            "image_url": image_url,
            "location_name": loc_name  # may be None
        })

        time.sleep(0.05)  # be kind to the public API

    # 3) Emit SQL
    out = []

    out.append("-- ===============================================")
    out.append("-- Generated Kanto locations and Pokémon inserts")
    out.append("-- NOTE: 'shape' polygons below are synthetic placeholders.")
    out.append("--       Replace with real PostGIS geometries if available.")
    out.append("-- ===============================================")
    out.append("BEGIN;")

    # 3a) Locations
    out.append("\n-- Insert locations (Kanto)")
    for name, meta in unique_locations.items():
        nm = esc(name)
        rg = esc(meta["region"])
        wkt = meta["wkt"]
        out.append(
            "INSERT INTO location (name, region, shape)\n"
            f"VALUES ({sql_literal(nm)}, {sql_literal(rg)}, ST_GeomFromText('{wkt}', {SRID}));"
        )

    # 3b) Pokémon
    out.append("\n-- Insert Pokémon (Gen 1)")
    for row in pokemon_rows:
        nm_lit   = sql_literal(row["name"])
        desc_lit = sql_literal(row["description"])
        t1_lit   = sql_literal(row["type1"])
        t2_lit   = sql_literal(row["type2"])
        img_lit  = sql_literal(row["image_url"])
        total    = row["total"] if row["total"] is not None else "NULL"
        generation = row["generation"]
        legendary  = "TRUE" if row["legendary"] else "FALSE"

        if row["location_name"]:
            lnm = esc(row["location_name"])
            loc_sql = f"(SELECT id FROM location WHERE name = {sql_literal(lnm)} LIMIT 1)"
        else:
            loc_sql = "NULL"

        out.append(
            "INSERT INTO pokemon (\n"
            "  name, description, type1, type2, total, generation, legendary,\n"
            "  image_url, location_id, image_vector, text_vector, created_at, updated_at\n"
            ")\nVALUES (\n"
            f"  {nm_lit},\n"
            f"  {desc_lit},\n"
            f"  {t1_lit},\n"
            f"  {t2_lit},\n"
            f"  {total},\n"
            f"  {generation},\n"
            f"  {legendary},\n"
            f"  {img_lit},\n"
            f"  {loc_sql},\n"
            "  NULL,  -- image_vector: backfill with pgai\n"
            "  NULL,  -- text_vector: backfill with pgai\n"
            "  NOW(), NOW()\n"
            ");"
        )

    # 3c) Optional embedding backfill with pgai
    out.append("\n-- ===============================================")
    out.append("-- OPTIONAL: Backfill embeddings with pgai")
    out.append("-- Example (adjust to your pgai version):")
    out.append("-- UPDATE pokemon")
    out.append("-- SET text_vector = ai.openai_embed('text-embedding-3-small', name || ' ' || COALESCE(description,''))")
    out.append("-- WHERE text_vector IS NULL;")
    out.append("--")
    out.append("-- For image vectors, embed images with your chosen model and UPDATE pokemon.image_vector accordingly.")
    out.append("-- ===============================================")

    out.append("\nCOMMIT;")

    sys.stdout.write("\n".join(out))


if __name__ == "__main__":
    main()
