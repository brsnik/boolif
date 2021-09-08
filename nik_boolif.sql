CREATE OR REPLACE FUNCTION public.nik_boolif (
  value BOOLEAN,
  expected BOOLEAN,
  output VARCHAR,
  fallback VARCHAR = NULL::VARCHAR
)
RETURNS VARCHAR AS $$
BEGIN
  CASE
    WHEN value::BOOLEAN = expected::BOOLEAN THEN
      RETURN output;
    ELSE
      RETURN fallback;
  END CASE;
END;
$$ LANGUAGE 'plpgsql' IMMUTABLE;
