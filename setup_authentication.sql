CREATE TABLE "secret" (
    id SERIAL PRIMARY KEY,
    key VARCHAR(100) UNIQUE NOT NULL,
    value TEXT NOT NULL
);

INSERT INTO "secret" (key, value)
VALUES ('jwt_secret', encode(gen_random_bytes(32), 'hex'));

CREATE TABLE "user" (
    id SERIAL PRIMARY KEY,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Not working, api_user does not exist yet
-- revoke all privileges on public."user" from api_user;
-- revoke all privileges on public."secret" from api_user;

CREATE FUNCTION register_user(email VARCHAR, password TEXT)
RETURNS VOID AS $$
BEGIN
    INSERT INTO "user" (email, password_hash)
    VALUES (email, crypt(password, gen_salt('bf')));
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION authenticate_user(user_email VARCHAR, password TEXT)
RETURNS BOOLEAN AS $$
DECLARE
    stored_hash TEXT;
BEGIN
    SELECT password_hash INTO stored_hash FROM "user" WHERE "user".email = user_email;
    IF stored_hash IS NULL THEN
        RETURN FALSE;
    END IF;
    RETURN stored_hash = crypt(password, stored_hash);
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION authenticate_and_make_jwt(email VARCHAR, password TEXT)
RETURNS TEXT AS $$
DECLARE
    jwt_secret TEXT;
    jwt_token TEXT;
BEGIN
    IF NOT authenticate_user(email, password) THEN
        RETURN NULL;
    END IF;
    SELECT value FROM "secret" WHERE key = 'jwt_secret' LIMIT 1 INTO jwt_secret;
    jwt_token := sign(
        payload := json_build_object(
            'sub', email,
            'iat', cast(extract(epoch from now()) as INTEGER),
            'exp', cast(extract(epoch from now()) + (3600 * 4) as INTEGER),
            'nbf', cast(extract(epoch from now()) as INTEGER)
        ),
        secret := jwt_secret,
        algorithm := 'HS512'
    );
    RETURN jwt_token;
END;
$$ LANGUAGE plpgsql;

CREATE OR REPLACE FUNCTION check_jwt(token TEXT)
RETURNS TEXT AS $$
DECLARE
    jwt_secret TEXT;
    jwt_result RECORD;
BEGIN
    SELECT value FROM "secret" WHERE key = 'jwt_secret' LIMIT 1 INTO jwt_secret;

    SELECT * FROM verify(token, jwt_secret, 'HS512')
    INTO jwt_result;
    IF jwt_result IS NULL OR NOT jwt_result.valid THEN
        RETURN NULL;
    END IF;
    RETURN jwt_result.payload->>'sub';
END;
$$ LANGUAGE plpgsql;
