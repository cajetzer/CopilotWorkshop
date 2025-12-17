# ARCHITECTURE.md — System Overview

Keep this short and current. Link to details where needed.

## Overview

- Purpose and high-level responsibilities
- Primary users and key flows

## Layers & Boundaries

- Controller / Service / Repository (or your equivalent)
- What belongs in each; what does not

## Data Flow

- Inputs → processing → outputs
- External systems, queues, or callbacks

## Error Handling

- Error types and when to use them
- Retry vs. fail-fast rules

## Dependencies

- Allowed libraries/frameworks; banned ones (and why)
- Cross-module dependency rules

## Non‑Functional

- Performance targets, SLIs/SLOs
- Security notes (authZ/authN), privacy constraints

## References

- docs/PATTERNS.md
- docs/CONVENTIONS.md
- docs/API.md (if applicable)
