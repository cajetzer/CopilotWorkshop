# Exercise 1: Persistent Context Layers

## 🔨 Build Your Project's Context Foundation

**Time:** 30 minutes  
**Outcome:** Documentation + repository instructions + file-pattern instructions that ground Copilot in your project

> 💡 **Builds on Exercise 0:** You learned to use `@workspace` and `#codebase` to provide context in individual prompts. Now we'll make that context **persistent**—so Copilot always has it without you typing it every time.

---

## 📖 The Challenge

Every codebase has tribal knowledge—patterns, conventions, and architectural decisions that exist in people's heads but aren't written down. When you ask Copilot a question, it has to guess at this context by analyzing hundreds or thousands of files.

**The result:** Slower responses, inconsistent suggestions, and the constant need to correct "that's not how we do it here."

**The solution:** Create layered persistent context that Copilot uses automatically.

---

## 📚 Understanding Persistent Context Layers

VS Code supports **multiple layers** of persistent context, each serving a different purpose:

| Layer | File | Scope | Use For |
|-------|------|-------|---------|
| **Documentation** | `docs/ARCHITECTURE.md` | Referenced when analyzing code | Project structure, tech stack, decisions |
| **Repository Instructions** | `.github/copilot-instructions.md` | All chat requests in workspace | Team standards, shared conventions |
| **File-Pattern Instructions** | `.github/instructions/*.instructions.md` | Specific file types (via `applyTo`) | Language-specific rules, component conventions |
| **User Instructions** | User profile `.instructions.md` | All your workspaces | Personal preferences |

**Key insight:** These layers **combine automatically**. Copilot merges all applicable instructions for each request.

```
┌─────────────────────────────────────────────────────┐
│                  Your Chat Request                   │
├─────────────────────────────────────────────────────┤
│  + Repository Instructions (.github/copilot-...)    │
│  + File-Pattern Instructions (if applyTo matches)   │
│  + User Instructions (from profile)                 │
│  + Documentation (via @workspace or links)          │
└─────────────────────────────────────────────────────┘
```

---

## 🔄 The Transformation

| Before ❌ | After ✨ |
|-----------|----------|
| "Where do database queries go?" → Analyzes 847 files → 8s → 3 patterns | "Where do database queries go?" → References docs → 2s → Correct pattern |
| Writing tests → Generic Jest patterns → Doesn't match conventions | Writing tests → `applyTo: **/*.test.ts` → Your exact patterns |
| New team member → Generic suggestions → "That's not how we do it" | New team member → Same instructions → Consistent from day one |

**Metrics improvement:**
- Response time: 8s → 2s (75% faster)
- Pattern consistency: Multiple suggestions → Single correct answer
- Onboarding time: Days of learning conventions → Immediate consistency

---

## 🎯 Your Goal

Create three layers of persistent context:
1. **`docs/ARCHITECTURE.md`** — Project structure, tech stack, key patterns
2. **`.github/copilot-instructions.md`** — Repository-wide instructions for all interactions
3. **`.github/instructions/*.instructions.md`** — File-pattern-specific instructions

---

## 📋 Part 1: Create ARCHITECTURE.md (10 min)

### Step 1: Generate Initial Documentation

Open Copilot Chat (`Ctrl+Shift+I` / `Cmd+Shift+I`) and use this prompt:

```
@workspace Analyze this project and create a concise ARCHITECTURE.md that includes:

1. **Tech Stack** - Languages, frameworks, databases, key dependencies
2. **Folder Structure** - What goes where (keep it high-level)
3. **Data Flow** - How requests move through the system
4. **Key Patterns** - How we handle routing, database access, error handling, testing

Keep it under 150 lines. Focus on what someone (or an AI) needs to understand 
the project structure, not implementation details.

Save to docs/ARCHITECTURE.md
```

### Step 2: Review and Refine

Open the generated `docs/ARCHITECTURE.md` and verify:

- [ ] **Tech Stack** is accurate (correct versions, no hallucinated dependencies)
- [ ] **Folder Structure** matches your actual project layout
- [ ] **Key Patterns** reflects how your team actually works

