# PATTERNS.md — Code Patterns We Prefer

Document patterns briefly; keep examples small.

## Error Handling

- Prefer typed errors or result types
- Centralize mapping of errors to responses

## Logging

- Use structured logging with consistent keys
- No secrets/PII in logs; include correlation IDs

## Testing

- Unit tests: small, isolated, arrange/act/assert
- Integration tests: minimal happy path + key edge cases
- Naming: `feature_scenario_expectedBehavior`

## Concurrency & I/O

- Avoid blocking I/O in hot paths
- Prefer async patterns; guard shared state

## Validation

- Validate inputs at boundaries
- Fail fast with clear error messages

## How We Evaluate Copilot Output

- Behavior preserved unless explicitly changing
- Matches docs/CONVENTIONS.md naming and layout
- Input validation present; errors mapped appropriately
- Small diff; tests provided or updated
