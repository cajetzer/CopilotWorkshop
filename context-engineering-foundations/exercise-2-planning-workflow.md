# Exercise 2: Planning Workflow

## 🔨 Create a Systematic Implementation Planning Process

**Time:** 25 minutes  
**Outcome:** Plan template + planning workflow that produces consistent, high-quality implementation plans

---

## 📖 The Challenge

Feature implementation often fails not because of bad code, but because of unclear requirements. Teams jump straight to coding and discover mid-implementation:

- "Wait, does this need authentication?"
- "Which database tables are affected?"
- "What edge cases should we handle?"

**The traditional approach:** Meetings, back-and-forth Slack messages, incomplete specs that evolve during coding.

**The context-engineered approach:** A systematic planning workflow that captures requirements, identifies dependencies, and produces actionable implementation plans—before writing any code.

---

## 🔄 The Transformation

| Before ❌ | After ✨ |
|-----------|----------|
| "Let's just start coding and figure it out" → 3 refactoring rounds as requirements become clear | Planning prompt produces detailed plan → Implementation follows plan → 1 round of polish |
| "What tables does this touch?" discovered during PR review → Rework required | Dependencies identified in planning → No surprises during implementation |
| Feature estimation: "Probably 2-3 days?" → Actually takes 8 days | Structured plan reveals true scope → Estimation within 20% of actual |

**Metrics improvement:**
- Refactoring rounds: 3 → 1 (67% reduction)
- Scope surprises during implementation: Common → Rare
- Estimation accuracy: ±300% → ±20%

---

## 🎯 Your Goal

Create two artifacts:
1. **`docs/templates/plan-template.md`** — Reusable structure for implementation plans
2. **A planning workflow** — Process for generating plans (prompt or agent)

---

## 📋 Part 1: Create Plan Template (10 min)

### Step 1: Create the Template File

Create `docs/templates/plan-template.md`:

```markdown
---
title: [Short descriptive title]
date_created: [YYYY-MM-DD]
status: Draft | In Review | Approved
---

# Implementation Plan: [Feature Name]

## Overview
[2-3 sentences describing what this feature does and why it matters]

## Requirements
### Must Have
- [ ] [Requirement 1]
- [ ] [Requirement 2]

### Should Have
- [ ] [Requirement 1]

### Won't Have (This Version)
- [ ] [Explicitly excluded scope]

## Architecture & Design

### Components Affected
| Component | Change Type | Description |
|-----------|-------------|-------------|
| [Component] | New/Modified | [What changes] |

### Data Model Changes
[Database tables, schemas, or state changes required]

### API Changes
[New endpoints, modified signatures, breaking changes]

## Implementation Tasks
Break down into small, testable chunks:

### Phase 1: [Foundation]
- [ ] Task 1 (estimated: Xh)
- [ ] Task 2 (estimated: Xh)

### Phase 2: [Core Implementation]
- [ ] Task 1 (estimated: Xh)
- [ ] Task 2 (estimated: Xh)

### Phase 3: [Polish & Edge Cases]
- [ ] Task 1 (estimated: Xh)

## Testing Strategy
- [ ] Unit tests for: [components]
- [ ] Integration tests for: [flows]
- [ ] Edge cases to cover: [list]

## Open Questions
1. [Question that needs clarification before or during implementation]
2. [Question that might affect scope]

## Risks & Mitigations
| Risk | Impact | Mitigation |
|------|--------|------------|
| [Risk] | [High/Medium/Low] | [How to address] |

## Definition of Done
- [ ] All tasks completed
- [ ] Tests passing
- [ ] Documentation updated
- [ ] Code reviewed
- [ ] Deployed to staging
```

### Step 2: Customize for Your Team

Adjust the template based on your team's needs:

- **Remove sections** you never use
- **Add sections** for compliance, security review, etc.
- **Adjust task granularity** based on your sprint structure

---

## 📋 Part 2: Create Planning Workflow (20 min)

You have three options for the planning workflow:

> 💡 **Note:** VS Code includes a **built-in Plan agent**. You can select "Plan" from the agent picker dropdown in Chat view to use it without any configuration. The options below let you customize planning for your specific needs.

### Option A: Planning Prompt (Simpler)

Create `.github/prompts/plan.prompt.md`:

```markdown
---
description: Generate a detailed implementation plan for a feature
---
You are an expert software architect creating an implementation plan.

## Your Task
Analyze the feature request and create a comprehensive implementation plan using 
the template at docs/templates/plan-template.md.

## Process
1. **Understand**: Ask 2-3 clarifying questions if the requirements are ambiguous
2. **Analyze**: Review the codebase to understand what components are affected
3. **Plan**: Create a detailed implementation plan following the template
4. **Validate**: Identify risks, edge cases, and open questions

## Guidelines
- Break tasks into chunks that can be completed in 2-4 hours
- Identify ALL components that need to change
- Consider testing strategy from the start
- Flag any architectural decisions that need team input

Reference @workspace for codebase analysis.
Use the template structure from docs/templates/plan-template.md.
```

