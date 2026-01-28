---
applyTo: "src/components/**/*.{tsx,jsx}"
---
# React Component Standards

## Component Structure
- Use functional components with hooks
- Export component as default export
- Co-locate styles, tests, and types with component

## File Organization
```
ComponentName/
├── ComponentName.tsx        # Component implementation
├── ComponentName.test.tsx   # Tests
├── ComponentName.module.css # Styles (if using CSS modules)
├── index.ts                 # Re-export
└── types.ts                 # Types (if complex)
```

## Naming Conventions
- Component files: PascalCase (`UserProfile.tsx`)
- Hook files: camelCase with `use` prefix (`useUserData.ts`)
- Test files: `ComponentName.test.tsx`
- Style files: `ComponentName.module.css`

## Props
- Define props interface above component
- Use descriptive interface name: `ComponentNameProps`
- Use destructuring in function signature
- Provide default values for optional props

```tsx
interface UserCardProps {
  userId: string;
  showAvatar?: boolean;
  onSelect?: (id: string) => void;
}

export default function UserCard({ 
  userId, 
  showAvatar = true,
  onSelect 
}: UserCardProps) {
  // ...
}
```

## Hooks
- Place all hooks at top of component
- Custom hooks go in `src/hooks/`
- Never call hooks conditionally
- Extract complex logic to custom hooks

## State Management
- Use local state (`useState`) for component-specific state
- Use context for state shared across component tree
- Avoid prop drilling more than 2 levels
- Consider [Zustand/Redux/Jotai] for complex global state

## Performance
- Wrap expensive computations in `useMemo`
- Wrap callback functions in `useCallback` when passed to child components
- Use `React.memo` for components that render often with same props
- Avoid inline object/array creation in render

## Accessibility
- Use semantic HTML elements
- Include `aria-label` for interactive elements without visible text
- Ensure keyboard navigation works
- Test with screen readers

## Error Handling
- Use error boundaries for component-level errors
- Handle loading and error states explicitly
- Provide meaningful fallback UI
