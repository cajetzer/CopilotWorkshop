# Exercise 13.2: Building a Planning Agent

## 🔨 Exercise

### Exercise 13.2: Building a Planning Agent — "Plan Before You Code"

**Lead:** ⭐ Rafael | **Support:** 🤝 David, 🤝 Sarah | **Time:** 30 min

#### 📖 The Challenge

Rafael receives a feature request: "Add user authentication with email and password." Simple enough, right? But when he asks three developers to scope it, he gets three different estimates: 2 days, 1 week, 3 weeks. The requirements seem clear, but everyone interprets them differently.

David has seen this pattern before. "The problem isn't the developers," he explains. "It's that we jump to implementation without structured planning. Everyone makes different assumptions about scope, edge cases, and integration points."

Sarah adds her concern: "And when requirements change mid-sprint—which they always do—we have no reference point. We can't tell if we're handling scope creep or if the original plan was unclear."

**The core problem:** Feature scoping takes 3 days of back-and-forth, requirements are frequently misunderstood, and plan quality varies wildly depending on who creates it.

#### 🔄 The Transformation

| Before ❌ | After ✨ |
|-----------|----------|
| 3 days of back-and-forth to scope a feature | 15-minute initial plan generation |
| Different developers interpret requirements differently | Structured template ensures consistent plan quality |
| Jump to coding, discover requirements gaps mid-sprint | Planning agent asks clarifying questions upfront |
| No reference for scope changes | Implementation plan documents original requirements |
| **Time:** 3 days scoping<br>**Misunderstandings:** 2-3 per feature<br>**Plan consistency:** low | **Time:** 15 min initial plan<br>**Misunderstandings:** 0<br>**Plan consistency:** high |

#### 🎯 Your Goal

Create a planning agent with a template that generates consistent, detailed implementation plans—and a prompt variant that asks clarifying questions before planning.

---

> 💡 **Best Practice: Planning Before Implementation**
>
> Generating an implementation plan before coding catches architectural issues during planning instead of PR review. The plan becomes a contract: clear scope, documented decisions, measurable acceptance criteria. When requirements change, you can compare against the original plan.

---

#### 📋 Steps

**1. Create the implementation plan template**

Create `.github/prompts/plan-template.md` that defines the structure for all implementation plans:

```markdown
---
title: [Short descriptive title of the feature]
version: [optional version number]
date_created: [YYYY-MM-DD]
last_updated: [YYYY-MM-DD]
---

# Implementation Plan: <feature>

[Brief description of the requirements and goals of the feature]

## Architecture and Design

Describe the high-level architecture and design considerations:
- What components/modules are affected?
- What patterns should be followed?
- What are the key design decisions?

## Tasks

Break down the implementation into smaller, manageable tasks using a Markdown checklist format:

- [ ] Task 1: [Description]
  - Acceptance criteria: [What defines "done"]
- [ ] Task 2: [Description]
  - Acceptance criteria: [What defines "done"]
- [ ] Task 3: [Description]
  - Acceptance criteria: [What defines "done"]

## Testing Strategy

- Unit tests: [What needs unit testing]
- Integration tests: [What needs integration testing]
- Edge cases: [Known edge cases to cover]

## Open Questions

Outline 1-3 open questions or uncertainties that need to be clarified:

1. [Question about scope, requirements, or technical approach]
2. [Question about dependencies or integration]
3. [Question about acceptance criteria or edge cases]
```

---

> ⚠️ **Anti-Pattern: Template Bloat**
>
> **Don't:** Create a 50-field template that tries to capture everything.
>
> **Why it fails:** Developers skip sections, AI generates filler, plans become checkbox exercises instead of thinking tools.
>
> **Instead:** Keep templates focused on decisions that affect implementation. Architecture, tasks, testing, open questions. If a section rarely provides value, remove it.

---

**2. Create the planning agent**

Create `.github/agents/plan.agent.md`:

```markdown
---
description: 'Architect and planner to create detailed implementation plans.'
tools: ['fetch', 'githubRepo', 'problems', 'usages', 'search', 'todos']
handoffs:
  - label: Start Implementation
    agent: tdd
    prompt: Now implement the plan outlined above using TDD principles.
    send: true
---

# Planning Agent

You are an architect focused on creating detailed and comprehensive implementation plans for new features and bug fixes. Your goal is to break down complex requirements into clear, actionable tasks that can be easily understood and executed by developers.

## Your Approach

1. **Analyze and understand**: Gather context from the codebase and any provided documentation to fully understand the requirements and constraints.

2. **Reference project context**: Always consult the project documentation (PRODUCT.md, ARCHITECTURE.md, CONTRIBUTING.md) to ensure plans align with established patterns.

3. **Structure the plan**: Use the provided [implementation plan template](../prompts/plan-template.md) to structure the plan.

4. **Include acceptance criteria**: Each task should have clear acceptance criteria that define "done."

5. **Identify risks and questions**: Surface open questions and uncertainties early.

## What You DO NOT Do

- Do not implement code—focus only on planning
- Do not make assumptions about unclear requirements—ask for clarification
- Do not skip the template structure—consistency matters

## Handoff to Implementation

When the plan is complete and approved, use the "Start Implementation" handoff to transition to the TDD implementation agent with full context preserved.
```

