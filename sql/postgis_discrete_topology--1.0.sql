CREATE FUNCTION ST_DiscreteRelate(geom1 geometry, geom2 geometry)
RETURNS text
AS 'MODULE_PATHNAME', 'ST_DiscreteRelate'
LANGUAGE C IMMUTABLE STRICT;
