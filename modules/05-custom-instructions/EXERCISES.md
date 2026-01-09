# Module 5: Custom Instructions — Exercises

> **📖 Full Narrative Experience**: This file contains all exercises in story order, following the FanHub team through Monday afternoon as they create context-aware expertise that automatically activates based on file patterns.

---

## ⏰ Monday 3:00 PM — Context-Aware Expertise

> *"Our repo instructions help, but I want different guidance when I'm writing tests vs. API routes vs. deployment configs. Can Copilot switch contexts automatically?"*  
> — David, wanting specialized expertise without manual prompting

---

## 📖 The Story So Far

The FanHub team has built solid foundations:
- **Module 1**: Repository-wide instructions in `.github/copilot-instructions.md`
- **Module 2**: Structured planning with agent plan mode for systematic workflows
- **Module 3**: Reusable prompts for common workflows
- **Module 4**: Custom agents for autonomous tasks

But there's a pattern emerging: Different files need different expertise.

*"When I'm in a test file, I want testing expertise. When I'm in infrastructure code, I want DevOps patterns. Why do I have to keep specifying this?"* Jordan asks.

David has an idea: *"What if we could create instructions that automatically activate based on what file you're working in?"*

**This module's mission**: Create specialized instruction files that provide contextual expertise based on file patterns.

---

💡 **Plan Mode Integration**: You'll use plan mode to analyze codebase patterns and generate tailored instruction configurations that automatically provide the right context for different file types and project areas.

---

## 🔨 Exercises

### Exercise 5.1: Testing Instructions — "Elena's Quality Standards"

#### 📖 The Story

**Elena** (QA Engineer, 8 years) reviews the team's tests and notices inconsistencies:
- Some tests use `describe/it`, others use `test`
- Mocking approaches vary wildly
- Coverage of edge cases is hit-or-miss
- Some tests are testing implementation, not behavior

*"I could review every test, or..."* Elena pauses. *"I could teach Copilot our testing standards."*

#### ❌ The "Before" — What Frustration Looks Like

Without testing-specific instructions:
- Generated tests follow random conventions
- Have to manually specify "use jest, mock axios, test edge cases" every time
- Tests pass but don't actually verify behavior
- Review cycles catch basic pattern violations

#### 🎯 Objective

Create custom instructions that automatically activate for all test files.

#### 📋 Steps

1. **Create the instructions directory**
   
   ```bash
   mkdir -p .github/instructions
   ```

2. **Create testing instructions**
   
   Create: `.github/instructions/testing.instructions.md`
   
   ````markdown
   ---
   applyTo: "**/*.test.{js,ts,jsx,tsx}"
   ---
   
   # Testing Standards
   
   When generating or modifying test files, follow these standards.
   
   ## Test Structure
   
   - Use `describe` blocks to group related tests by feature/function
   - Use `it` for individual test cases (not `test`)
   - Follow pattern: `it('should [expected behavior] when [condition]')`
   - One assertion focus per test (related assertions OK)
   
   ## Test Categories
   
   Every function/component should have tests for:
   1. **Happy path** — Normal successful operation
   2. **Edge cases** — Boundary conditions, empty inputs, max values
   3. **Error handling** — Invalid inputs, failures, exceptions
   4. **Integration points** — Mocked external dependencies
   
   ## Mocking Standards
   
   - Mock external dependencies (APIs, databases), not internal modules
   - Use `jest.mock()` at module level for consistent mocking
   - Reset mocks in `beforeEach` to prevent test pollution
   - Prefer `jest.spyOn()` when you need to verify calls
   
   ```javascript
   // ✅ Good - mock external dependency
   jest.mock('axios');
   
   // ❌ Bad - mock internal implementation
   jest.mock('../utils/helper');
   ```
   
   ## Assertion Patterns
   
   ```javascript
   // ✅ Test behavior, not implementation
   it('should return user data when valid ID provided', async () => {
     const result = await getUser(123);
     expect(result).toHaveProperty('name');
     expect(result).toHaveProperty('email');
   });
   
   // ❌ Don't test implementation details
   it('should call database once', async () => {
     await getUser(123);
     expect(db.query).toHaveBeenCalledTimes(1);  // Brittle!
   });
   ```
   
   ## Error Testing
   
   ```javascript
   // Always test error scenarios
   it('should throw NotFoundError when user does not exist', async () => {
     await expect(getUser(999)).rejects.toThrow(NotFoundError);
   });
   
   it('should handle network failures gracefully', async () => {
     axios.get.mockRejectedValue(new Error('Network error'));
     await expect(fetchData()).rejects.toThrow('Network error');
   });
   ```
   
   ## Test Data
   
   - Use factories or fixtures for complex test data
   - Avoid magic numbers—use named constants
   - Each test should set up its own data (no shared mutable state)
   
   ## Coverage Expectations
   
   - Aim for meaningful coverage, not 100%
   - Cover all public API methods
   - Cover all error branches
   - Skip testing trivial getters/setters
   ````

