# Elena's Path: Custom Instructions

## 🎯 Your Focus: Automating QA Standards

Elena, this module transforms your 8 years of QA expertise into **automatic testing standards**. Instead of writing the same review comments over and over, you'll create instructions that ensure every generated test follows your patterns—proper structure, edge case coverage, and meaningful assertions.

**Your exercises**: 5.1 (Testing Instructions)  
**Time**: ~25 minutes  
**Theme**: From repetitive feedback to encoded expertise

---

## Your Journey in This Module

```
Elena's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "I write the same review comments on every PR"                 │
│                         ↓                                       │
│  Creates testing.instructions.md with comprehensive patterns   │
│                         ↓                                       │
│  "AI generates tests that already follow our standards."        │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 5.1: Testing Instructions — "Elena's Quality Standards"

### 📖 The Story

**Elena** (QA Engineer, 8 years) reviews the team's tests and notices inconsistencies:
- Some tests use `describe/it`, others use `test`
- Mocking approaches vary wildly
- Coverage of edge cases is hit-or-miss
- Some tests are testing implementation, not behavior

*"I could review every test, or..."* Elena pauses. *"I could teach Copilot our testing standards."*

### ❌ The "Before" — What Frustration Looks Like

Elena's Monday morning code review:

**PR #42: Add user service tests**

Elena's review comments (again):
- "Please use `describe/it` blocks, not flat `test` calls"
- "You're mocking internal helpers—mock the external dependency instead"
- "Where's the error case test? What if the user doesn't exist?"
- "This assertion tests implementation details, not behavior"

**PR #43: Add auth middleware tests**

Elena's review comments (the same ones):
- "Please use `describe/it` blocks..."
- "You're mocking internal helpers..."
- "Where's the error case test..."

*"I've written these exact comments 47 times this quarter,"* Elena calculates. *"My expertise is being consumed by repetition, not strategy."*

### 🎯 Objective

Create custom instructions that automatically activate for all test files.

### 📋 Steps

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

### ✅ Success Criteria

- [ ] Created `.github/instructions/testing.instructions.md`
- [ ] File uses correct `applyTo` pattern for test files
- [ ] Generated tests follow `describe/it` structure
- [ ] Generated tests include error case coverage
- [ ] Mocking follows the specified patterns

### ✨ The "After" — The Improved Experience

Elena's testing standards are now **automatically enforced**:

**Before**: "Remember to test error cases. Use describe blocks. Mock axios at module level..."  
**After**: Every test file gets testing expertise automatically

**PR #44 (with instructions in place)**

Elena opens the PR, runs a quick review:
- Tests use `describe/it` structure ✓
- External dependencies mocked correctly ✓
- Error cases covered ✓
- Behavior tested, not implementation ✓

Review comment: *"Looks great! Just one suggestion: consider adding a test for rate limiting."*

**Time saved per test file**: 5-10 minutes of back-and-forth

### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)

### 💭 Elena's Relief

*"I used to write the same review comments over and over. Now the AI generates tests that already follow our patterns. I can focus on reviewing the logic, not the formatting. My expertise isn't consumed by repetition—it's encoded and multiplied."*

---

## 🚀 Challenge Extension: Specialized Test Instructions

Create additional test instructions for specific domains:

**API Integration Tests** (`.github/instructions/api-tests.instructions.md`):
```markdown
---
applyTo: "**/*.integration.test.{js,ts}"
---

# API Integration Test Standards

- Use supertest for HTTP assertions
- Test real database interactions (test DB)
- Clean up test data after each test
- Test authentication flows end-to-end
```

**Component Tests** (`.github/instructions/component-tests.instructions.md`):
```markdown
---
applyTo: ["**/*.test.tsx", "**/*.spec.tsx"]
---

# Component Test Standards

- Use React Testing Library, not Enzyme
- Test user interactions, not implementation
- Use `screen.getByRole()` over `getByTestId()`
- Test accessibility (a11y) with jest-axe
```

---

## 🎯 Elena's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| Same review comments repeated 47x | Standards auto-enforced in every test |
| Time spent on formatting feedback | Time spent on strategic test design |
| Expertise consumed by repetition | Expertise encoded and multiplied |
| Inconsistent test quality across team | Consistent patterns everywhere |

### Artifacts You Created

```
.github/instructions/
└── testing.instructions.md    # Your 8 years of QA expertise
```

### The Quality Champion's Win

Your role isn't diminished—it's **elevated**. Instead of being the "use describe blocks" reviewer, you're now:

- **The quality strategist**: Focusing on test coverage gaps, not formatting
- **The pattern architect**: Defining standards that scale across the team
- **The teacher**: Your expertise trains both AI and developers

---

## ➡️ Continue Your Journey

**Next for Elena**: [Module 6: Agent Skills](../06-agent-skills/README.md) — Create reusable skills for test generation, edge case analysis, and coverage reporting.

**Also relevant**: [Module 4: Custom Agents](../04-custom-agents/README.md) — Build testing agents that can run comprehensive test suites autonomously.
