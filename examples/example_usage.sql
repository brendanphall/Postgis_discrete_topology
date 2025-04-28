SELECT ST_DiscreteRelate(
  'POLYGON((0 0, 4 0, 4 4, 0 4, 0 0))'::geometry,
  'POLYGON((2 2, 6 2, 6 6, 2 2))'::geometry
);
