# Comprehensive Copilot Instructions Template

> A complete template covering all major aspects of project documentation for Copilot. Remove sections that don't apply to your project.

---

## Project Overview

### About This Project

**Name**: [Project Name]  
**Description**: [One paragraph describing what the project does]  
**Version**: [Current version]  
**Status**: [Active development | Maintenance | Deprecated]

### Tech Stack

| Layer | Technology | Version |
|-------|------------|---------|
| Frontend | [React/Vue/Angular/etc.] | [version] |
| Backend | [Node/Python/Go/etc.] | [version] |
| Database | [PostgreSQL/MongoDB/etc.] | [version] |
| Testing | [Jest/Pytest/etc.] | [version] |
| CI/CD | [GitHub Actions/Jenkins/etc.] | - |

### Key Dependencies

- **[Dependency 1]**: Used for [purpose]
- **[Dependency 2]**: Used for [purpose]
- **[Dependency 3]**: Used for [purpose]

---

## Architecture

### Directory Structure

```
project/
├── src/                    # Application source code
│   ├── components/         # [Description]
│   ├── services/           # [Description]
│   ├── utils/              # [Description]
│   └── index.js            # Entry point
├── tests/                  # Test files
│   ├── unit/               # Unit tests
│   └── integration/        # Integration tests
├── docs/                   # Documentation
├── scripts/                # Build/deploy scripts
└── config/                 # Configuration files
```

### Key Components

| Component | Location | Purpose |
|-----------|----------|---------|
| [Component 1] | `src/[path]` | [Description] |
| [Component 2] | `src/[path]` | [Description] |
| [Component 3] | `src/[path]` | [Description] |

### Data Flow

```
[Describe how data flows through your application]

User Input → [Component A] → [Service B] → [Database] → Response
```

---

## Coding Standards

### Language Conventions

#### JavaScript/TypeScript
```javascript
// ✅ DO: Use this pattern
const example = async () => {
  try {
    const result = await fetchData();
    return result;
  } catch (error) {
    console.error('Error:', error);
    throw error;
  }
};

// ❌ DON'T: Use this pattern
function example() {
  return fetchData().then(result => {
    return result;
  }).catch(error => {
    console.log(error);
  });
}
```

### Naming Conventions

| Type | Convention | Example |
|------|------------|---------|
| Variables | camelCase | `userName`, `isActive` |
| Constants | SCREAMING_SNAKE | `MAX_RETRY_COUNT` |
| Functions | camelCase | `getUserById()` |
| Classes | PascalCase | `UserService` |
| Files - Components | PascalCase | `UserProfile.jsx` |
| Files - Utilities | camelCase | `formatDate.js` |
| Files - Styles | kebab-case | `user-profile.css` |
| Database Tables | snake_case | `user_profiles` |
| API Endpoints | kebab-case | `/api/user-profiles` |

### File Organization

```javascript
// Standard file structure for components

// 1. External imports
import React, { useState, useEffect } from 'react';
import PropTypes from 'prop-types';

// 2. Internal imports
import { useAuth } from '../hooks/useAuth';
import { formatDate } from '../utils/formatDate';
import styles from './Component.module.css';

// 3. Constants
const DEFAULT_VALUE = 'default';

// 4. Component definition
function Component({ prop1, prop2 }) {
  // Hooks
  // State
  // Effects
  // Handlers
  // Render
}

// 5. PropTypes
Component.propTypes = {
  prop1: PropTypes.string.isRequired,
  prop2: PropTypes.number,
};

// 6. Default props
Component.defaultProps = {
  prop2: 0,
};

// 7. Export
export default Component;
```

---

## API Patterns

### Request/Response Format

#### Success Response
```json
{
  "success": true,
  "data": {
    "id": 1,
    "name": "Example"
  },
  "meta": {
    "total": 100,
    "page": 1,
    "limit": 20
  }
}
```

#### Error Response
```json
{
  "success": false,
  "error": {
    "code": "VALIDATION_ERROR",
    "message": "Invalid input provided",
    "details": {
      "field": "email",
      "issue": "Invalid format"
    }
  }
}
```

### Endpoint Conventions

```
GET    /api/resources              # List all
GET    /api/resources/:id          # Get one
POST   /api/resources              # Create
PUT    /api/resources/:id          # Update (full)
PATCH  /api/resources/:id          # Update (partial)
DELETE /api/resources/:id          # Delete

GET    /api/resources/:id/related  # Get related items
POST   /api/resources/:id/actions  # Perform action
```

### Error Codes

| Code | HTTP Status | Description |
|------|-------------|-------------|
| `NOT_FOUND` | 404 | Resource doesn't exist |
| `VALIDATION_ERROR` | 400 | Invalid input |
| `UNAUTHORIZED` | 401 | Authentication required |
| `FORBIDDEN` | 403 | Insufficient permissions |
| `CONFLICT` | 409 | Resource conflict |
| `INTERNAL_ERROR` | 500 | Server error |