3. **Test the instructions**
   
   Open any `.test.js` file (or create one) and ask Copilot to generate tests:
   
   ```
   Write tests for the user authentication function in auth.js
   ```
   
   Observe: The generated tests should follow your specified patterns.

4. **Verify with a complex scenario**
   
   ```
   Write comprehensive tests for an API endpoint that:
   - Fetches user by ID
   - Requires authentication
   - Returns 404 if not found
   - Returns 401 if token invalid
   - Handles database errors
   ```
   
   Check that Copilot generates tests for all error cases, not just happy path.

#### ✅ Success Criteria

- [ ] Created `.github/instructions/testing.instructions.md`
- [ ] File uses correct `applyTo` pattern for test files
- [ ] Generated tests follow `describe/it` structure
- [ ] Generated tests include error case coverage
- [ ] Mocking follows the specified patterns

#### ✨ The "After" — The Improved Experience

Elena's testing standards are now **automatically enforced**:

**Before**: "Remember to test error cases. Use describe blocks. Mock axios at module level..."  
**After**: Every test file gets testing expertise automatically

**Time saved per test file**: 5-10 minutes of back-and-forth

#### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)

#### 💭 Elena's Relief

*"I used to write the same review comments over and over. Now the AI generates tests that already follow our patterns. I can focus on reviewing the logic, not the formatting."*

---

### Exercise 5.2: Path-Based Instructions — "API Routes Get REST Expertise"

#### 📖 The Story

**David** notices that code in the `src/api/` folder needs different expertise than frontend components. API routes should follow REST conventions, use proper status codes, validate inputs, and handle errors consistently.

*"The generic instructions are helpful, but they don't know that routes under `/api/` should behave differently than React components."*

#### 🎯 Objective

Create path-based instructions that provide REST API expertise for route files.

#### 📋 Steps

