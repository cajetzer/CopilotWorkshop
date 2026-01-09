# Rafael's Path: Agent Skills

## 🎯 Your Focus: Bridging Product and Engineering Through Domain Skills

Rafael, this module helps you create skills that translate **product thinking into technical execution**. Your Feature Requirements skill and Effort Estimator skill will bridge the gap between stakeholder requests and development work—giving you credible estimates instead of guesses.

**Your exercises**: 6.3 (Feature Requirements), 6.4 (Effort Estimator)  
**Time**: ~50 minutes  
**Theme**: From stakeholder requests to actionable specifications with realistic estimates

---

## Your Journey in This Module

```
Rafael's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "I spend hours translating product ideas into tech specs"      │
│                         ↓                                       │
│  Creates feature-requirements skill                             │
│                         ↓                                       │
│  Creates effort-estimator skill                                 │
│                         ↓                                       │
│  "I describe the feature, Copilot generates the spec with       │
│   realistic effort estimates based on our actual codebase."     │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 6.3: Build the Feature Requirements Skill

### 📖 The Story

**Rafael** realizes that translating stakeholder requests into technical specifications takes significant time—and often misses edge cases that engineers catch later.

*"Every feature request I write goes through multiple revision cycles,"* Rafael explains. *"The engineers find gaps, we go back and forth, and it adds days to every sprint. What if Copilot understood our feature documentation standards?"*

### ❌ The "Before" — What Frustration Looks Like

A stakeholder requests: *"Let users create custom watchlists of shows they want to follow."*

Rafael spends 2 hours writing a spec, only to have the engineering team ask:
- "What happens when a user tries to add a show that doesn't exist?"
- "Is there a limit to how many shows can be in a watchlist?"
- "Should watchlists be private or shareable?"
- "What happens to the watchlist if a show is removed from the platform?"

Every feature goes through 3-4 revision cycles because the initial spec didn't anticipate these questions.

### 🎯 Objective

Create a Feature Requirements skill that generates comprehensive technical specifications with edge cases, acceptance criteria, and API contracts.

### 📋 Steps

1. **Create the skill directory**
   
   ```bash
   mkdir -p .github/skills/feature-requirements
   ```

2. **Use plan mode to design the skill**
   
   ```
   @agent Help me create a Feature Requirements skill that generates complete 
   technical specifications from high-level feature descriptions.
   
   The skill should include:
   
   1. Specification structure:
      - User story format (As a... I want... So that...)
      - Acceptance criteria (Given/When/Then)
      - Edge cases and error handling
      - API contracts (endpoints, request/response)
      - Database schema implications
   
   2. FanHub domain knowledge:
      - Existing tables: shows, characters, episodes, quotes, users
      - Core entities and relationships
      - Authentication requirements (JWT, session handling)
   
   3. Quality checklist:
      - Security considerations
      - Performance implications
      - Mobile/accessibility requirements
      - Testing requirements
   
   4. Output format:
      - Markdown specification document
      - Ready for engineering review
      - Includes effort estimation section
   ```

3. **Create the SKILL.md file**
   
   Save to `.github/skills/feature-requirements/SKILL.md`

4. **Test with the watchlist feature**
   
   ```
   @workspace Generate a technical specification for: "Let users create custom 
   watchlists of shows they want to follow."
   
   Include database schema, API endpoints, edge cases, and acceptance criteria.
   ```
   
   **Expected output**:
   - Complete user stories
   - Database schema changes
   - API endpoint definitions
   - Edge cases the team would have caught in review
   - Acceptance criteria ready for testing

5. **Test with a more complex feature**
   
   ```
   @workspace Generate a specification for: "Add a recommendation engine that 
   suggests shows based on the user's viewing history and favorite characters."
   ```

### ✅ Success Criteria

- [ ] Created `.github/skills/feature-requirements/` directory
- [ ] Created properly formatted `SKILL.md` with FanHub context
- [ ] Skill generates complete specifications with edge cases
- [ ] API contracts include request/response examples
- [ ] Database implications are identified
- [ ] Acceptance criteria are testable

### ✨ The "After" — The Improved Experience

**Before the skill**: 2 hours writing specs + 3-4 revision cycles  
**After the skill**: 15 minutes to generate comprehensive spec, 1 revision cycle

The skill catches edge cases upfront:
- Empty states, validation errors, authentication requirements
- Database schema implications
- API contracts with example payloads
- Testable acceptance criteria

### 📚 Official Docs

- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Agent Skills Open Standard](https://agentskills.io)

### 💭 Rafael's Realization

*"This is exactly what I needed! The skill asks the questions engineers would ask—before I even submit the spec. Edge cases, database changes, API contracts... it's like having a senior engineer review my requirements before I write them."*

---

## Exercise 6.4: Create the Effort Estimator Skill

### 📖 The Story

**Rafael** struggles with effort estimation. Stakeholders want to know how long features will take, but without deep codebase knowledge, he's often guessing.

*"I can estimate product complexity,"* Rafael admits, *"but I can't estimate technical complexity. The team says 'it depends on how the current code is structured.' What if Copilot could analyze our actual codebase?"*

### ❌ The "Before" — What Frustration Looks Like

Stakeholder asks: *"How long will the watchlist feature take?"*

Rafael guesses: "Probably 2-3 sprints?"

Reality: The feature touches authentication, database schema, and the recommendation system. Actual effort: 5 sprints.

This happens repeatedly:
- Product underestimates technical complexity
- Engineering feels rushed
- Stakeholders lose trust in estimates

### 🎯 Objective

Create an Effort Estimator skill that analyzes the codebase and provides realistic effort estimates with complexity breakdowns.

### 📋 Steps

1. **Create the skill directory**
   
   ```bash
   mkdir -p .github/skills/effort-estimator
   ```

2. **Design the skill with plan mode**
   
   ```
   @agent Help me create an Effort Estimator skill that analyzes features 
   against our codebase and provides realistic effort estimates.
   
   The skill should:
   
   1. Analyze feature complexity:
      - New files/components needed
      - Existing files that need modification
      - Database schema changes required
      - Integration points with existing systems
   
   2. Provide effort breakdown:
      - Frontend work (components, styling, state management)
      - Backend work (routes, database, business logic)
      - Testing work (unit, integration, E2E)
      - Documentation updates
   
   3. Risk assessment:
      - Dependencies on other features
      - Technical debt that might block progress
      - Learning curve for unfamiliar patterns
   
   4. Output format:
      - Story point estimate with confidence level
      - T-shirt size (S/M/L/XL) alternative
      - Detailed breakdown by area
      - Risks and assumptions
   
   5. Use FanHub codebase context:
      - Current file structure in fanhub/
      - Existing patterns and conventions
      - Known technical debt areas
   ```

3. **Create the SKILL.md file**
   
   Save to `.github/skills/effort-estimator/SKILL.md`

4. **Test with the watchlist feature**
   
   ```
   @workspace Estimate the effort to implement: "Let users create custom 
   watchlists of shows they want to follow."
   
   Analyze the current codebase and provide a detailed breakdown.
   ```
   
   **Expected output**:
   - Story point estimate with reasoning
   - Breakdown: frontend, backend, testing, documentation
   - Files that need modification
   - New files that need creation
   - Risks and dependencies

5. **Compare with a simpler feature**
   
   ```
   @workspace Estimate the effort to implement: "Add a 'Copy Quote' button 
   to the QuoteDisplay component."
   ```
   
   This should produce a much smaller estimate with a simpler breakdown.

### ✅ Success Criteria

- [ ] Created `.github/skills/effort-estimator/` directory
- [ ] Skill analyzes actual codebase structure
- [ ] Provides story point AND t-shirt size estimates
- [ ] Breaks down effort by frontend/backend/testing
- [ ] Identifies risks and dependencies
- [ ] Distinguishes between simple and complex features

### ✨ The "After" — The Improved Experience

**Before the skill**: "I think it's about 3 sprints" (guessing)  
**After the skill**: "Based on codebase analysis: L-sized feature, 5-8 story points, with specific breakdown by area and identified risks"

| Metric | Before | After |
|--------|--------|-------|
| Estimate accuracy | ~40% | ~75% |
| Stakeholder trust | Low | High |
| Sprint planning | Reactive | Proactive |
| Risk identification | After kickoff | Before commitment |

### 📚 Official Docs

- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Agent Skills Open Standard](https://agentskills.io)

### 💭 Rafael's Transformation

*"I'm not guessing anymore! The skill actually looks at our codebase—it knows which files need changes, what tests need writing, and where the risks are. My estimates now come with receipts. Stakeholders trust the numbers because they see the analysis behind them."*

---

## 🎯 Rafael's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| Specs go through 3-4 revision cycles | Edge cases caught upfront |
| Effort estimates are guesses | Estimates based on codebase analysis |
| Engineers find gaps after kickoff | Gaps identified in spec phase |
| Stakeholders question estimates | Stakeholders trust detailed breakdowns |

### Artifacts You Created

```
.github/skills/
├── feature-requirements/
│   └── SKILL.md    # Spec generation with edge cases
└── effort-estimator/
    └── SKILL.md    # Codebase-aware estimates
```

### The Product Visionary's Win

You now bridge product and engineering with:
- **Complete specifications** that anticipate engineering questions
- **Realistic estimates** based on actual codebase complexity
- **Risk identification** before commitment
- **Credibility** with both stakeholders and engineers

### Skills Working Together

Your Feature Requirements skill integrates with:
- **Custom Instructions** (`frontend.instructions.md`) for component patterns
- **Custom Agents** (Technical Debt Auditor) for risk assessment
- **Effort Estimator** to add estimates to every spec

---

## ➡️ Continue Your Journey

**Next for Rafael**: [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) — See how your requirements and estimation skills integrate into the full development lifecycle.

**Also relevant**: [Module 4: Custom Agents](../04-custom-agents/README.md) — Create agents that validate your specifications against code quality standards.
