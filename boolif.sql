CREATE OR REPLACE FUNCTION public.nik_boolif (
  value BOOLEAN,
  expected BOOLEAN,
  output VARCHAR,
  fallback VARCHAR = NULL::VARCHAR
)
  RETURNS VARCHAR 
AS $$
  SELECT CASE 
           WHEN value = expected THEN output
           ELSE fallback
         END;
$$ 
LANGUAGE sql 
IMMUTABLE;