1. **Create API route instructions**
   
   Create: `.github/instructions/api-routes.instructions.md`
   
   ````markdown
   ---
   applyTo: "src/api/**"
   ---
   
   # API Route Standards
   
   When generating or modifying files under `src/api/`, follow RESTful conventions.
   
   ## Route Structure
   
   ```javascript
   // Express route pattern
   router.get('/:id', authenticate, validate(schema), asyncHandler(controller));
   ```
   
   Every route should have:
   1. HTTP method matching the operation (GET=read, POST=create, PUT=replace, PATCH=update, DELETE=remove)
   2. Authentication middleware where required
   3. Input validation middleware
   4. Async error handling wrapper
   
   ## HTTP Status Codes
   
   Use appropriate status codes:
   
   | Scenario | Code | Response |
   |----------|------|----------|
   | Success (with data) | 200 | `{ data: ... }` |
   | Created | 201 | `{ data: ..., id: ... }` |
   | No Content | 204 | (empty) |
   | Bad Request | 400 | `{ error: 'Validation failed', details: [...] }` |
   | Unauthorized | 401 | `{ error: 'Authentication required' }` |
   | Forbidden | 403 | `{ error: 'Insufficient permissions' }` |
   | Not Found | 404 | `{ error: 'Resource not found' }` |
   | Conflict | 409 | `{ error: 'Resource already exists' }` |
   | Server Error | 500 | `{ error: 'Internal server error' }` |
   
   ## Response Format
   
   Always use consistent response structure:
   
   ```javascript
   // Success
   res.status(200).json({
     success: true,
     data: result,
     meta: { count, page, totalPages }  // for lists
   });
   
   // Error
   res.status(400).json({
     success: false,
     error: 'Human readable message',
     code: 'VALIDATION_ERROR',  // machine-readable code
     details: [...]  // optional additional info
   });
   ```
   
   ## Input Validation
   
   Validate all inputs before processing:
   
   ```javascript
   // Use Joi or similar for schema validation
   const schema = Joi.object({
     name: Joi.string().required().min(1).max(100),
     email: Joi.string().email().required(),
     role: Joi.string().valid('user', 'admin').default('user')
   });
   ```
   
   ## Error Handling
   
   Use async wrapper and custom errors:
   
   ```javascript
   // asyncHandler catches async errors
   const asyncHandler = (fn) => (req, res, next) =>
     Promise.resolve(fn(req, res, next)).catch(next);
   
   // Custom errors for specific cases
   throw new NotFoundError('User not found');
   throw new ValidationError('Invalid email format');
   ```
   
   ## Security Checklist
   
   Every route must consider:
   - [ ] Authentication: Who can access this?
   - [ ] Authorization: What can they do?
   - [ ] Input validation: Is the data safe?
   - [ ] Rate limiting: Can this be abused?
   - [ ] Logging: Are we tracking access?
   
   ## Documentation
   
   Include JSDoc comments for API routes:
   
   ```javascript
   /**
    * Get user by ID
    * @route GET /api/users/:id
    * @param {string} id - User ID
    * @returns {User} User object
    * @throws {NotFoundError} User not found
    * @throws {UnauthorizedError} Not authenticated
    */
   ```
   ````

2. **Test with a route generation request**
   
   Navigate to `src/api/` (or create a file there) and ask:
   
   ```
   Create a REST endpoint for managing user favorites:
   - GET /favorites - list user's favorites
   - POST /favorites - add to favorites
   - DELETE /favorites/:id - remove from favorites
   
   Include authentication, validation, and error handling.
   ```

3. **Verify standards are followed**
   
   Check that generated code:
   - Uses correct HTTP methods
   - Returns proper status codes
   - Has consistent response format
   - Includes validation
   - Has error handling

#### ✅ Success Criteria

- [ ] Created `.github/instructions/api-routes.instructions.md`
- [ ] Path pattern targets `src/api/**`
- [ ] Generated routes use correct HTTP status codes
- [ ] Response format is consistent
- [ ] Input validation is included
- [ ] Error handling follows the pattern

#### ✨ The "After" — The Improved Experience

David's REST expertise is encoded:

**Before**: Manually verify every route follows REST conventions  
**After**: Routes automatically get REST expertise

**Consistency gain**: 100%—every API route follows the same patterns

#### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)

#### 💭 David's Satisfaction

*"I've reviewed thousands of API routes in my career. Now my 20 years of 'use 201 for created, 404 for not found' is automatically applied. I'm not repeating myself anymore—the knowledge is captured."*

---

### Exercise 5.3: Infrastructure Instructions — "Jordan's DevOps Patterns"

#### 📖 The Story

**Jordan** (Platform Engineer, 12 years) maintains the CI/CD pipelines, Dockerfiles, and infrastructure config. These files need specialized knowledge:
- Dockerfiles have security best practices
- GitHub Actions have workflow patterns
- Terraform has module conventions

*"Application developers mean well, but they don't know Docker security. I want Copilot to enforce our infra patterns automatically."*

#### 🎯 Objective

Create specialized instructions for infrastructure and deployment files.

#### 📋 Steps

