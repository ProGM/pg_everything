---
marp: true
header: '![width:50px](https://www.postgresql.org/media/img/about/press/elephant.png)'
footer: '2025 - PostgreSQL: The Full-Stack Database'
---
<!--
_backgroundColor: black
_color: white
-->

# PostgreSQL: The Full-Stack Database
A.K.A. "AI won't replace us, Postgres will!"

---

## PostgreSQL is a Database.
And it's kinda cool.

---

# It supports
- Relational data
- NoSQL capabilities (JSON, JSONB, hstore, etc.)
- _Weird_ data types (arrays, IP addresses, etc.)
- Pub/Sub (LISTEN/NOTIFY)
- Advanced querying (CTEs, window functions, etc.)
- Row-level security
- ACID compliance

---

# And you can extend it...

```sql
CREATE EXTENSION [extension_name];
```

---

# In a lot of ways!
- In SQL
- In C
- In Python
- In Rust

---
<!--
_backgroundColor: black
_color: white
-->
# Ok, what can you do with them?

---

# Extension can do almost anything!

---

# Add support for new data types
- PostGIS (geospatial)
- pgvector (vector embeddings)
- Hstore (key-value store)
- UUID-OSSP (UUID generation)

---
# Integrate with other databases
- postgres_fdw (PostgreSQL)
- mysql_fdw (MySQL)
- mongo_fdw (MongoDB)
- redis_fdw (Redis)
- pgmemcache

---
# Full-Text Search
- pg_trgm
- pg_search
- pg_bm25
- NoraSearch

---

# Extend with new languages
- PL/Python
- PL/Rust
- PL/V8 (JavaScript)
- PL/Perl
- PL/Haskell
- PL/pgSQL (built-in)

---

# Change paradigms
- Citus (distributed SQL)
- TimescaleDB (time-series)
- pgduckdb / pgquack (analytical)

---

# Or performance tuning
- pg_stat_statements
- pg_partman

---

# Add AI capabilities
- pgai
- postgresml

---
<!--
_backgroundColor: black
_color: white
-->
# But we want to get replaced!

---

# Ok... but we want a full-stack database!

---
<!--
_backgroundColor: black
_color: white
-->
# How can we do that?

---

# We need:
- Backend logic
- REST / GraphQL API
- Authentication
- Job scheduling
- Static file serving
- Caching (optional)

---

# Backend logic
- Stored procedures
- Triggers
- PL/Python
- pgai (AI-powered functions)
- pg_fsm (finite state machines)

---

# GraphQL API
- pg_graphql
- omnigres/omni_httpd

---
# Authentication
- pgjwt
- pgcrypto
- (or eventually omnigres)

---
# Job scheduling
- pg_cron

---
# Static file serving
- omnigres/omni_httpd

---
# Caching (optional)
- pgmemcache
- redis_fdw

---
<!--
_backgroundColor: black
_color: white
-->
## Or...

---
# ...just use Postgres as a cache!

```sql
CREATE UNLOGGED TABLE cache (
    id serial PRIMARY KEY,
    key text UNIQUE NOT NULL,
    value jsonb,
    inserted_at timestamp
);

CREATE INDEX idx_cache_key ON cache (key);
```

See: https://medium.com/redis-with-raphael-de-lio/can-postgres-replace-redis-as-a-cache-f6cba13386dc

---

# Extras

---

# Frontend components?
https://react-postgres-components.vercel.app

```sql
export default function helloWorld () => {
  const [{version}] = sql`SELECT version()`; // no `await` needed!
  return <h1>Hello from <em>inside</em> Postgres: {version}</h1>;
}
```

---

# And what about Testing? pgTAP!

---

# pgTAP

```sql
CREATE EXTENSION pgtap;

SELECT plan(2);

SELECT is(1, 1, 'One is one');
SELECT is(2, 1, 'Two is one');

SELECT * FROM finish();
```

---

# Let's try it out!
