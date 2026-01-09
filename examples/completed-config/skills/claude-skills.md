# Claude Skills & Extended Capabilities

> Claude skills enable advanced AI capabilities like extended thinking, complex reasoning, and specialized analysis. This document covers how to leverage these features in your workflow.

## What Are Claude Skills?

When using GitHub Copilot with Claude models, you get access to advanced capabilities:

1. **Extended Thinking** - Deeper reasoning for complex problems
2. **Code Analysis** - Comprehensive codebase understanding
3. **Multi-file Reasoning** - Understanding relationships across files
4. **Complex Refactoring** - Large-scale code transformations

---

## Enabling Extended Thinking

### When to Use
- Complex architectural decisions
- Debugging intricate issues
- Large refactoring tasks
- Security/performance analysis

### How to Trigger
Add phrases like these to your prompts:

```
Think through this step by step...

Before answering, consider:
1. [aspect 1]
2. [aspect 2]
3. [aspect 3]

Take your time and reason through this carefully...

Analyze this thoroughly before suggesting changes...
```

### Example: Architecture Decision

```
I need to add real-time updates to FanHub. Users should see new 
quotes appear without refreshing.

Think through this step by step:
1. What are the options (WebSockets, SSE, polling)?
2. What are the tradeoffs for our stack (React + Express)?
3. What's the impact on our current architecture?
4. What would you recommend and why?

Take your time to reason through this before making a recommendation.
```

---

## Specialized Analysis Prompts

### Security Analysis

```
Perform a security analysis of this authentication flow.

Consider:
- Common vulnerabilities (OWASP Top 10)
- Our specific stack (Express, JWT, PostgreSQL)
- Both the happy path and edge cases
- Potential attack vectors

Provide specific, actionable recommendations.
```

### Performance Analysis

```
Analyze the performance implications of this database query pattern.

Consider:
- Query complexity and indexing
- N+1 query problems
- Connection pool usage
- Caching opportunities
- Scale implications (1000 users vs 100,000 users)

Suggest optimizations with code examples.
```

### Code Quality Analysis

```
Review this module for code quality issues.

Analyze:
- SOLID principles adherence
- Error handling completeness
- Test coverage gaps
- Documentation needs
- Potential bugs or edge cases

Prioritize findings by severity.
```

---

## Multi-File Reasoning

### Understanding Relationships

```
I'm looking at these three files:
- #file:src/services/userService.js
- #file:src/routes/users.js  
- #file:src/database/queries/users.js

Explain how they work together and identify any:
1. Inconsistencies in error handling
2. Missing validation
3. Opportunities to reduce duplication
```

### Refactoring Across Files

```
I want to change our API response format from:
{ data: [...] }
to:
{ success: true, data: [...], meta: { total, page } }

Identify all files that need to change and provide a 
migration plan that won't break existing clients.
```

---

## Complex Problem Solving

### Debugging Mysterious Issues

```
Users report intermittent 500 errors on the /api/characters endpoint.
It happens maybe 1 in 20 requests. No pattern in timing.

Here's what I know:
- Error logs show "connection refused" occasionally
- Database seems healthy
- No recent deployments

Think through possible causes systematically:
1. What could cause intermittent connection issues?
2. What diagnostics should I add?
3. What's the most likely root cause?
4. How would I verify each hypothesis?
```

### Design Decisions

```
We need to add a "favorites" feature to FanHub.

Requirements:
- Users can favorite characters, episodes, and quotes
- Favorites sync across devices
- Should work offline (queue favorites for sync)
- Need to scale to 100k users

Think through the design:
1. Data model options
2. API design
3. Frontend state management
4. Offline/sync strategy
5. Recommended approach with tradeoffs
```

---

## Prompt Templates for Skills

### Deep Code Review Template

```markdown
# Deep Code Review Request

## Files to Review
[List files or use #file: references]

## Review Focus
- [ ] Security vulnerabilities
- [ ] Performance issues
- [ ] Error handling
- [ ] Code quality
- [ ] Test coverage

## Context
[Any relevant context about recent changes or concerns]

## Instructions
Perform a thorough review. For each finding:
1. Severity (Critical/High/Medium/Low)
2. Location (file and line)
3. Issue description
4. Recommended fix with code example
5. Why this matters
```

### Architecture Analysis Template

```markdown
# Architecture Analysis Request

## Current State
[Describe current architecture or reference files]

## Proposed Change
[What you want to add/change]

## Analyze
1. Impact on existing components
2. New dependencies required
3. Migration complexity
4. Risk assessment
5. Alternative approaches

## Constraints
- [Constraint 1]
- [Constraint 2]

## Deliverable
Provide a recommendation with implementation roadmap.
```

---

## Combining Skills with Other Features

### Skills + Agents

Create an agent that uses extended thinking:

```markdown
# Architecture Advisor Agent

## Role
Senior architect providing thoughtful analysis

## Behavior
When asked about architecture:
1. Always think through implications step-by-step
2. Consider at least 3 alternative approaches
3. Evaluate tradeoffs explicitly
4. Reference existing patterns in copilot-instructions.md
5. Provide concrete next steps

## Response Format
### Analysis
[Step-by-step reasoning]

### Options Considered
| Option | Pros | Cons |
|--------|------|------|

### Recommendation
[Clear recommendation with rationale]

### Next Steps
[Actionable items]
```

### Skills + Visual Context

```
I've attached a diagram of our current architecture.

Analyze this and think through:
1. What patterns do you see?
2. Where are the potential bottlenecks?
3. What's missing that a production system needs?
4. How would you evolve this for 10x scale?

Take time to reason through each point.
```

---

## Tips for Better Results

### Be Specific About Depth

```
# Instead of:
Review this code

# Say:
Perform a thorough security review of this authentication 
middleware, considering OWASP Top 10 vulnerabilities and 
our specific Express/JWT stack.
```

### Request Structured Output

```
Provide your analysis in this format:

## Summary
[One paragraph overview]

## Detailed Findings
### Finding 1: [Title]
- Severity: [Critical/High/Medium/Low]
- Location: [File:Line]
- Issue: [Description]
- Fix: [Code example]

## Recommendations
[Prioritized list]
```

### Iterate on Complex Problems

```
[First prompt]
Let's work through this problem. First, help me understand 
the current state by analyzing [X].

[Follow-up]
Good analysis. Now let's think about solutions. What are 
the top 3 approaches we could take?

[Follow-up]
I like option 2. Let's think through the implementation 
details step by step.
```

---

## When NOT to Use Extended Thinking

Save deep analysis for complex problems. For simple tasks, direct prompts are faster:

| Task | Use Extended Thinking? |
|------|----------------------|
| Generate a simple component | No |
| Debug a complex race condition | Yes |
| Write a unit test | No |
| Design a new feature architecture | Yes |
| Fix a typo | No |
| Analyze security implications | Yes |
| Add a new API endpoint | Maybe |
| Refactor across 20 files | Yes |