1. **Create infrastructure instructions**
   
   Create: `.github/instructions/infrastructure.instructions.md`
   
   ````markdown
   ---
   applyTo:
     - "Dockerfile*"
     - "docker-compose*.yml"
     - ".github/workflows/**"
     - "**/terraform/**"
     - "**/k8s/**"
     - "**/*.tf"
   ---
   
   # Infrastructure & DevOps Standards
   
   When generating or modifying infrastructure files, follow these security and operational best practices.
   
   ## Dockerfile Best Practices
   
   ### Security
   
   ```dockerfile
   # ✅ Use specific version tags, not 'latest'
   FROM node:20.10-alpine
   
   # ✅ Run as non-root user
   RUN addgroup -S appgroup && adduser -S appuser -G appgroup
   USER appuser
   
   # ✅ Use multi-stage builds to minimize image size
   FROM node:20.10-alpine AS builder
   # ... build steps ...
   
   FROM node:20.10-alpine AS runtime
   COPY --from=builder /app/dist /app/dist
   ```
   
   ### Optimization
   
   ```dockerfile
   # ✅ Order layers from least to most frequently changed
   COPY package*.json ./
   RUN npm ci --only=production
   COPY . .
   
   # ✅ Use .dockerignore to exclude unnecessary files
   # ✅ Combine RUN commands to reduce layers
   RUN apt-get update && apt-get install -y \
       package1 \
       package2 \
       && rm -rf /var/lib/apt/lists/*
   ```
   
   ### Health Checks
   
   ```dockerfile
   # Always include health checks
   HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
     CMD curl -f http://localhost:3000/health || exit 1
   ```
   
   ## GitHub Actions Patterns
   
   ### Workflow Structure
   
   ```yaml
   name: Descriptive Workflow Name
   
   on:
     push:
       branches: [main]
     pull_request:
       branches: [main]
   
   concurrency:
     group: ${{ github.workflow }}-${{ github.ref }}
     cancel-in-progress: true
   
   jobs:
     job-name:
       runs-on: ubuntu-latest
       timeout-minutes: 15  # Always set timeout
       
       steps:
         - uses: actions/checkout@v4
         
         - name: Setup Node.js
           uses: actions/setup-node@v4
           with:
             node-version: '20'
             cache: 'npm'
   ```
   
   ### Security
   
   ```yaml
   # ✅ Pin action versions to SHA
   - uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11
   
   # ✅ Minimize permissions
   permissions:
     contents: read
     pull-requests: write
   
   # ✅ Use secrets, never hardcode
   env:
     API_KEY: ${{ secrets.API_KEY }}
   ```
   
   ## Environment Variables
   
   - Never commit secrets to repository
   - Use `.env.example` for documentation
   - Different configs for dev/staging/prod
   - Validate required env vars at startup
   
   ## Terraform Patterns
   
   ```hcl
   # Use consistent naming
   resource "aws_s3_bucket" "app_assets" {
     bucket = "${var.project_name}-${var.environment}-assets"
     
     tags = {
       Environment = var.environment
       Project     = var.project_name
       ManagedBy   = "terraform"
     }
   }
   
   # Always use variables, not hardcoded values
   # Always tag resources
   # Use modules for reusable patterns
   ```
   
   ## Security Checklist
   
   Before merging infrastructure changes:
   - [ ] No secrets in code
   - [ ] Containers run as non-root
   - [ ] Images use specific versions
   - [ ] Permissions are minimized
   - [ ] Health checks are defined
   - [ ] Timeouts are configured
   - [ ] Resources are tagged
   ````

2. **Test with a Dockerfile request**
   
   ```
   Create a Dockerfile for a Node.js Express application that:
   - Builds the TypeScript code
   - Runs in production mode
   - Is optimized for size and security
   ```
   
   Verify: Non-root user, multi-stage build, pinned versions, health check.

3. **Test with a GitHub Actions request**
   
   ```
   Create a GitHub Actions workflow that:
   - Runs on push to main and PRs
   - Installs dependencies
   - Runs linting and tests
   - Builds the application
   - Deploys to staging on main push
   ```
   
   Verify: Concurrency, timeout, pinned actions, secrets usage.

#### ✅ Success Criteria

- [ ] Created `.github/instructions/infrastructure.instructions.md`
- [ ] `applyTo` includes Dockerfile, workflows, terraform patterns
- [ ] Generated Dockerfiles follow security patterns
- [ ] GitHub Actions include timeouts and concurrency
- [ ] No hardcoded secrets in generated code

#### ✨ The "After" — The Improved Experience

Jordan's DevOps expertise is always available:

**Before**: Review every Dockerfile for "did they run as root?"  
**After**: Non-root user is automatic

**Security improvement**: Infrastructure files are secure by default

#### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [Docker Security Best Practices](https://docs.docker.com/develop/security-best-practices/)
- [GitHub Actions Security Hardening](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions)

#### 💭 Jordan's Relief

*"I've been the 'Docker security guy' for years. Now I've uploaded my brain to Copilot. Every developer gets my 12 years of 'always run as non-root' without me reviewing every PR."*

---

### Exercise 5.4: React Component Instructions — "Priya's Component Patterns"

#### 📖 The Story

The FanHub frontend has inconsistencies: some components use hooks properly, some don't. Some have proper TypeScript types, some use `any`. Some handle loading states, some don't.

**Priya** has been learning React best practices and wants to ensure consistency. With guidance from David, she creates component instructions.

#### 🎯 Objective

Create instructions that provide React/TypeScript expertise for component files.

#### 📋 Steps

1. **Create component instructions**
   
   Create: `.github/instructions/react-components.instructions.md`
   
   ````markdown
   ---
   applyTo:
     - "**/*.tsx"
     - "**/*.jsx"
     - "**/components/**"
   ---
   
   # React Component Standards
   
   When generating or modifying React components, follow these patterns.
   
   ## Component Structure
   
   ```typescript
   // 1. Imports (external, then internal, then styles)
   import React, { useState, useEffect, useCallback } from 'react';
   import { useQuery } from '@tanstack/react-query';
   
   import { Button } from '@/components/ui';
   import { useAuth } from '@/hooks/useAuth';
   
   import { Container, Title } from './MyComponent.styles';
   
   // 2. Types/Interfaces
   interface MyComponentProps {
     id: string;
     onUpdate?: (data: Data) => void;
     className?: string;
   }
   
   // 3. Component (always function, never class)
   export function MyComponent({ id, onUpdate, className }: MyComponentProps) {
     // 4. Hooks first
     const [isLoading, setIsLoading] = useState(false);
     const { user } = useAuth();
     
     // 5. Derived state / memos
     const isOwner = user?.id === id;
     
     // 6. Effects
     useEffect(() => {
       // effect logic
     }, [dependency]);
     
     // 7. Callbacks
     const handleClick = useCallback(() => {
       // handler logic
     }, [dependency]);
     
     // 8. Early returns for loading/error
     if (isLoading) return <LoadingSpinner />;
     
     // 9. Main render
     return (
       <Container className={className}>
         <Title>{title}</Title>
       </Container>
     );
   }
   ```
   
   ## Hook Rules
   
   - Hooks must be called at the top level (not in conditions/loops)
   - Custom hooks should start with `use`
   - Always include all dependencies in useEffect/useCallback/useMemo
   - Prefer `useCallback` for event handlers passed to children
   - Use `useMemo` only for expensive calculations
   
   ## TypeScript Patterns
   
   ```typescript
   // ✅ Define explicit prop types
   interface ButtonProps {
     variant: 'primary' | 'secondary' | 'danger';
     size?: 'sm' | 'md' | 'lg';
     children: React.ReactNode;
     onClick?: () => void;
     disabled?: boolean;
   }
   
   // ✅ Use utility types
   type PartialUser = Partial<User>;
   type UserKeys = keyof User;
   
   // ❌ Avoid any
   // props: any ← Never do this
   ```
   
   ## State Management
   
   - Local UI state: `useState`
   - Form state: `react-hook-form` or controlled inputs
   - Server state: `@tanstack/react-query` or similar
   - Global app state: Context or Zustand (not Redux unless complex)
   
   ## Styling
   
   - Use styled-components for component styles
   - Theme values via `${props => props.theme.colors.primary}`
   - Support `className` prop for customization
   - Use semantic HTML elements
   
   ## Accessibility
   
   - Buttons must have accessible names
   - Images must have alt text
   - Interactive elements must be keyboard accessible
   - Use semantic HTML (nav, main, article, etc.)
   - Include aria-labels where needed
   
   ## Loading & Error States
   
   Every component that fetches data must handle:
   - Loading state (skeleton or spinner)
   - Error state (user-friendly message + retry option)
   - Empty state (when data is empty array/null)
   
   ```typescript
   if (isLoading) return <Skeleton />;
   if (error) return <ErrorMessage error={error} onRetry={refetch} />;
   if (!data?.length) return <EmptyState message="No items found" />;
   ```
   ````

