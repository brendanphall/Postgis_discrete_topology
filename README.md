# PostGIS Discrete Topology Extension

An extension to PostGIS that enables expanded discrete-space topological relationships on raster-like regions bounded by discrete Jordan curves over ℤ².

## Features
- 12+ discrete spatial relationships beyond traditional DE-9IM.
- Support for raster and vector geometry in discrete domains.
- Extendable to user-defined topology rules.

## Installation

```bash
git clone https://github.com/YOUR_USERNAME/postgis_discrete_topology.git
cd postgis_discrete_topology
mkdir build && cd build
cmake ..
make
sudo make install
```

In PostgreSQL:

```sql
CREATE EXTENSION postgis;
CREATE EXTENSION postgis_discrete_topology;
```

## Example Usage

```sql
SELECT ST_DiscreteRelate(
  'POLYGON((...))'::geometry,
  'POLYGON((...))'::geometry
);
```

## License
MIT License
