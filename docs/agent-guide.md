# Agent Guide — Ask the Right Expert

Use the specialist that has the right context.

## @workspace (Codebase expert)

- Where is X implemented?
- How does Y work here?
- Find all TODOs/usages/call sites
- Generate tests following our patterns

## @vscode (Editor expert)

- Search, navigation, keybindings
- Configure format on save, linters, debugging
- Extensions and settings questions

## @terminal (Shell expert)

- One-liners, grep/find pipelines
- Process/port checks, watchers, scaffolding
- Turn commands into reusable scripts

## @github (Platform workflows)

- Summarize and review PRs (where available)
- Draft issues with clear repro/acceptance criteria

## Quick Prompts

- "/explain" — explain selected code
- "/fix" — propose safe, minimal changes
- "/tests" — suggest tests aligned to our patterns
- "/doc" — write docs for current file or symbol
- "/optimize" — improve performance or readability

Tip: Keep scope tight (selection → file → workspace) for precise answers.