**Usage:** `/plan Add user authentication with email/password login`

### Option B: Planning Agent (More Powerful)

Create `.github/agents/plan.agent.md`:

```markdown
---
description: Architect and planner for detailed implementation plans
tools: ['search', 'problems', 'usages', 'runSubagent', 'fetch']
---

# Planning Agent

You are an expert software architect focused on creating detailed, actionable 
implementation plans. You analyze requirements thoroughly before any code is written.

## Your Workflow

### 1. Understand Requirements
- Review the feature request carefully
- Use #tool:search to explore relevant parts of the codebase
- Ask 2-3 clarifying questions if requirements are ambiguous

### 2. Analyze Impact
- Identify all components that will be affected
- Use #tool:usages to understand how existing code is used
- Map dependencies between components

### 3. Create Implementation Plan
- Follow the template at docs/templates/plan-template.md
- Break work into 2-4 hour tasks
- Identify testing requirements for each component
- Flag risks and open questions

### 4. Validate Completeness
- Verify all requirements are addressed in tasks
- Ensure testing strategy covers edge cases
- Confirm no major dependencies are missed

## Important
- DO NOT write implementation code
- Focus on planning, not executing
- When in doubt, surface questions rather than make assumptions
- Use #tool:runSubagent for deep codebase research if needed

## Output Format
Generate the plan in markdown following docs/templates/plan-template.md structure.
```

**Usage:** Type `@plan` in chat, then describe your feature.

---

## 📋 Part 3: Test Your Planning Workflow (10 min)

### Step 3: Generate a Test Plan

Use your planning workflow with a real or sample feature:

**If using prompt:**
```
/plan Add a user preferences page that allows users to set their display name, 
notification settings, and theme preference (light/dark mode)
```

**If using agent:**
```
@plan Add a user preferences page that allows users to set their display name, 
notification settings, and theme preference (light/dark mode)
```

### Step 4: Evaluate the Plan Quality

Review the generated plan and check:

- [ ] **Requirements** are clearly stated and testable
- [ ] **Components** identified match what you'd expect
- [ ] **Tasks** are appropriately sized (2-4 hours each)
- [ ] **Dependencies** between tasks are logical
- [ ] **Testing strategy** covers the main scenarios
- [ ] **Open questions** surface real ambiguities

### Step 5: Refine Based on Results

If the plan is missing something, update your template or prompt:

- Add sections the AI consistently misses
- Clarify instructions that produce vague output
- Include examples of good task breakdowns

---

## ✅ Success Criteria

Before moving on, verify:

- [ ] `docs/templates/plan-template.md` exists with all key sections
- [ ] Planning prompt OR agent is created and working
- [ ] Test plan was generated successfully
- [ ] Plan includes: requirements, components, tasks, testing, open questions
- [ ] Tasks are appropriately sized for your team's workflow
- [ ] The plan would actually help someone implement the feature

---

## 📊 Measure Your Baseline

| Metric | Before | After |
|--------|--------|-------|
| Time to create implementation plan | ___ minutes | ___ minutes |
| Sections typically missing from plans | ___ | ___ |
| "Surprises" discovered during implementation | Common / Rare | Common / Rare |

---

## 💡 Pro Tips

### Progressive Refinement
Start with a simple template. Add sections as you notice gaps. Don't try to capture everything on day one.

### Plan ≠ Spec
Implementation plans are living documents. Update them as you learn more during implementation. Include instructions like: "Update this plan if scope changes during implementation."

### Clarifying Questions Matter
Configure your planning workflow to ask questions rather than assume. Better to spend 2 minutes clarifying than 2 hours implementing the wrong thing.

### Time Box Planning
Set a limit: "Planning should take no more than 15 minutes for a medium feature." If it takes longer, the feature might need to be broken down.

---

## 📚 Official Docs

- [VS Code: Prompt Files](https://code.visualstudio.com/docs/copilot/customization/prompt-files) — Creating reusable prompts
- [VS Code: Custom Agents](https://code.visualstudio.com/docs/copilot/customization/custom-agents) — Building specialized personas
- [VS Code: Plan Agent](https://code.visualstudio.com/docs/copilot/chat/chat-planning) — Built-in planning capabilities

---

## ➡️ Next: Exercise 3

**[Exercise 3: Execution & Validation →](exercise-3-execution-validation.md)**

Now we'll use the plan to guide implementation and measure the full context engineering workflow.

> *"A 15-minute plan saves hours of rework. That's not overhead—that's leverage."*