---

## Database Patterns

### Schema Conventions

```sql
-- Standard table structure
CREATE TABLE table_name (
    -- Primary key
    id SERIAL PRIMARY KEY,
    
    -- Domain fields
    name VARCHAR(255) NOT NULL,
    description TEXT,
    status VARCHAR(50) DEFAULT 'active',
    
    -- Foreign keys
    related_id INTEGER REFERENCES other_table(id) ON DELETE CASCADE,
    
    -- Timestamps
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    deleted_at TIMESTAMP  -- Soft delete
);

-- Index commonly queried fields
CREATE INDEX idx_table_name_status ON table_name(status);
CREATE INDEX idx_table_name_related ON table_name(related_id);
```

### Query Patterns

```javascript
// Always use parameterized queries
const getById = async (id) => {
  const result = await db.query(
    'SELECT * FROM users WHERE id = $1',
    [id]
  );
  return result.rows[0];
};

// Use transactions for multi-step operations
const createWithRelated = async (data) => {
  const client = await pool.connect();
  try {
    await client.query('BEGIN');
    // ... multiple operations
    await client.query('COMMIT');
  } catch (error) {
    await client.query('ROLLBACK');
    throw error;
  } finally {
    client.release();
  }
};
```

---

## Testing Standards

### Test File Organization

```
tests/
├── unit/                 # Isolated unit tests
│   ├── services/
│   └── utils/
├── integration/          # Integration tests
│   └── api/
├── e2e/                  # End-to-end tests
├── fixtures/             # Test data
└── helpers/              # Test utilities
```

### Test Structure

```javascript
describe('ComponentName', () => {
  // Setup
  beforeEach(() => {
    // Reset state
  });

  describe('feature/method', () => {
    it('should [expected behavior] when [condition]', () => {
      // Arrange
      const input = createTestInput();
      
      // Act
      const result = performAction(input);
      
      // Assert
      expect(result).toEqual(expectedOutput);
    });

    it('should handle edge case: [description]', () => {
      // ...
    });
  });
});
```

### What to Test

- ✅ Core business logic
- ✅ API endpoint responses
- ✅ Component rendering
- ✅ User interactions
- ✅ Error handling
- ✅ Edge cases (empty, null, large values)
- ⚠️ External service integration (mock in unit tests)
- ❌ Implementation details
- ❌ Third-party library internals

---

## Security Practices

### Never Do These

```javascript
// ❌ Never concatenate SQL
const query = `SELECT * FROM users WHERE id = ${userId}`;

// ❌ Never expose secrets in code
const apiKey = 'sk-1234567890';

// ❌ Never trust user input without validation
const email = req.body.email; // Use validator!

// ❌ Never store passwords in plain text
const password = req.body.password; // Hash it!
```

### Always Do These

```javascript
// ✅ Use parameterized queries
const query = 'SELECT * FROM users WHERE id = $1';
const result = await db.query(query, [userId]);

// ✅ Use environment variables
const apiKey = process.env.API_KEY;

// ✅ Validate all input
const { error, value } = schema.validate(req.body);

// ✅ Hash passwords
const hashedPassword = await bcrypt.hash(password, 10);
```

---

## Git Workflow

### Branch Naming

```
feature/add-user-authentication
bugfix/fix-login-redirect
hotfix/security-patch
refactor/simplify-database-queries
docs/update-api-documentation
chore/upgrade-dependencies
```

### Commit Messages

```
feat: add user authentication with JWT
fix: correct login redirect for expired sessions
docs: update API documentation for auth endpoints
refactor: simplify database connection logic
test: add integration tests for user service
chore: upgrade React to v18
```

---

## Common Patterns

### Loading States

```jsx
function DataComponent() {
  const [data, setData] = useState(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState(null);

  useEffect(() => {
    fetchData()
      .then(setData)
      .catch(setError)
      .finally(() => setLoading(false));
  }, []);

  if (loading) return <LoadingSpinner />;
  if (error) return <ErrorMessage error={error} />;
  if (!data) return <EmptyState />;

  return <DataDisplay data={data} />;
}
```

### Error Boundaries

```jsx
class ErrorBoundary extends React.Component {
  state = { hasError: false };

  static getDerivedStateFromError(error) {
    return { hasError: true };
  }

  componentDidCatch(error, errorInfo) {
    logError(error, errorInfo);
  }

  render() {
    if (this.state.hasError) {
      return <ErrorFallback />;
    }
    return this.props.children;
  }
}
```

---

## Project-Specific Notes

### Domain Terminology

| Term | Definition |
|------|------------|
| [Term 1] | [Definition] |
| [Term 2] | [Definition] |

### Business Rules

- [Rule 1: Description]
- [Rule 2: Description]

### Known Limitations

- [Limitation 1]
- [Limitation 2]

---

*Copy this file to `.github/copilot-instructions.md` and customize for your project.*
