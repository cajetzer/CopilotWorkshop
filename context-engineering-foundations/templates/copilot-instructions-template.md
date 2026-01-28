# [Project Name] Copilot Guidelines

## Project Context

* [System Architecture](../docs/ARCHITECTURE.md): Project structure, patterns, and conventions
* [Product Overview](../docs/PRODUCT.md): What the product does and why (optional)
* [Contributing Guidelines](../docs/CONTRIBUTING.md): Team practices (optional)

## Tech Stack

- **Language**: [e.g., TypeScript 5.x]
- **Frontend**: [e.g., React 18, Vite]
- **Backend**: [e.g., Node.js 20, Express]
- **Database**: [e.g., PostgreSQL 15]
- **Testing**: [e.g., Jest, React Testing Library]
- **Linting**: [e.g., ESLint, Prettier]

## Code Standards

### File Organization
- Components: `src/components/ComponentName/ComponentName.tsx`
- Utilities: `src/utils/utility-name.ts`
- Tests: Co-located as `*.test.ts` or `*.spec.ts`

### Naming Conventions
- React components: PascalCase (`UserProfile.tsx`)
- Functions and variables: camelCase (`getUserData`)
- Constants: SCREAMING_SNAKE_CASE (`MAX_RETRY_COUNT`)
- Files: kebab-case (`user-profile.ts`)

### TypeScript
- Prefer interfaces over types for object shapes
- Use strict mode
- Avoid `any` - use `unknown` when type is truly unknown

## Key Patterns

### API Calls
- Use service functions in `src/services/`
- Handle errors with try/catch
- Return consistent response shapes

### State Management
- [Describe your state management approach]
- [e.g., React Context for global state, useState for local]

### Error Handling
- Wrap async operations in try/catch
- Use error boundaries for React components
- Log errors with context for debugging

### Testing
- Unit tests for utilities and pure functions
- Component tests with React Testing Library
- Integration tests for API endpoints
- Minimum coverage: [X]%

## What NOT to Do

- ❌ Don't use `var` - use `const` or `let`
- ❌ Don't commit `console.log` statements
- ❌ Don't use inline styles - use CSS modules or styled-components
- ❌ Don't skip error handling for async operations
- ❌ Don't create components over 200 lines - split them

## Common Tasks

### Adding a New API Endpoint
1. Create route handler in `server/routes/`
2. Add controller logic in `server/controllers/`
3. Add tests in `server/__tests__/`

### Adding a New Component
1. Create component folder in `src/components/`
2. Add component file, styles, and tests
3. Export from component index

### Adding a Database Migration
1. [Describe your migration process]

## Documentation Updates

Suggest updates to these documents if you notice:
- Outdated patterns or technologies
- Missing conventions that would help consistency
- Conflicts between documentation and actual code
- New patterns that should be documented

---

*Keep this file concise. Add rules only when you notice repeated issues or inconsistencies.*
