CREATE TABLE location (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    region VARCHAR(100),
    shape GEOMETRY
);
CREATE INDEX location_shape_idx ON location USING GIST (shape);

CREATE TABLE pokemon (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    description TEXT,
    text TEXT GENERATED ALWAYS AS (name || ' ' || description) STORED,
    type1 VARCHAR(50),
    type2 VARCHAR(50),
    total INT,
    generation INT,
    legendary BOOLEAN,
    image_url TEXT,
    location_id INT REFERENCES location(id),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE INDEX pokemon_idx ON pokemon USING GIN (to_tsvector('english', text));

SELECT ai.create_vectorizer(
    'pokemon'::regclass,
    loading => ai.loading_column(column_name=>'text'),
    destination => ai.destination_table(target_table=>'pokemon_embedding_storage'),
    embedding => ai.embedding_openai(model=>'text-embedding-ada-002', dimensions=>'1536')
);

CREATE FUNCTION "searchFullTextPokemon"("content" TEXT, max_results INT DEFAULT 10)
  returns pokemon
  stable
  language sql
AS $$
    SELECT * FROM pokemon
    WHERE to_tsvector('english', text) @@ plainto_tsquery('english', "content");
$$;

CREATE OR REPLACE FUNCTION "searchEmbeddingsPokemon"("content" TEXT, max_results INT DEFAULT 10)
  RETURNS pokemon
  STABLE
  language sql
AS $$
    SELECT pokemon.*
    FROM pokemon
    JOIN pokemon_embedding e USING (id)
    ORDER BY e.embedding <=> ai.openai_embed('text-embedding-ada-002', content)
    LIMIT max_results;
$$;

CREATE INDEX ON pokemon_embedding_storage USING hnsw (embedding vector_cosine_ops);

-- Enable GraphQL count on the pokemon table
comment on table "pokemon" is e'@graphql({"totalCount": {"enabled": true}})';
