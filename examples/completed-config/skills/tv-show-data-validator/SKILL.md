---
name: tv-show-data-validator
description: Validates TV show data (characters, episodes, shows) against FanHub schema requirements. Use when creating or modifying database records, API responses, or seed data.
---

# TV Show Data Validator

This skill helps validate data structures for FanHub's TV show database.

## Character Validation

All character objects must include:
- `name` (required): String, the character's name
- `status` (required): Enum - 'alive', 'deceased', or 'unknown'
- `show_id` (required): Integer, foreign key to shows table
- `first_appearance` (optional): Integer, foreign key to episodes table
- `actor` (optional): String, actor's name
- `description` (optional): Text

### Valid Character Example
```json
{
  "name": "Walter White",
  "status": "deceased",
  "show_id": 1,
  "first_appearance": 1,
  "actor": "Bryan Cranston",
  "description": "Chemistry teacher turned drug manufacturer"
}
```

### Invalid Character Examples
```json
// Missing required status field
{
  "name": "Jesse Pinkman",
  "show_id": 1
}

// Invalid status value
{
  "name": "Saul Goodman",
  "status": "retired",  // Should be 'alive', 'deceased', or 'unknown'
  "show_id": 1
}
```

## Episode Validation

All episode objects must include:
- `title` (required): String
- `season_number` (required): Integer, >= 1
- `episode_number` (required): Integer, >= 1
- `show_id` (required): Integer, foreign key to shows table
- `air_date` (optional): Date string (YYYY-MM-DD)
- `synopsis` (optional): Text

**Important**: Episode numbers must be unique within a season.

### Valid Episode Example
```json
{
  "title": "Pilot",
  "season_number": 1,
  "episode_number": 1,
  "show_id": 1,
  "air_date": "2008-01-20",
  "synopsis": "Walter White, a chemistry teacher, is diagnosed with lung cancer."
}
```

## Show Validation

All show objects must include:
- `name` (required): String
- `genre` (optional): String
- `premiere_year` (optional): Integer, four digits
- `status` (required): Enum - 'ongoing', 'ended', or 'cancelled'

### Valid Show Example
```json
{
  "name": "Breaking Bad",
  "genre": "Crime Drama",
  "premiere_year": 2008,
  "status": "ended"
}
```

## Common Validation Errors to Check

1. **Missing Required Fields**: Always include required fields
2. **Invalid Enum Values**: Status fields must use exact allowed values
3. **Orphaned Foreign Keys**: show_id and first_appearance must reference existing records
4. **Duplicate Episodes**: Same season_number + episode_number within a show
5. **Type Mismatches**: Ensure integers aren't passed as strings

## When to Apply This Skill

Use this skill when:
- Creating database seed data
- Writing API endpoint handlers
- Generating test fixtures
- Validating API request/response bodies
- Implementing data import/export functionality
