---
applyTo: "**/*.test.{ts,tsx,js,jsx}"
---
# Testing Standards

## Framework
- Use [Jest/Vitest] as test runner
- Use [React Testing Library/Vue Test Utils] for component tests
- Use `@testing-library/user-event` for user interactions

## Test Structure
- Use `describe` blocks to group related tests
- Use clear test names: `it('should [expected behavior] when [condition]')`
- Follow Arrange-Act-Assert pattern

## Patterns
- Test behavior, not implementation
- Prefer `getByRole` over `getByTestId`
- Mock external dependencies, not internal modules
- Each test should be independent

## Coverage
- Aim for [80%] coverage on new code
- Always test error states and edge cases
- Include at least one integration test per feature

## Example Structure
```typescript
describe('ComponentName', () => {
  describe('when [scenario]', () => {
    it('should [expected behavior]', () => {
      // Arrange
      const props = { ... };
      
      // Act  
      render(<Component {...props} />);
      
      // Assert
      expect(screen.getByRole('button')).toBeInTheDocument();
    });
  });
});
```

## Anti-Patterns to Avoid
- ❌ Testing implementation details (internal state, private methods)
- ❌ Snapshot tests for dynamic content
- ❌ Tests that depend on execution order
- ❌ Mocking too much (test isolation vs. integration)