---

> 💡 **Best Practice: Read-Only Planning**
>
> Notice the planning agent doesn't have `editFiles` in its tools. This is intentional—planning should be about thinking, not coding. The separation prevents premature implementation and ensures plans are reviewed before code is written.

---

**3. Create a clarifying planning prompt**

Sometimes requirements are vague. Create `.github/prompts/plan-qna.prompt.md` that asks clarifying questions before planning:

```markdown
---
agent: plan
description: Create a detailed implementation plan with clarification.
---

Briefly analyze my feature request, then ask me 3 questions to clarify the requirements. Only after I answer should you start the planning workflow.

Focus your questions on:
1. Scope boundaries (what's in/out)
2. User impact (who uses this, how)
3. Technical constraints (what must we integrate with)
```

**4. Test the planning workflow**

Try both approaches:

**Direct planning** (when requirements are clear):
Select the `plan` agent in Chat view and enter:
```
Add user authentication with email and password, including registration, login, logout, and password reset functionality.
```

The agent should generate a structured implementation plan using your template.

**Clarifying planning** (when requirements need refinement):
Use the `/plan-qna` slash command:
```
/plan-qna add a customer details page for displaying and editing customer information
```

The agent should ask 3 clarifying questions before generating the plan.

---

> ⚠️ **Anti-Pattern: Skipping Clarification**
>
> **Don't:** Assume requirements are clear just because they're written down.
>
> **Why it fails:** "Add authentication" can mean OAuth, email/password, SSO, or magic links. "Customer details page" can mean view-only, editable, or admin-level access. Assumptions become bugs.
>
> **Instead:** Use `/plan-qna` for any feature with scope ambiguity. 3 minutes of clarification saves 3 days of rework.

---

#### ✅ Success Criteria

- [ ] `.github/prompts/plan-template.md` exists with structured sections (Architecture, Tasks, Testing, Open Questions)
- [ ] `.github/agents/plan.agent.md` exists with planning persona and implementation handoff
- [ ] `.github/prompts/plan-qna.prompt.md` exists with clarification workflow
- [ ] Direct planning generates implementation plan following template structure
- [ ] `/plan-qna` asks clarifying questions before planning
- [ ] Generated plans reference project architecture and patterns

> 📂 **Compare Your Work**: [`examples/completed-config/agents/`](../../examples/completed-config/agents/)
>
> Reference implementations show the agent structure and handoff configuration.

#### 📚 Official Docs

- [Custom Agents](https://code.visualstudio.com/docs/copilot/customization/custom-agents) — Agent creation, tools, and handoffs
- [Prompt Files](https://code.visualstudio.com/docs/copilot/customization/prompt-files) — Creating reusable prompts with agent bindings
- [Context Engineering Guide - Step 2](https://code.visualstudio.com/docs/copilot/guides/context-engineering-guide#_step-2-create-implementation-plan) — Official planning workflow guidance

---

> 💡 **Best Practice: Living Agents**
>
> Treat your custom agents as living documents. After using the planning agent for a few features, you'll notice patterns: questions it should ask, context it should reference, constraints it misses. Refine the agent instructions based on observed behavior. **Good agents evolve.**

---

## 🔗 What You Built

**In this exercise:**
- `.github/prompts/plan-template.md` — Consistent structure for all implementation plans
- `.github/agents/plan.agent.md` — Planning persona with tools and handoffs
- `.github/prompts/plan-qna.prompt.md` — Clarification workflow for ambiguous requirements

**How it compounds:**

| Previous Modules | This Exercise | Combined Power |
|------------------|---------------|----------------|
| Module 3: Prompt files | Planning prompt variant | Task-specific prompts + planning workflow |
| Module 7: Custom agents | Planning agent | Specialized personas + structured planning |
| Exercise 13.1: Project docs | Agent references docs | Plans align with documented architecture |

---

## ➡️ Next Up

**[Exercise 13.3: Implementation Agent with Handoffs](exercise-13.3.md)** — Create a TDD implementation agent that inherits planning context and enforces test-first development.

> *"The plan is solid. Now how do we make sure the implementation actually follows it—and writes tests first?"*
> — Elena, ready to connect planning to quality

---
