# Priya's Path: Custom Instructions

## 🎯 Your Focus: Learning Patterns That Stick

Priya, this module shows you how to capture best practices so you (and the whole team) benefit from them forever. You've been learning React patterns—now you'll encode them into instructions that help Copilot generate consistent, high-quality components. This isn't just about AI; it's about documenting expertise in a way that teaches as it assists.

**Your exercises**: 5.4 (React Component Instructions)  
**Time**: ~20 minutes  
**Theme**: From learning patterns to encoding patterns

---

## Your Journey in This Module

```
Priya's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "Six months ago I didn't know these React patterns"            │
│                         ↓                                       │
│  Creates react-components.instructions.md with David's help     │
│                         ↓                                       │
│  "Now they're encoded in our repo, helping everyone."           │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 5.4: React Component Instructions — "Priya's Component Patterns"

### 📖 The Story

The FanHub frontend has inconsistencies: some components use hooks properly, some don't. Some have proper TypeScript types, some use `any`. Some handle loading states, some don't.

**Priya** has been learning React best practices and wants to ensure consistency. With guidance from David, she creates component instructions.

### ❌ The "Before" — What Frustration Looks Like

Priya looks at the FanHub frontend codebase:

**Header.jsx**: 
- Uses function component ✓
- Has loading state ✓
- Uses styled-components ✓

**EpisodeList.js**:
- Uses function component ✓
- No loading state ✗
- Uses inline styles ✗

**About.jsx**:
- Has class component ✗
- Uses `any` types ✗
- Has embedded `<style>` tags ✗

*"Every component is different,"* Priya realizes. *"How am I supposed to know what's 'right'?"*

When she asks Copilot to generate a new component, it picks up random patterns from the codebase—sometimes good, sometimes bad.

### 🎯 Objective

Create instructions that provide React/TypeScript expertise for component files.

### 📋 Steps

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
   
   Ask Copilot to generate a new component:
   
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

### ✅ Success Criteria

- [ ] Created `.github/instructions/react-components.instructions.md`
- [ ] Applies to `.tsx`, `.jsx`, and `components/**`
- [ ] Generated components are function-based
- [ ] TypeScript types are explicit (no `any`)
- [ ] Loading and error states are included
- [ ] Hooks follow rules of hooks

### ✨ The "After" — The Improved Experience

Priya's learning becomes team knowledge:

**Before**: "Did you handle loading state? Use TypeScript properly? Follow hooks rules?"  
**After**: Every component follows React best practices automatically

**Priya asks Copilot for a new component:**

```
Create a ShowCard component that displays a TV show with:
- Poster image
- Title and year
- Rating badge
- "Add to favorites" button
```

**Generated component automatically includes:**
- ✓ TypeScript interface for props
- ✓ Function component structure
- ✓ Proper hook ordering
- ✓ styled-components for styling
- ✓ Loading/error handling
- ✓ Accessibility attributes

*"It's like having David's voice in the AI,"* Priya thinks.

### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [React Documentation](https://react.dev/)

### 💭 Priya's Growth

*"Six months ago I didn't know these patterns. I learned them from code reviews, from David's feedback, from trial and error. Now they're encoded in our repo, helping everyone—including future me—write better React code. I'm not just learning; I'm contributing to how the team learns."*

---

## 🎯 Why This Matters for Junior Developers

### Instructions as Documentation

Custom instructions are **living documentation**:
- They explain the "why" behind patterns
- They include examples of good vs. bad code
- They're always up-to-date (unlike wikis that rot)
- They actively help you when you need it

### Learning Acceleration

When Copilot follows the instructions, you see:
- Correct patterns applied in context
- Real examples in your actual codebase
- Consistent approaches you can learn from
- Best practices without asking "dumb questions"

### Confidence Building

*"I wasn't sure if my approach was right. Now I see the AI following the same patterns I'm learning. It validates that I'm on the right track."*

---

## 🚀 Challenge Extension: Component Variants

Add instructions for specific component types:

**Form Components**:
```markdown
---
applyTo: "**/forms/**"
---

# Form Component Standards

- Use react-hook-form for form state
- Implement proper validation messages
- Support keyboard navigation
- Handle loading state during submission
- Show success/error feedback
```

**Data Display Components**:
```markdown
---
applyTo: ["**/tables/**", "**/lists/**", "**/grids/**"]
---

# Data Display Standards

- Support sorting and filtering
- Handle empty states gracefully
- Implement pagination for large datasets
- Support loading skeletons
- Use semantic table markup for tabular data
```

---

## 🎯 Priya's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| Uncertain which patterns are "right" | Clear standards encoded in repo |
| Different approaches in every component | Consistent patterns everywhere |
| Learning through code review feedback | Learning through AI demonstration |
| Knowledge in senior devs' heads | Knowledge accessible to everyone |

### Artifacts You Created

```
.github/instructions/
└── react-components.instructions.md    # Team React standards
```

### The Junior Developer's Win

You're not just consuming knowledge—you're **contributing** to how the team captures it:

- **Documentation that works**: Instructions help in the moment, not in a wiki no one reads
- **Learning multiplier**: Every component you see follows patterns you can learn from
- **Confidence boost**: AI validates that your approach matches team standards
- **Contribution opportunity**: As you learn new patterns, you can propose instruction updates

---

## ➡️ Continue Your Journey

**Next for Priya**: [Module 6: Agent Skills](../06-agent-skills/README.md) — See how Elena's testing skills work with your component patterns.

**Also relevant**: [Module 3: Custom Prompts](../03-custom-prompts/README.md) — Create reusable prompts for common component patterns you encounter.