**Common corrections needed:**
- Remove dependencies that don't exist
- Fix folder paths that are wrong
- Add important conventions Copilot missed

### Step 3: Test the Improvement

Ask a structural question:

```
@workspace Where should I add a new API endpoint for user preferences?
```

**Expected result:** Copilot references your ARCHITECTURE.md and provides a specific, accurate answer.

---

## 📋 Part 2: Create Repository Instructions (10 min)

Repository instructions apply to **all chat requests** in your workspace. This is where you put team standards that everyone should follow.

### Step 4: Create the Instructions File

Create `.github/copilot-instructions.md`:

```markdown
# [Your Project Name] Copilot Guidelines

## Project Context
Refer to [System Architecture](../docs/ARCHITECTURE.md) for project structure and patterns.

## Code Standards
- Language: [e.g., TypeScript 5.x with strict mode]
- Testing: [e.g., Jest with React Testing Library]
- Linting: [e.g., ESLint + Prettier]

## Key Patterns
- **API Routes**: Place in `src/routes/`, follow REST conventions
- **Database Access**: Use repository pattern in `src/repositories/`
- **Error Handling**: Use custom `AppError` class, never throw raw errors
- **Components**: Functional components with hooks, no class components

## What NOT to Do
- ❌ Don't use `any` type - use `unknown` if type is truly unknown
- ❌ Don't commit `console.log` statements
- ❌ Don't use inline styles - use CSS modules
- ❌ Don't skip error handling on async operations

## Documentation
Suggest updates to ARCHITECTURE.md or these instructions when you notice:
- Patterns that aren't documented
- Conflicts between documentation and code
- Missing conventions that would help consistency
```

### Step 5: Generate Suggestions (Optional)

If you're not sure what to include, ask Copilot:

```
@workspace Based on the codebase, suggest what should go in our 
.github/copilot-instructions.md file. Focus on:
- Patterns we consistently use
- Common mistakes to avoid
- Testing conventions
- Naming conventions
```

### Step 6: Test Repository Instructions

Start a **new chat** (important—this loads fresh context) and ask:

```
What testing framework should I use for a new feature?
```

**Expected result:** Copilot gives a specific answer matching your instructions, not a generic "you could use Jest, Mocha, or Vitest" response.

---

## 📋 Part 3: Create File-Pattern Instructions (10 min)

File-pattern instructions use the `applyTo` property to apply **only when working with specific file types**. This is powerful for language-specific or component-specific rules.

### Step 7: Create the Instructions Folder

Create the folder: `.github/instructions/`

### Step 8: Create Test File Instructions

Create `.github/instructions/testing.instructions.md`:

```markdown
---
applyTo: "**/*.test.{ts,tsx,js,jsx}"
---
# Testing Standards

## Framework
- Use Jest as test runner
- Use React Testing Library for component tests
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
- Aim for 80% coverage on new code
- Always test error states and edge cases
- Include at least one integration test per feature
```

### Step 9: Create Component Instructions (Example for React)

Create `.github/instructions/react-components.instructions.md`:

```markdown
---
applyTo: "src/components/**/*.{tsx,jsx}"
---
# React Component Standards

## Component Structure
- Use functional components with hooks
- Export component as default export
- Co-locate styles, tests, and types with component

## Naming
- Component files: PascalCase (`UserProfile.tsx`)
- Hook files: camelCase with `use` prefix (`useUserData.ts`)
- Test files: `ComponentName.test.tsx`

## Props
- Define props interface above component
- Use destructuring in function signature
- Provide default values for optional props

## Hooks
- Place hooks at top of component
- Custom hooks go in `src/hooks/`
- Don't call hooks conditionally

## State Management
- Use local state for component-specific state
- Use context for shared state across component tree
- Avoid prop drilling more than 2 levels
```

### Step 10: Create Additional Pattern Instructions (Optional)

**For API routes** — `.github/instructions/api-routes.instructions.md`:

```markdown
---
applyTo: "src/routes/**/*.ts"
---
# API Route Standards

## Error Handling
- Wrap async handlers with `asyncHandler` utility
- Use `AppError` for operational errors
- Return consistent error response format

## Validation
- Validate request body with Zod schemas
- Return 400 for validation errors with details

## Response Format
- Success: `{ data: T, meta?: { pagination } }`
- Error: `{ error: { code: string, message: string } }`
```

