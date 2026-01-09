# Minimal Copilot Instructions

> The bare minimum to get started. Copy this, fill in the blanks, and you'll immediately see better Copilot suggestions.

## Project Overview

**Project Name**: [Your Project Name]
**Type**: [Web app / API / CLI tool / etc.]
**Tech Stack**: [List main technologies]

## Coding Standards

### Language Preferences
- Use [async/await | .then() | callbacks] for async code
- Use [const/let | var] for variable declarations
- Use [functional components | class components] for React

### Naming Conventions
- Files: [camelCase | kebab-case | PascalCase]
- Functions: [camelCase | snake_case]
- Components: [PascalCase]

### Code Style
- Indentation: [2 spaces | 4 spaces | tabs]
- Quotes: [single | double]
- Semicolons: [yes | no]

## Project Structure

```
project/
├── src/           # Source code
├── tests/         # Test files
└── docs/          # Documentation
```

## Common Patterns

### API Response Format
```javascript
{
  "success": true,
  "data": { /* payload */ }
}
```

### Error Handling
```javascript
try {
  // operation
} catch (error) {
  // handle error
}
```

## What NOT to Do

- Don't use [deprecated patterns]
- Don't commit [sensitive files]
- Don't use [banned libraries]

---

*Copy this file to `.github/copilot-instructions.md` in your project.*
