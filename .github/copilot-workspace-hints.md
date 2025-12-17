# Copilot Workspace Hints

Use these pointers when answering questions about this repository.

## What to reference
- Architecture: docs/ARCHITECTURE.md
- Patterns: docs/PATTERNS.md
- Conventions: docs/CONVENTIONS.md
- Agent guide: docs/agent-guide.md

## Directory focus
- Auth: src/middleware/auth/
- Data access: src/repositories/
- Services/business logic: src/services/
- HTTP/API: src/controllers/ or routes/
- Tests: tests/ (mirror source structure)

## Expectations
- Match naming and layout from docs/CONVENTIONS.md
- Follow patterns for errors, logging, and tests in docs/PATTERNS.md
- Prefer small, behavior-preserving diffs unless asked otherwise
- Include tests when changing behavior; propose edge cases

## How to respond
- Cite files you used; include links where possible
- If uncertain, ask for the specific files or desired constraints before proposing large changes
