---
applyTo: "src/routes/**/*.ts,src/api/**/*.ts"
---
# API Route Standards

## Route Organization
- One router/file per resource (e.g., `users.ts`, `products.ts`)
- Group routes by HTTP method
- Use RESTful naming conventions

```
GET    /api/users          # List users
GET    /api/users/:id      # Get single user
POST   /api/users          # Create user
PUT    /api/users/:id      # Update user (full)
PATCH  /api/users/:id      # Update user (partial)
DELETE /api/users/:id      # Delete user
```

## Request Handling

### Validation
- Validate request body with [Zod/Joi/Yup] schemas
- Validate path params and query params
- Return 400 with detailed validation errors

```typescript
const createUserSchema = z.object({
  email: z.string().email(),
  name: z.string().min(2).max(100),
  role: z.enum(['user', 'admin']).default('user'),
});
```

### Authentication & Authorization
- Use `requireAuth` middleware for protected routes
- Use `requireRole('admin')` for role-based access
- Return 401 for unauthenticated, 403 for unauthorized

## Response Format

### Success Responses
```typescript
// Single resource
{ data: T }

// Collection
{ data: T[], meta: { total: number, page: number, limit: number } }

// Created (201)
{ data: T, message: 'Resource created successfully' }
```

### Error Responses
```typescript
{
  error: {
    code: 'VALIDATION_ERROR',
    message: 'Validation failed',
    details: [{ field: 'email', message: 'Invalid email format' }]
  }
}
```

## Error Handling
- Wrap async handlers with `asyncHandler` utility
- Use custom `AppError` class for operational errors
- Let unexpected errors bubble to global error handler

```typescript
// asyncHandler wrapper
export const asyncHandler = (fn: RequestHandler): RequestHandler => 
  (req, res, next) => Promise.resolve(fn(req, res, next)).catch(next);

// Usage
router.get('/:id', asyncHandler(async (req, res) => {
  const user = await userService.findById(req.params.id);
  if (!user) throw new AppError('User not found', 404);
  res.json({ data: user });
}));
```

## Status Codes
| Code | Use For |
|------|---------|
| 200 | Successful GET, PUT, PATCH |
| 201 | Successful POST (created) |
| 204 | Successful DELETE (no content) |
| 400 | Validation error, bad request |
| 401 | Not authenticated |
| 403 | Not authorized |
| 404 | Resource not found |
| 409 | Conflict (duplicate) |
| 500 | Server error |

## Documentation
- Add JSDoc comments for complex endpoints
- Keep OpenAPI/Swagger spec updated
- Include example requests/responses
