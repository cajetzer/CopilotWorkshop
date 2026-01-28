# [Project Name] Architecture

> Last updated: [YYYY-MM-DD]

## Tech Stack

| Layer | Technology | Version | Purpose |
|-------|------------|---------|---------|
| Frontend | [e.g., React] | [e.g., 18.x] | [e.g., User interface] |
| Backend | [e.g., Node.js/Express] | [e.g., 20.x] | [e.g., API server] |
| Database | [e.g., PostgreSQL] | [e.g., 15.x] | [e.g., Data persistence] |
| Testing | [e.g., Jest] | [e.g., 29.x] | [e.g., Unit and integration tests] |
| Build | [e.g., Vite] | [e.g., 5.x] | [e.g., Frontend bundling] |

## Folder Structure

```
project-root/
├── src/
│   ├── components/     # Reusable UI components
│   ├── pages/          # Page-level components/routes
│   ├── services/       # API calls and external integrations
│   ├── utils/          # Helper functions and utilities
│   ├── hooks/          # Custom React hooks
│   └── types/          # TypeScript type definitions
├── server/
│   ├── routes/         # API route handlers
│   ├── controllers/    # Business logic
│   ├── models/         # Database models
│   ├── middleware/     # Express middleware
│   └── utils/          # Server utilities
├── tests/
│   ├── unit/           # Unit tests
│   └── integration/    # Integration tests
└── docs/               # Documentation
```

## Data Flow

```
[Client Request]
       │
       ▼
[Frontend (React)]
       │
       ▼
[API Service Layer]
       │
       ▼
[Backend Routes]
       │
       ▼
[Controllers]
       │
       ▼
[Database Models]
       │
       ▼
[Database]
```

### Request Lifecycle
1. **Client** makes request to frontend
2. **Frontend** calls API service functions
3. **API Service** makes HTTP request to backend
4. **Routes** receive request, validate input
5. **Controllers** execute business logic
6. **Models** interact with database
7. **Response** flows back up the chain

## Key Patterns

### API Endpoints
- REST conventions: `GET /api/resources`, `POST /api/resources`, etc.
- All endpoints return JSON with consistent structure:
  ```json
  { "data": {...}, "error": null }
  ```
- Authentication via [JWT/session/etc.]

### Database Access
- [Repository pattern / Direct ORM / etc.]
- All queries go through model layer
- Transactions for multi-table operations

### Error Handling
- Backend: Try/catch with centralized error middleware
- Frontend: Error boundaries for UI, catch blocks for API calls
- Consistent error response format

### Testing Approach
- Unit tests: Individual functions/components
- Integration tests: API endpoints with test database
- Naming: `[filename].test.ts` or `[filename].spec.ts`

## Conventions

### Naming
- Files: `kebab-case.ts`
- Components: `PascalCase.tsx`
- Functions: `camelCase`
- Constants: `SCREAMING_SNAKE_CASE`

### Code Organization
- One component per file
- Co-locate tests with source files OR in `tests/` directory
- Import order: external → internal → relative

## Environment Configuration

| Variable | Purpose | Example |
|----------|---------|---------|
| `DATABASE_URL` | Database connection string | `postgresql://...` |
| `API_BASE_URL` | Backend API URL | `http://localhost:3001` |
| `NODE_ENV` | Environment mode | `development`, `production` |

---

## Notes for AI Assistants

When working with this codebase:
- Place new API routes in `server/routes/`
- Place new components in `src/components/`
- Follow existing patterns for error handling
- Include tests for new functionality
- Update this document if architecture changes significantly
