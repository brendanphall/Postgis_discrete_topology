# PostGIS Discrete Topology Extension — Roadmap

This roadmap outlines the development plan for extending PostGIS to support discrete-space spatial relations in Z² (integer grid) domains.

The project expands the standard 8 Clementini/Egenhofer relationships into 12–16 discrete-topological relationships, appropriate for raster regions bounded by discrete Jordan curves.

---

## Phase 1: Core Framework (MVP)

- [x] Set up project repository and public structure
- [x] Define and install basic extension scaffolding (CMake, .control, .sql)
- [ ] Implement first placeholder function `ST_DiscreteRelate`
- [ ] Create formal documentation structure
- [ ] Validate build and PostgreSQL extension deployment on MacOS/Linux
- [ ] Develop basic SQL test cases

---

## Phase 2: Core Discrete Spatial Relationships

- [ ] Formalize discrete-space equivalent of `Intersects`
- [ ] Formalize discrete-space equivalent of `Touches`
- [ ] Formalize discrete-space equivalent of `Within`
- [ ] Formalize discrete-space equivalent of `Contains`
- [ ] Extend to unique discrete relations (e.g., pixel-based adjacency classes)

---

## Phase 3: Discrete Topology Matrix (Expanded DE-9IM)

- [ ] Define expanded 12- or 16-cell discrete relation matrix
- [ ] Implement parser and interpreter for new discrete relation matrices
- [ ] Support custom discrete relation checks via function parameters
- [ ] Benchmark performance on synthetic large raster domains

---

## Phase 4: Integration and Usability

- [ ] Integrate support for PostGIS Raster types
- [ ] Document API usage with practical examples
- [ ] Develop GitHub Actions CI pipeline (build/test)
- [ ] Develop pgTAP-based unit tests

---

## Phase 5: Community and Outreach

- [ ] Write project blog post / launch announcement
- [ ] Submit project to PostGIS Users mailing list
- [ ] Prepare draft for potential academic publication on discrete topological extensions in GIS

---

# ✏️ To-Do (Current Development Focus)

- [ ] Complete working `ST_DiscreteRelate(geomA, geomB)` for POINT types
- [ ] Extend `ST_DiscreteRelate` to POLYGON types
- [ ] Write architecture doc detailing discrete boundary classification
- [ ] Create CONTRIBUTING.md guidelines
- [ ] Draft examples in `examples/example_usage.sql`
- [ ] Build local regression tests in `tests/test_cases.sql`

---

# 🚀 Vision

To bridge the gap between continuous spatial reasoning and discrete topological reasoning for GIS applications involving raster imagery, cellular automata, and grid-based spatial modeling.

This extension aims to:
- Expand research and practical use of discrete topology in GIS.
- Provide a reusable library for discrete space relations.
- Contribute back to PostGIS and the broader open geospatial community.