### Step 11: Test File-Pattern Instructions

Open a test file (or create one) and start a new chat:

```
Help me write tests for a UserProfile component
```

**Expected result:** Copilot should follow your testing.instructions.md patterns.

**Verify:** Check the "References" section in the chat response to see which instruction files were applied.

---

## 📊 Understanding How Layers Combine

When you work on a test file for a React component, Copilot combines all applicable layers:

```
┌─────────────────────────────────────────────────────────────┐
│  Working on: src/components/UserCard/UserCard.test.tsx      │
├─────────────────────────────────────────────────────────────┤
│  ✓ Repository instructions (.github/copilot-instructions)   │
│  ✓ Testing instructions (applyTo: **/*.test.*)              │
│  ✓ React instructions (applyTo: src/components/**)          │
│  ✓ Documentation (ARCHITECTURE.md via links)                │
└─────────────────────────────────────────────────────────────┘
```

**All applicable instructions are merged** for that specific request.

---

## ✅ Success Criteria

Before moving on, verify:

- [ ] `docs/ARCHITECTURE.md` exists and is under 150 lines
- [ ] `.github/copilot-instructions.md` exists with project-wide standards
- [ ] At least one `.github/instructions/*.instructions.md` file exists with `applyTo`
- [ ] Structural questions reference your documentation
- [ ] File-specific questions follow the appropriate instructions
- [ ] Check "References" in chat to confirm instructions are being applied

---

## 📊 Measure Your Baseline

| Metric | Before | After |
|--------|--------|-------|
| Time to answer "where does X go?" | ___ seconds | ___ seconds |
| Conflicting patterns suggested | ___ | ___ |
| Instructions referenced in chat | No | Yes |
| Test suggestions match conventions | No | Yes |

---

## 💡 Pro Tips

### Start Small, Add as Needed
Don't try to document everything. Start with:
- 1 architecture doc
- 1 repository instructions file
- 1-2 file-pattern instructions for your most common work

Add more as you notice gaps in Copilot's suggestions.

### Use `applyTo` Strategically
Good patterns for `applyTo`:
- `**/*.test.{ts,tsx}` — All test files
- `src/components/**/*.tsx` — All React components
- `src/routes/**/*.ts` — All API routes
- `**/*.sql` — All SQL files
- `docs/**/*.md` — All documentation

### Check References
After each chat response, check the "References" section to see which instructions were applied. If expected instructions aren't showing:
- Verify the `applyTo` pattern matches your file path
- Ensure the file is in `.github/instructions/`
- Confirm the file has the `.instructions.md` extension

### Keep Instructions Focused
Each instructions file should focus on one topic. Better to have:
- `testing.instructions.md`
- `react-components.instructions.md`
- `api-routes.instructions.md`

Than one massive file with everything.

---

## 📚 Official Docs

- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions) — Complete reference for all instruction types
- [VS Code: Instructions File Format](https://code.visualstudio.com/docs/copilot/customization/custom-instructions#_instructions-file-format) — YAML frontmatter and `applyTo` patterns
- [GitHub: Awesome Copilot](https://github.com/github/awesome-copilot) — Community-contributed instruction examples

---

## 🔗 What You Built

**In this exercise:**
- `docs/ARCHITECTURE.md` — Project structure documentation
- `.github/copilot-instructions.md` — Repository-wide standards
- `.github/instructions/*.instructions.md` — File-pattern-specific rules

**How they work together:**

| Layer | Applies When | Purpose |
|-------|--------------|---------|
| Architecture | `@workspace` queries, linked references | Structural understanding |
| Repository | Every chat request | Team-wide standards |
| File-Pattern | When `applyTo` matches current file | Context-specific rules |

---

## ➡️ Next: Exercise 2

**[Exercise 2: Planning Workflow →](exercise-2-planning-workflow.md)**

Now that Copilot understands your project structure and patterns, we'll create a systematic workflow for planning new features.

> *"Documentation is the foundation. Instructions are the guardrails. Together they create consistency."*
