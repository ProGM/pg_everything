-- An example of using PL/Python to create a simple range function
-- and expose it via an HTTP endpoint using omni_httpd.
CREATE OR REPLACE FUNCTION py_range(start INT, stop INT)
RETURNS TEXT AS $$
    result = list(range(start, stop))
    return str(result)
$$ LANGUAGE plpython3u;

CREATE OR REPLACE FUNCTION test_python_handler(request omni_httpd.http_request)
RETURNS omni_httpd.http_outcome AS $$
DECLARE
    python_output TEXT;
BEGIN
    SELECT py_range(1, 10) INTO python_output;

    -- Process the GraphQL request
    RETURN omni_httpd.http_response(
        body => python_output
    );
END;
$$ LANGUAGE plpgsql;

-- Now register it by inserting into the router table
INSERT INTO omni_httpd.urlpattern_router (match, handler)
VALUES (omni_httpd.urlpattern('/test_python'), 'test_python_handler'::regproc);