2. **Test component generation**
   
   ```
   Create a UserProfile component that:
   - Fetches user data by ID
   - Shows avatar, name, email, and bio
   - Has edit button for own profile
   - Handles loading, error, and not-found states
   - Is fully typed with TypeScript
   ```

3. **Verify patterns are followed**
   
   Check for:
   - Function component (not class)
   - TypeScript interfaces defined
   - Hooks at top level
   - Loading/error states handled
   - Styled-components used

#### ✅ Success Criteria

- [ ] Created `.github/instructions/react-components.instructions.md`
- [ ] Applies to `.tsx`, `.jsx`, and `components/**`
- [ ] Generated components are function-based
- [ ] TypeScript types are explicit (no `any`)
- [ ] Loading and error states are included
- [ ] Hooks follow rules of hooks

#### ✨ The "After" — The Improved Experience

Priya's learning becomes team knowledge:

**Before**: "Did you handle loading state? Use TypeScript properly? Follow hooks rules?"  
**After**: Every component follows React best practices automatically

#### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [React Documentation](https://react.dev/)

#### 💭 Priya's Growth

*"Six months ago I didn't know these patterns. Now they're encoded in our repo, helping everyone—including future me—write better React code."*

---

## 🔗 Compounding Value

**What we created in this module:**

```
.github/instructions/
├── testing.instructions.md          # Elena's QA expertise
├── api-routes.instructions.md       # David's REST patterns  
├── infrastructure.instructions.md   # Jordan's DevOps knowledge
└── react-components.instructions.md # Team React standards
```

**How instructions combine:**

When editing `src/api/users.test.ts`:
1. Repository instructions (always) ✓
2. API route instructions (`src/api/**`) ✓
3. Testing instructions (`**/*.test.ts`) ✓

Copilot gets **combined context** from all matching files.

---

## 🧠 Mindful Moment: Institutional Knowledge

Custom instructions capture **institutional knowledge**:

- Elena's years of QA experience → `testing.instructions.md`
- David's architectural patterns → `api-routes.instructions.md`
- Jordan's security practices → `infrastructure.instructions.md`

This knowledge doesn't leave when people do. It's **codified and shared**.

---

## 🎭 Behind the Scenes: How Custom Instructions Work

### Instruction Loading

When you open a file, VS Code:
1. Checks `.github/copilot-instructions.md` (always loads)
2. Scans `.github/instructions/*.instructions.md`
3. Matches file path against each `applyTo` pattern
4. Loads all matching instruction files
5. Combines them into the context

### Pattern Matching

Patterns use glob syntax:
- `*` matches any characters except `/`
- `**` matches any characters including `/`
- `{a,b}` matches either `a` or `b`
- `[abc]` matches any character in brackets

### Debugging Tips

If instructions don't seem to activate:
1. Check the file path matches the pattern exactly
2. Ensure the front matter syntax is correct (YAML)
3. Verify the file is named `*.instructions.md`
4. Check for typos in the `applyTo` pattern

---

## 🏁 Module Summary

### Key Transformations

| Persona | Before | After |
|---------|--------|-------|
| **Elena** | Same review comments repeated | Testing standards auto-enforced |
| **David** | REST expertise locked in head | API routes get REST context automatically |
| **Jordan** | Manual security reviews | Infrastructure secure by default |
| **Priya** | Inconsistent component patterns | React best practices built-in |

### Artifacts Created

```
.github/instructions/
├── testing.instructions.md          # Elena's QA expertise
├── api-routes.instructions.md       # David's REST patterns
├── infrastructure.instructions.md   # Jordan's DevOps knowledge
└── react-components.instructions.md # Team React standards
```

### Time Investment → Value Gained

| Exercise | Time | Ongoing Value |
|----------|------|---------------|
| 5.1 Testing | 20 min | 5-10 min saved per test file |
| 5.2 API Routes | 20 min | REST compliance automatic |
| 5.3 Infrastructure | 25 min | Security patterns built-in |
| 5.4 Components | 20 min | React best practices enforced |
