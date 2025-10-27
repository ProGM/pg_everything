-- Register graphql handler
CREATE OR REPLACE FUNCTION graphql_handler(request omni_httpd.http_request)
RETURNS omni_httpd.http_outcome AS $$
DECLARE
    auth_header TEXT;
    request_json JSONB;
    query_string TEXT;
    variables JSONB;
BEGIN
    IF request.method <> 'POST' THEN
        RETURN omni_httpd.http_response(
            body => json_build_object('error', 'Only POST method is allowed')::text,
            status => 405
        );
    END IF;

    SELECT value INTO auth_header
    FROM unnest(request.headers) AS h(name, value)
    WHERE lower(name) = 'authorization';

    -- Check JWT validity
    IF auth_header IS NULL OR check_jwt(auth_header) IS NULL THEN
        RETURN omni_httpd.http_response(
            body => json_build_object('error', 'Unauthorized')::text,
            status => 401
        );
    END IF;

    request_json := convert_from(request.body, 'UTF8')::jsonb;
    query_string := request_json->>'query';
    variables := (request_json->>'variables')::jsonb;

    -- Process the GraphQL request
    RETURN omni_httpd.http_response(
        body => graphql.resolve(query_string, variables)::text
    );
END;
$$ LANGUAGE plpgsql;

-- Now register it by inserting into the router table
INSERT INTO omni_httpd.urlpattern_router (match, handler)
VALUES (omni_httpd.urlpattern('/graphql'), 'graphql_handler'::regproc);


-- Register login handler

CREATE OR REPLACE FUNCTION login_handler(request omni_httpd.http_request)
RETURNS omni_httpd.http_outcome AS $$
DECLARE
    jwt_token TEXT;
BEGIN
    IF request.method <> 'POST' THEN
        RETURN omni_httpd.http_response(
            body => json_build_object('error', 'Only POST method is allowed')::text,
            status => 405
        );
    END IF;


    SELECT authenticate_and_make_jwt(
        (convert_from(request.body, 'UTF8')::json->>'email')::varchar,
        (convert_from(request.body, 'UTF8')::json->>'password')::varchar
    ) INTO jwt_token;

    IF jwt_token IS NULL THEN
        RETURN omni_httpd.http_response(
            body => json_build_object('error', 'Invalid credentials')::text,
            status => 401
        );
    END IF;
    RETURN omni_httpd.http_response(
        body =>
        json_build_object('token', jwt_token)::text,
        status => 200
    );
END;
$$ LANGUAGE plpgsql;

-- Now register it by inserting into the router table
INSERT INTO omni_httpd.urlpattern_router (match, handler)
VALUES (omni_httpd.urlpattern('/login'), 'login_handler'::regproc);

-- Set up static file handler for serving files from /workspaces/pg_everything/public
SELECT omni_httpd.instantiate_static_file_handler(schema => 'public');

create table static_file_router
(
    like omni_httpd.urlpattern_router,
    fs omni_vfs.local_fs
);

create function fs_handler(req omni_httpd.http_request, router static_file_router)
    returns omni_httpd.http_outcome
    return static_file_handler(req, router.fs);

create OR REPLACE function docs_handler(req omni_httpd.http_request, router static_file_router) returns omni_httpd.http_outcome
    language plpgsql as
$$
declare
begin
    req.path := regexp_replace(req.path, '^/static/', '/', '');
    return static_file_handler(req, router.fs);
end;
$$;

insert
into
    static_file_router (match, handler, fs)
values
    (omni_httpd.urlpattern('/static/*'), 'docs_handler'::regproc,
     omni_vfs.local_fs('/workspaces/pg_everything/public'));

-- ALTER SYSTEM SET omni_httpd.listen = '0.0.0.0:8080';

ALTER SYSTEM RESET shared_preload_libraries;
ALTER SYSTEM SET shared_preload_libraries = "omni", "omni_httpd";
ALTER SYSTEM SET omni_httpd.listen = '127.0.0.1:8080';
ALTER SYSTEM SET omni_httpd.http_workers = 2;
SELECT pg_reload_conf();


-- Enable GraphQL on public schema
COMMENT ON SCHEMA public IS e'@graphql({"inflect_names": true})';
