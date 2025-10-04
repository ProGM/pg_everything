-- ===============================================
-- Generated Kanto locations and Pokémon inserts
-- NOTE: 'shape' polygons below are synthetic placeholders.
--       Replace with real PostGIS geometries if available.
-- ===============================================
BEGIN;

-- Insert locations (Kanto)
INSERT INTO location (name, region, shape)
VALUES ('Cerulean City', 'Kanto', ST_GeomFromText('POLYGON((-10.0 40.0, -9.9 40.0, -9.9 40.1, -10.0 40.1, -10.0 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Pallet Town', 'Kanto', ST_GeomFromText('POLYGON((-9.9 40.0, -9.8 40.0, -9.8 40.1, -9.9 40.1, -9.9 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Vermilion City', 'Kanto', ST_GeomFromText('POLYGON((-9.8 40.0, -9.700000000000001 40.0, -9.700000000000001 40.1, -9.8 40.1, -9.8 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 26', 'Kanto', ST_GeomFromText('POLYGON((-9.7 40.0, -9.6 40.0, -9.6 40.1, -9.7 40.1, -9.7 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 12', 'Kanto', ST_GeomFromText('POLYGON((-9.6 40.0, -9.5 40.0, -9.5 40.1, -9.6 40.1, -9.6 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 1', 'Kanto', ST_GeomFromText('POLYGON((-9.5 40.0, -9.4 40.0, -9.4 40.1, -9.5 40.1, -9.5 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 3', 'Kanto', ST_GeomFromText('POLYGON((-9.4 40.0, -9.3 40.0, -9.3 40.1, -9.4 40.1, -9.4 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 9', 'Kanto', ST_GeomFromText('POLYGON((-9.3 40.0, -9.200000000000001 40.0, -9.200000000000001 40.1, -9.3 40.1, -9.3 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Cerulean Cave', 'Kanto', ST_GeomFromText('POLYGON((-9.2 40.0, -9.1 40.0, -9.1 40.1, -9.2 40.1, -9.2 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Mt Moon', 'Kanto', ST_GeomFromText('POLYGON((-9.1 40.0, -9.0 40.0, -9.0 40.1, -9.1 40.1, -9.1 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 2', 'Kanto', ST_GeomFromText('POLYGON((-9.0 40.0, -8.9 40.0, -8.9 40.1, -9.0 40.1, -9.0 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 7', 'Kanto', ST_GeomFromText('POLYGON((-8.9 40.0, -8.8 40.0, -8.8 40.1, -8.9 40.1, -8.9 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Seafoam Islands', 'Kanto', ST_GeomFromText('POLYGON((-8.8 40.0, -8.700000000000001 40.0, -8.700000000000001 40.1, -8.8 40.1, -8.8 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Digletts Cave', 'Kanto', ST_GeomFromText('POLYGON((-8.7 40.0, -8.6 40.0, -8.6 40.1, -8.7 40.1, -8.7 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 5', 'Kanto', ST_GeomFromText('POLYGON((-8.6 40.0, -8.5 40.0, -8.5 40.1, -8.6 40.1, -8.6 40.0))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Rock Tunnel', 'Kanto', ST_GeomFromText('POLYGON((-10.0 40.1, -9.9 40.1, -9.9 40.2, -10.0 40.2, -10.0 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Viridian City', 'Kanto', ST_GeomFromText('POLYGON((-9.9 40.1, -9.8 40.1, -9.8 40.2, -9.9 40.2, -9.9 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 8', 'Kanto', ST_GeomFromText('POLYGON((-9.8 40.1, -9.700000000000001 40.1, -9.700000000000001 40.2, -9.8 40.2, -9.8 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 28', 'Kanto', ST_GeomFromText('POLYGON((-9.7 40.1, -9.6 40.1, -9.6 40.2, -9.7 40.2, -9.7 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 6', 'Kanto', ST_GeomFromText('POLYGON((-9.6 40.1, -9.5 40.1, -9.5 40.2, -9.6 40.2, -9.6 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Celadon City', 'Kanto', ST_GeomFromText('POLYGON((-9.5 40.1, -9.4 40.1, -9.4 40.2, -9.5 40.2, -9.5 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Pokemon Tower', 'Kanto', ST_GeomFromText('POLYGON((-9.4 40.1, -9.3 40.1, -9.3 40.2, -9.4 40.2, -9.4 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 11', 'Kanto', ST_GeomFromText('POLYGON((-9.3 40.1, -9.200000000000001 40.1, -9.200000000000001 40.2, -9.3 40.2, -9.3 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 10', 'Kanto', ST_GeomFromText('POLYGON((-9.2 40.1, -9.1 40.1, -9.1 40.2, -9.2 40.2, -9.2 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Saffron City', 'Kanto', ST_GeomFromText('POLYGON((-9.1 40.1, -9.0 40.1, -9.0 40.2, -9.1 40.2, -9.1 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Pokemon Mansion', 'Kanto', ST_GeomFromText('POLYGON((-9.0 40.1, -8.9 40.1, -8.9 40.2, -9.0 40.2, -9.0 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Victory Road 1', 'Kanto', ST_GeomFromText('POLYGON((-8.9 40.1, -8.8 40.1, -8.8 40.2, -8.9 40.2, -8.9 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Route 13', 'Kanto', ST_GeomFromText('POLYGON((-8.8 40.1, -8.700000000000001 40.1, -8.700000000000001 40.2, -8.8 40.2, -8.8 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Sea Route 21', 'Kanto', ST_GeomFromText('POLYGON((-8.7 40.1, -8.6 40.1, -8.6 40.2, -8.7 40.2, -8.7 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Safari Zone', 'Kanto', ST_GeomFromText('POLYGON((-8.6 40.1, -8.5 40.1, -8.5 40.2, -8.6 40.2, -8.6 40.1))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Icefall Cave', 'Kanto', ST_GeomFromText('POLYGON((-10.0 40.2, -9.9 40.2, -9.9 40.300000000000004, -10.0 40.300000000000004, -10.0 40.2))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Cinnabar Island', 'Kanto', ST_GeomFromText('POLYGON((-9.9 40.2, -9.8 40.2, -9.8 40.300000000000004, -9.9 40.300000000000004, -9.9 40.2))', 4326));
INSERT INTO location (name, region, shape)
VALUES ('Kanto Victory Road 2', 'Kanto', ST_GeomFromText('POLYGON((-9.8 40.2, -9.700000000000001 40.2, -9.700000000000001 40.300000000000004, -9.8 40.300000000000004, -9.8 40.2))', 4326));

-- Insert Pokémon (Gen 1)
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Bulbasaur',
  'A strange seed was planted on its back at birth. The plant sprouts and grows with this POKéMON.',
  'grass',
  'poison',
  318,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
  (SELECT id FROM location WHERE name = 'Cerulean City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Ivysaur',
  'When the bulb on its back grows large, it appears to lose the ability to stand on its hind legs.',
  'grass',
  'poison',
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/2.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Venusaur',
  'The plant blooms when it is absorbing solar energy. It stays on the move to seek sunlight.',
  'grass',
  'poison',
  525,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/3.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Charmander',
  'Obviously prefers hot places. When it rains, steam is said to spout from the tip of its tail.',
  'fire',
  NULL,
  309,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/4.png',
  (SELECT id FROM location WHERE name = 'Pallet Town' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Charmeleon',
  'When it swings its burning tail, it elevates the temperature to unbearably high levels.',
  'fire',
  NULL,
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/5.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Charizard',
  'Spits fire that is hot enough to melt boulders. Known to cause forest fires unintentionally.',
  'fire',
  'flying',
  534,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/6.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Squirtle',
  'After birth, its back swells and hardens into a shell. Powerfully sprays foam from its mouth.',
  'water',
  NULL,
  314,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/7.png',
  (SELECT id FROM location WHERE name = 'Vermilion City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Wartortle',
  'Often hides in water to stalk unwary prey. For swimming fast, it moves its ears to maintain balance.',
  'water',
  NULL,
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/8.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Blastoise',
  'A brutal POKéMON with pressurized water jets on its shell. They are used for high speed tackles.',
  'water',
  NULL,
  530,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/9.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Caterpie',
  'Its short feet are tipped with suction pads that enable it to tirelessly climb slopes and walls.',
  'bug',
  NULL,
  195,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/10.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Metapod',
  'This POKéMON is vulnerable to attack while its shell is soft, exposing its weak and tender body.',
  'bug',
  NULL,
  205,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/11.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Butterfree',
  'In battle, it flaps its wings at high speed to release highly toxic dust into the air.',
  'bug',
  'flying',
  395,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/12.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Weedle',
  'Often found in forests, eating leaves. It has a sharp venomous stinger on its head.',
  'bug',
  'poison',
  195,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/13.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kakuna',
  'Almost incapable of moving, this POKéMON can only harden its shell to protect itself from predators.',
  'bug',
  'poison',
  205,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/14.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Beedrill',
  'It has three poisonous stingers on its forelegs and its tail. They are used to jab its enemy repeatedly.',
  'bug',
  'poison',
  395,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/15.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Pidgey',
  'A common sight in forests and woods. It flaps its wings at ground level to kick up blinding sand.',
  'normal',
  'flying',
  251,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/16.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Pidgeotto',
  'Very protective of its sprawling territorial area, this POKéMON will fiercely peck at any intruder.',
  'normal',
  'flying',
  349,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/17.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Pidgeot',
  'When hunting, it skims the surface of water at high speed to pick off unwary prey such as MAGIKARP.',
  'normal',
  'flying',
  479,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/18.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Rattata',
  'Bites anything when it attacks. Small and very quick, it is a common sight in many places.',
  'normal',
  NULL,
  253,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/19.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 1' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Raticate',
  'It uses its whis kers to maintain its balance. It apparently slows down if they are cut off.',
  'normal',
  NULL,
  413,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/20.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Spearow',
  'It flaps its small wings busily to fly. Using its beak, it searches in grass for prey.',
  'normal',
  'flying',
  262,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/21.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 3' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Fearow',
  'With its huge and magnificent wings, it can keep aloft without ever having to land for rest.',
  'normal',
  'flying',
  442,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/22.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 9' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Ekans',
  'Moves silently and stealthily. Eats the eggs of birds, such as PIDGEY and SPEAROW, whole.',
  'poison',
  NULL,
  288,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/23.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Arbok',
  'It is rumored that the ferocious warning markings on its belly differ from area to area.',
  'poison',
  NULL,
  448,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/24.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Pikachu',
  'When several of these POKéMON gather, their electricity could build and cause lightning storms.',
  'electric',
  NULL,
  320,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/25.png',
  (SELECT id FROM location WHERE name = 'Pallet Town' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Raichu',
  'Its long tail serves as a ground to protect itself from its own high-voltage power.',
  'electric',
  NULL,
  485,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/26.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Sandshrew',
  'Burrows deep underground in arid locations far from water. It only emerges to hunt for food.',
  'ground',
  NULL,
  300,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/27.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Sandslash',
  'Curls up into a spiny ball when threatened. It can roll while curled up to attack or escape.',
  'ground',
  NULL,
  450,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/28.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidoran F',
  'Although small, its venomous barbs render this POKéMON dangerous. The female has smaller horns.',
  'poison',
  NULL,
  275,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/29.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 2' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidorina',
  'The female''s horn develops slowly. Prefers physical attacks such as clawing and biting.',
  'poison',
  NULL,
  365,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/30.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 9' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidoqueen',
  'Its hard scales provide strong protection. It uses its hefty bulk to execute powerful moves.',
  'poison',
  'ground',
  505,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/31.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidoran M',
  'Stiffens its ears to sense danger. The larger its horns, the more powerful its secreted venom.',
  'poison',
  NULL,
  273,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/32.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 2' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidorino',
  'An aggressive POKéMON that is quick to attack. The horn on its head secretes a powerful venom.',
  'poison',
  NULL,
  365,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/33.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 9' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Nidoking',
  'It uses its powerful tail in battle to smash, constrict, then break the prey''s bones.',
  'poison',
  'ground',
  505,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/34.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Clefairy',
  'Its magical and cute appeal has many admirers. It is rare and found only in certain areas.',
  'fairy',
  NULL,
  323,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/35.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Clefable',
  'A timid fairy POKéMON that is rarely seen. It will run and hide the moment it senses people.',
  'fairy',
  NULL,
  483,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/36.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Vulpix',
  'At the time of birth, it has just one tail. The tail splits from its tip as it grows older.',
  'fire',
  NULL,
  299,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/37.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 7' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Ninetales',
  'Very smart and very vengeful. Grabbing one of its many tails could result in a 1000-year curse.',
  'fire',
  NULL,
  505,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/38.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Jigglypuff',
  'When its huge eyes light up, it sings a mysteriously soothing melody that lulls its enemies to sleep.',
  'normal',
  'fairy',
  270,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/39.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 3' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Wigglytuff',
  'The body is soft and rubbery. When angered, it will suck in air and inflate itself to an enormous size.',
  'normal',
  'fairy',
  435,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/40.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Zubat',
  'Forms colonies in perpetually dark places. Uses ultrasonic waves to identify and approach targets.',
  'poison',
  'flying',
  245,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/41.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Golbat',
  'Once it strikes, it will not stop draining energy from the victim even if it gets too heavy to fly.',
  'poison',
  'flying',
  455,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/42.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Oddish',
  'During the day, it keeps its face buried in the ground. At night, it wanders around sowing its seeds.',
  'grass',
  'poison',
  320,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/43.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Gloom',
  'The fluid that oozes from its mouth isn''t drool. It is a nectar that is used to attract prey.',
  'grass',
  'poison',
  395,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/44.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Vileplume',
  'It has the world’s largest petals. With every step, the petals shake out heavy clouds of toxic pollen.',
  'grass',
  'poison',
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/45.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Paras',
  'Burrows to suck tree roots. The mushrooms on its back grow by draw ing nutrients from the bug host.',
  'bug',
  'grass',
  285,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/46.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Parasect',
  'A host-parasite pair in which the parasite mushroom has taken over the host bug. Prefers damp places.',
  'bug',
  'grass',
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/47.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Venonat',
  'Lives in the shadows of tall trees where it eats insects. It is attracted by light at night.',
  'bug',
  'poison',
  305,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/48.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Venomoth',
  'The dustlike scales covering its wings are color-coded to indicate the kinds of poison it has.',
  'bug',
  'poison',
  450,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/49.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 9' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Diglett',
  'Lives about one yard underground where it feeds on plant roots. It sometimes appears above ground.',
  'ground',
  NULL,
  265,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/50.png',
  (SELECT id FROM location WHERE name = 'Vermilion City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dugtrio',
  'A team of DIGLETT triplets. It triggers huge earthquakes by burrowing 60 miles underground.',
  'ground',
  NULL,
  425,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/51.png',
  (SELECT id FROM location WHERE name = 'Digletts Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Meowth',
  'It washes its face regularly to keep the coin on its forehead spotless. It doesn’t get along with Galarian Meowth.',
  'normal',
  NULL,
  290,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/52.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 5' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Persian',
  'Although its fur has many admirers, it is tough to raise as a pet because of its fickle meanness.',
  'normal',
  NULL,
  440,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/53.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 7' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Psyduck',
  'While lulling its enemies with its vacant look, this wily POKéMON will use psychokinetic powers.',
  'water',
  NULL,
  320,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/54.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Golduck',
  'Often seen swim ming elegantly by lake shores. It is often mistaken for the Japanese monster, Kappa.',
  'water',
  NULL,
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/55.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Mankey',
  'Extremely quick to anger. It could be docile one moment then thrashing away the next instant.',
  'fighting',
  NULL,
  305,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/56.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Primeape',
  'Always furious and tenacious to boot. It will not abandon chasing its quarry until it is caught.',
  'fighting',
  NULL,
  455,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/57.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 9' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Growlithe',
  'Very protective of its territory. It will bark and bite to repel intruders from its space.',
  'fire',
  NULL,
  350,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/58.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 7' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Arcanine',
  'A POKéMON that has been admired since the past for its beauty. It runs agilely as if on wings.',
  'fire',
  NULL,
  555,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/59.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Poliwag',
  'Its newly grown legs prevent it from running. It appears to prefer swimming than trying to stand.',
  'water',
  NULL,
  300,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/60.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Poliwhirl',
  'Capable of living in or out of water. When out of water, it sweats to keep its body slimy.',
  'water',
  NULL,
  385,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/61.png',
  (SELECT id FROM location WHERE name = 'Viridian City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Poliwrath',
  'An adept swimmer at both the front crawl and breast stroke. Easily overtakes the best human swimmers.',
  'water',
  'fighting',
  510,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/62.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Abra',
  'Using its ability to read minds, it will identify impending danger and TELEPORT to safety.',
  'psychic',
  NULL,
  310,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/63.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 5' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kadabra',
  'It emits special alpha waves from its body that induce headaches just by being close by.',
  'psychic',
  NULL,
  400,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/64.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 8' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Alakazam',
  'Its brain can out perform a super computer. Its intelligence quotient is said to be 5,000.',
  'psychic',
  NULL,
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/65.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Machop',
  'Loves to build its muscles. It trains in all styles of martial arts to become even stronger.',
  'fighting',
  NULL,
  305,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/66.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Machoke',
  'Its muscular body is so powerful, it must wear a power save belt to be able to regulate its motions.',
  'fighting',
  NULL,
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/67.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Machamp',
  'Using its heavy muscles, it throws powerful punches that can send the victim clear over the horizon.',
  'fighting',
  NULL,
  505,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/68.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Bellsprout',
  'A carnivorous POKéMON that traps and eats bugs. It uses its root feet to soak up needed moisture.',
  'grass',
  'poison',
  300,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/69.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Weepinbell',
  'It spits out POISONPOWDER to immobilize the enemy and then finishes it with a spray of ACID.',
  'grass',
  'poison',
  390,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/70.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Victreebel',
  'Said to live in huge colonies deep in jungles, although no one has ever returned from there.',
  'grass',
  'poison',
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/71.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Tentacool',
  'Drifts in shallow seas. Anglers who hook them by accident are often punished by its stinging acid.',
  'water',
  'poison',
  335,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/72.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Tentacruel',
  'The tentacles are normally kept short. On hunts, they are extended to ensnare and immobilize prey.',
  'water',
  'poison',
  515,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/73.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Geodude',
  'Found in fields and mountains. Mistaking them for boulders, people often step or trip on them.',
  'rock',
  'ground',
  300,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/74.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Graveler',
  'Rolls down slopes to move. It rolls over any obstacle without slowing or changing its direction.',
  'rock',
  'ground',
  390,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/75.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Golem',
  'Its boulder-like body is extremely hard. It can easily withstand dynamite blasts without damage.',
  'rock',
  'ground',
  495,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/76.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Ponyta',
  'Its hooves are 10 times harder than diamonds. It can trample anything completely flat in little time.',
  'fire',
  NULL,
  410,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/77.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Rapidash',
  'Very competitive, this POKéMON will chase anything that moves fast in the hopes of racing it.',
  'fire',
  NULL,
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/78.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 28' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Slowpoke',
  'Incredibly slow and dopey. It takes 5 seconds for it to feel pain when under attack.',
  'water',
  'psychic',
  315,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/79.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Slowbro',
  'The SHELLDER that is latched onto SLOWPOKE''s tail is said to feed on the host''s left over scraps.',
  'water',
  'psychic',
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/80.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Magnemite',
  'Uses anti-gravity to stay suspended. Appears without warning and uses THUNDER WAVE and similar moves.',
  'electric',
  'steel',
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/81.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 6' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Magneton',
  'Formed by several MAGNEMITEs linked together. They frequently appear when sunspots flare up.',
  'electric',
  'steel',
  465,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/82.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Farfetchd',
  'The sprig of green onions it holds is its weapon. It is used much like a metal sword.',
  'normal',
  'flying',
  377,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/83.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Doduo',
  'A bird that makes up for its poor flying with its fast foot speed. Leaves giant footprints.',
  'normal',
  'flying',
  310,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/84.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dodrio',
  'Uses its three brains to execute complex plans. While two heads sleep, one head stays awake.',
  'normal',
  'flying',
  470,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/85.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Seel',
  'The protruding horn on its head is very hard. It is used for bashing through thick ice.',
  'water',
  NULL,
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/86.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dewgong',
  'Stores thermal energy in its body. Swims at a steady 8 knots even in intensely cold waters.',
  'water',
  'ice',
  475,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/87.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Grimer',
  'Appears in filthy areas. Thrives by sucking up polluted sludge that is pumped out of factories.',
  'poison',
  NULL,
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/88.png',
  (SELECT id FROM location WHERE name = 'Celadon City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Muk',
  'Thickly covered with a filthy, vile sludge. It is so toxic, even its footprints contain poison.',
  'poison',
  NULL,
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/89.png',
  (SELECT id FROM location WHERE name = 'Celadon City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Shellder',
  'Its hard shell repels any kind of attack. It is vulnerable only when its shell is open.',
  'water',
  NULL,
  305,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/90.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Cloyster',
  'When attacked, it launches its horns in quick volleys. Its innards have never been seen.',
  'water',
  'ice',
  525,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/91.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Gastly',
  'Almost invisible, this gaseous POKéMON cloaks the target and puts it to sleep without notice.',
  'ghost',
  'poison',
  310,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/92.png',
  (SELECT id FROM location WHERE name = 'Pokemon Tower' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Haunter',
  'Because of its ability to slip through block walls, it is said to be from an other dimension.',
  'ghost',
  'poison',
  405,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/93.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Gengar',
  'Under a full moon, this POKéMON likes to mimic the shadows of people and laugh at their fright.',
  'ghost',
  'poison',
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/94.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Onix',
  'As it grows, the stone portions of its body harden to become similar to a diamond, but colored black.',
  'rock',
  'ground',
  385,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/95.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Drowzee',
  'Puts enemies to sleep then eats their dreams. Occasionally gets sick from eating bad dreams.',
  'psychic',
  NULL,
  328,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/96.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 6' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Hypno',
  'When it locks eyes with an enemy, it will use a mix of PSI moves such as HYPNOSIS and CONFUSION.',
  'psychic',
  NULL,
  483,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/97.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 11' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Krabby',
  'Its pincers are not only powerful weapons, they are used for balance when walking sideways.',
  'water',
  NULL,
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/98.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kingler',
  'The large pincer has 10000 hp of crushing power. However, its huge size makes it unwieldy to use.',
  'water',
  NULL,
  475,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/99.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Voltorb',
  'Usually found in power plants. Easily mistaken for a POKé BALL, they have zapped many people.',
  'electric',
  NULL,
  330,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/100.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 10' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Electrode',
  'It stores electric energy under very high pressure. It often explodes with little or no provocation.',
  'electric',
  NULL,
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/101.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Exeggcute',
  'Often mistaken for eggs. When disturbed, they quickly gather and attack in swarms.',
  'grass',
  'psychic',
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/102.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 26' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Exeggutor',
  'Legend has it that on rare occasions, one of its heads will drop off and continue on as an EXEGGCUTE.',
  'grass',
  'psychic',
  530,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/103.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Cubone',
  'Because it never removes its skull helmet, no one has ever seen this POKéMON''s real face.',
  'ground',
  NULL,
  320,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/104.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Marowak',
  'The bone it holds is its key weapon. It throws the bone skillfully like a boomerang to KO targets.',
  'ground',
  NULL,
  425,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/105.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Hitmonlee',
  'When in a hurry, its legs lengthen progressively. It runs smoothly with extra long, loping strides.',
  'fighting',
  NULL,
  455,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/106.png',
  (SELECT id FROM location WHERE name = 'Saffron City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Hitmonchan',
  'While apparently doing nothing, it fires punches in lightning fast volleys that are impossible to see.',
  'fighting',
  NULL,
  455,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/107.png',
  (SELECT id FROM location WHERE name = 'Saffron City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Lickitung',
  'Its tongue can be extended like a chameleon''s. It leaves a tingling sensation when it licks enemies.',
  'normal',
  NULL,
  385,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/108.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Koffing',
  'Because it stores several kinds of toxic gases in its body, it is prone to exploding without warning.',
  'poison',
  NULL,
  340,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/109.png',
  (SELECT id FROM location WHERE name = 'Celadon City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Weezing',
  'Where two kinds of poison gases meet, 2 KOFFINGs can fuse into a WEEZING over many years.',
  'poison',
  NULL,
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/110.png',
  (SELECT id FROM location WHERE name = 'Pokemon Mansion' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Rhyhorn',
  'A POKéMON with a one-track mind. Once it charges,  it won''t stop running until it falls asleep.',
  'ground',
  'rock',
  345,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/111.png',
  (SELECT id FROM location WHERE name = 'Kanto Victory Road 1' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Rhydon',
  'Protected by an armor-like hide, it is capable of living in molten lava of 3,600 degrees.',
  'ground',
  'rock',
  485,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/112.png',
  (SELECT id FROM location WHERE name = 'Kanto Victory Road 1' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Chansey',
  'A rare and elusive POKéMON that is said to bring happiness to those who manage to get it.',
  'normal',
  NULL,
  450,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/113.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 13' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Tangela',
  'The whole body is swathed with wide vines that are similar to sea weed. Its vines shake as it walks.',
  'grass',
  NULL,
  435,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/114.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 28' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kangaskhan',
  'The infant rarely ventures out of its mother''s protective pouch until it is 3 years old.',
  'normal',
  NULL,
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/115.png',
  (SELECT id FROM location WHERE name = 'Rock Tunnel' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Horsea',
  'Known to shoot down flying bugs with precision blasts of ink from the surface of the water.',
  'water',
  NULL,
  295,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/116.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Seadra',
  'Capable of swim ming backwards by rapidly flapping its wing-like pectoral fins and stout tail.',
  'water',
  NULL,
  440,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/117.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Goldeen',
  'Its tail fin billows like an elegant ballroom dress, giving it the nickname of the Water Queen.',
  'water',
  NULL,
  320,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/118.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Seaking',
  'In the autumn spawning season, they can be seen swimming powerfully up rivers and creeks.',
  'water',
  NULL,
  450,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/119.png',
  (SELECT id FROM location WHERE name = 'Cerulean City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Staryu',
  'If its body is torn, it can grow back if the red core remains. The core flashes at midnight.',
  'water',
  NULL,
  340,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/120.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Starmie',
  'Its central core glows with the seven colors of the rainbow. Some people value the core as a gem.',
  'water',
  'psychic',
  520,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/121.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Mr Mime',
  'If interrupted while it is miming, it will slap around the offender with its broad hands.',
  'psychic',
  'fairy',
  460,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/122.png',
  (SELECT id FROM location WHERE name = 'Kanto Sea Route 21' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Scyther',
  'With ninja-like agility and speed, it can create the illusion that there is more than one.',
  'bug',
  'flying',
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/123.png',
  (SELECT id FROM location WHERE name = 'Kanto Safari Zone' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Jynx',
  'It seductively wiggles its hips as it walks. It can cause people to dance in unison with it.',
  'ice',
  'psychic',
  455,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/124.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Electabuzz',
  'Normally found near power plants, they can wander away and cause major blackouts in cities.',
  'electric',
  NULL,
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/125.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 10' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Magmar',
  'Its body always burns with an orange glow that enables it to hide perfectly among flames.',
  'fire',
  NULL,
  495,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/126.png',
  (SELECT id FROM location WHERE name = 'Pokemon Mansion' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Pinsir',
  'If it fails to crush the victim in its pincers, it will swing it around and toss it hard.',
  'bug',
  NULL,
  500,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/127.png',
  (SELECT id FROM location WHERE name = 'Kanto Safari Zone' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Tauros',
  'When it targets an enemy, it charges furiously while whipping its body with its long tails.',
  'normal',
  NULL,
  490,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/128.png',
  (SELECT id FROM location WHERE name = 'Kanto Safari Zone' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Magikarp',
  'In the distant past, it was somewhat stronger than the horribly weak descendants that exist today.',
  'water',
  NULL,
  200,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/129.png',
  (SELECT id FROM location WHERE name = 'Mt Moon' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Gyarados',
  'Once it begins to rampage, a GYARADOS will burn everything down, even in a harsh storm.',
  'water',
  'flying',
  540,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/130.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Lapras',
  'A POKéMON that has been over hunted almost to extinction. It can ferry people across the water.',
  'water',
  'ice',
  535,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/131.png',
  (SELECT id FROM location WHERE name = 'Icefall Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Ditto',
  'Capable of copying an enemy''s genetic code to instantly transform itself into a duplicate of the enemy.',
  'normal',
  NULL,
  288,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/132.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 13' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Eevee',
  'Its genetic code is irregular. It may mutate if it is exposed to radiation from element STONEs.',
  'normal',
  NULL,
  325,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/133.png',
  (SELECT id FROM location WHERE name = 'Celadon City' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Vaporeon',
  'Lives close to water. Its long tail is ridged with a fin which is often mistaken for a mermaid''s.',
  'water',
  NULL,
  525,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/134.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Jolteon',
  'It accumulates negative ions in the atmosphere to blast out 10000- volt lightning bolts.',
  'electric',
  NULL,
  525,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/135.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Flareon',
  'When storing thermal energy in its body, its temperature could soar to over 1600 degrees.',
  'fire',
  NULL,
  525,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/136.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Porygon',
  'A POKéMON that consists entirely of programming code. Capable of moving freely in cyberspace.',
  'normal',
  NULL,
  395,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/137.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Omanyte',
  'Although long extinct, in rare cases, it can be genetically resurrected from fossils.',
  'rock',
  'water',
  355,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/138.png',
  (SELECT id FROM location WHERE name = 'Cinnabar Island' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Omastar',
  'A prehistoric POKéMON that died out when its heavy shell made it impossible to catch prey.',
  'rock',
  'water',
  495,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/139.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kabuto',
  'A POKéMON that was resurrected from a fossil found in what was once the ocean floor eons ago.',
  'rock',
  'water',
  355,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/140.png',
  (SELECT id FROM location WHERE name = 'Cinnabar Island' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Kabutops',
  'Its sleek shape is perfect for swim ming. It slashes prey with its claws and drains the body fluids.',
  'rock',
  'water',
  495,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/141.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Aerodactyl',
  'A Pokémon that roamed the skies in the dinosaur era. Its teeth are like saw blades.',
  'rock',
  'flying',
  515,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/142.png',
  (SELECT id FROM location WHERE name = 'Cinnabar Island' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Snorlax',
  'Very lazy. Just eats and sleeps. As its rotund bulk builds, it becomes steadily more slothful.',
  'normal',
  NULL,
  540,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/143.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 12' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Articuno',
  'A legendary bird POKéMON that is said to appear to doomed people who are lost in icy mountains.',
  'ice',
  'flying',
  580,
  1,
  TRUE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/144.png',
  (SELECT id FROM location WHERE name = 'Seafoam Islands' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Zapdos',
  'A legendary bird POKéMON that is said to appear from clouds while dropping enormous lightning bolts.',
  'electric',
  'flying',
  580,
  1,
  TRUE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/145.png',
  (SELECT id FROM location WHERE name = 'Kanto Route 10' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Moltres',
  'Known as the legendary bird of fire. Every flap of its wings creates a dazzling flash of flames.',
  'fire',
  'flying',
  580,
  1,
  TRUE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/146.png',
  (SELECT id FROM location WHERE name = 'Kanto Victory Road 2' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dratini',
  'Long considered a mythical POKéMON until recently when a small colony was found living underwater.',
  'dragon',
  NULL,
  300,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/147.png',
  (SELECT id FROM location WHERE name = 'Kanto Safari Zone' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dragonair',
  'A mystical POKéMON that exudes a gentle aura. Has the ability to change climate conditions.',
  'dragon',
  NULL,
  420,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/148.png',
  (SELECT id FROM location WHERE name = 'Kanto Safari Zone' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Dragonite',
  'An extremely rarely seen marine POKéMON. Its intelligence is said to match that of humans.',
  'dragon',
  'flying',
  600,
  1,
  FALSE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/149.png',
  NULL,
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Mewtwo',
  'It was created by a scientist after years of horrific gene splicing and DNA engineering experiments.',
  'psychic',
  NULL,
  680,
  1,
  TRUE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/150.png',
  (SELECT id FROM location WHERE name = 'Cerulean Cave' LIMIT 1),
  NOW(), NOW()
);
INSERT INTO pokemon (
  name, description, type1, type2, total, generation, legendary,
  image_url, location_id, created_at, updated_at
)
VALUES (
  'Mew',
  'So rare that it is still said to be a mirage by many experts. Only a few people have seen it worldwide.',
  'psychic',
  NULL,
  600,
  1,
  TRUE,
  'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/151.png',
  NULL,
  NOW(), NOW()
);

-- ===============================================
-- OPTIONAL: Backfill embeddings with pgai
-- Example (adjust to your pgai version):
-- UPDATE pokemon
-- SET text_vector = ai.openai_embed('text-embedding-3-small', name || ' ' || COALESCE(description,''))
-- WHERE text_vector IS NULL;
--
-- For image vectors, embed images with your chosen model and UPDATE pokemon.image_vector accordingly.
-- ===============================================

COMMIT;
