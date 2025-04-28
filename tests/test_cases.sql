-- Example test cases for discrete relations
SELECT ST_DiscreteRelate(
  'POINT(0 0)'::geometry,
  'POINT(0 0)'::geometry
);
