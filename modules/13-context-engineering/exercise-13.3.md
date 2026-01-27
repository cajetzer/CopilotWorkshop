# Exercise 13.3: Implementation Agent with Handoffs

## 🔨 Exercise

### Exercise 13.3: Implementation Agent with Handoffs — "Plan to Code, Seamlessly"

**Lead:** ⭐ Elena | **Support:** 🤝 Marcus, 🤝 Sarah | **Time:** 25 min

#### 📖 The Challenge

Elena watches the team transition from planning to implementation. "We have a great plan," she says, "but then someone starts a new chat, re-explains the requirements, and immediately starts coding. Tests? Those come later—maybe."

Marcus sees the operational cost: "Every time we switch from planning to coding, we lose 30 minutes re-establishing context. The AI forgets what we discussed, forgets the constraints, forgets the edge cases we identified."

Sarah adds the quality dimension: "And without tests first, we ship code that 'works' but misses edge cases. Then QA finds bugs, we patch them, repeat. TDD would catch these during implementation, but nobody follows it consistently."

**The core problem:** Context is lost between planning and implementation (30 min re-explaining), tests are added as an afterthought instead of driving development, and coverage gaps reach 40% because edge cases are forgotten.

#### 🔄 The Transformation

| Before ❌ | After ✨ |
|-----------|----------|
| New chat for implementation = context lost | Handoff preserves full planning context |
| 30 min re-explaining requirements | 0 min—implementation agent inherits plan |
| Tests added after code (afterthought) | Tests written first (TDD workflow) |
| 40% coverage gaps, edge cases missed | 95%+ coverage, edge cases in acceptance criteria |
| **Context rebuild:** 30 min<br>**Test timing:** after implementation<br>**Coverage:** 60% average | **Context rebuild:** 0 min<br>**Test timing:** before implementation<br>**Coverage:** 95%+ |

#### 🎯 Your Goal

Create a TDD implementation agent that receives planning context via handoff and enforces test-first development.

---

> 💡 **Best Practice: Test-Driven Development with AI**
>
> TDD with AI is powerful: the AI writes tests that encode acceptance criteria, then implements minimal code to satisfy them. This creates a tight feedback loop—tests fail, code passes tests, refactor. The AI handles the tedious test-writing, you validate the edge cases and quality.

---

#### 📋 Steps

**1. Create the TDD implementation agent**

Create `.github/agents/tdd.agent.md`:

```markdown
---
description: 'Execute a detailed implementation plan as a test-driven developer.'
tools: ['editFiles', 'runInTerminal', 'search', 'problems', 'usages']
---

# TDD Implementation Agent

Expert TDD developer generating high-quality, fully tested, maintainable code for the given implementation plan.

## Test-Driven Development Workflow

For each task in the implementation plan:

1. **Write tests first** — Encode acceptance criteria and expected behavior as failing tests
2. **Implement minimal code** — Write just enough code to make tests pass
3. **Run targeted tests** — Verify the specific tests pass immediately
4. **Run full test suite** — Catch regressions before moving to next task
5. **Refactor** — Clean up while keeping all tests green

## Core Principles

- **Incremental progress**: Small, safe steps keeping system working at all times
- **Test-driven**: Tests guide and validate behavior—no code without a test
- **Quality focus**: Follow existing patterns and conventions from CONTRIBUTING.md
- **Plan adherence**: Reference the implementation plan for scope and acceptance criteria

## What You Reference

- Implementation plan provided via handoff or attached file
- Project documentation (ARCHITECTURE.md, CONTRIBUTING.md) for patterns
- Existing test files for testing conventions and patterns

## Success Criteria

Before marking a task complete:
- [ ] Tests written that encode acceptance criteria
- [ ] Implementation passes all new tests
- [ ] Full test suite passes (no regressions)
- [ ] Code follows project conventions
```

---

> ⚠️ **Anti-Pattern: Tests After Implementation**
>
> **Don't:** Let the implementation agent write code first and "add tests later."
>
> **Why it fails:** Tests written after code often just verify what was built, not what should have been built. They miss edge cases because the developer (or AI) is anchored to the implementation.
>
> **Instead:** Enforce tests-first in the agent instructions. The agent writes tests from acceptance criteria, then implements. This surfaces edge cases during test design.

---

**2. Connect planning agent to implementation agent via handoff**

If you haven't already, verify your planning agent (`.github/agents/plan.agent.md`) includes the handoff configuration:

```yaml
handoffs:
  - label: Start Implementation
    agent: tdd
    prompt: Now implement the plan outlined above using TDD principles.
    send: true
```

The `send: true` ensures the entire planning conversation—including the implementation plan—is passed to the TDD agent. This is the **context bridge** that eliminates the 30-minute re-explanation.

**3. Test the complete workflow**

Run through the full context engineering workflow:

**Step A: Plan a feature**
Select the `plan` agent and enter:
```
Add a favorites feature that lets users save shows to a personal watchlist.
```

Let the planning agent generate an implementation plan with tasks and acceptance criteria.

**Step B: Handoff to implementation**
Click the "Start Implementation" handoff button. The TDD agent should:
1. Receive the full planning context
2. Reference the implementation plan
3. Start with the first task's tests

**Step C: Verify TDD workflow**
Watch the TDD agent's approach:
- Does it write tests before implementation?
- Does it run tests after each change?
- Does it reference the plan's acceptance criteria?

If it skips tests or codes first, refine the agent instructions.

---

> 💡 **Best Practice: Handoff Context Preservation**
>
> Handoffs pass the full conversation context to the next agent. This means:
> - All clarifying questions and answers are preserved
> - Implementation plan details are available
> - Decisions made during planning inform implementation
>
> **No context cliff.** The implementation agent continues the conversation, not starts a new one.

---

**4. Create a review checkpoint agent (optional enhancement)**

For teams that want a review step, create `.github/agents/review.agent.md`:

```markdown
---
description: 'Review implementation against the original plan.'
tools: ['search', 'problems', 'usages']
---

# Review Agent

Review the implementation to verify it matches the original implementation plan.

## Review Checklist

1. **Plan adherence**: Does the code implement all planned tasks?
2. **Test coverage**: Are all acceptance criteria covered by tests?
3. **Pattern compliance**: Does the code follow CONTRIBUTING.md conventions?
4. **Missing items**: What was planned but not implemented?
5. **Scope creep**: What was implemented but not in the plan?

## Output

Provide a structured review:
- ✅ Completed items
- ⚠️ Partial implementations
- ❌ Missing implementations
- 📝 Recommendations
```

---

> ⚠️ **Anti-Pattern: Skipping Validation**
>
> **Don't:** Trust the AI's implementation without verification.
>
> **Why it fails:** AI can misunderstand requirements, miss edge cases, or generate code that looks correct but has subtle bugs. Without validation, errors compound.
>
> **Instead:** Use the review agent (or manual review) to compare implementation against plan. "Fresh eyes"—even AI fresh eyes—catch what the implementation agent missed.

---

#### ✅ Success Criteria

- [ ] `.github/agents/tdd.agent.md` exists with TDD workflow instructions
- [ ] Planning agent includes handoff to TDD agent
- [ ] Handoff preserves planning context (no re-explanation needed)
- [ ] TDD agent writes tests before implementation
- [ ] TDD agent references the implementation plan's acceptance criteria
- [ ] Full test suite runs between tasks

> 📂 **Compare Your Work**: [`examples/completed-config/agents/`](../../examples/completed-config/agents/)
>
> Reference implementations show the TDD agent and handoff configuration.

#### 📚 Official Docs

- [Custom Agents - Handoffs](https://code.visualstudio.com/docs/copilot/customization/custom-agents#_handoffs) — Configuring agent-to-agent transitions
- [Context Engineering Guide - Step 3](https://code.visualstudio.com/docs/copilot/guides/context-engineering-guide#_step-3-generate-implementation-code) — Official implementation guidance
- [Agent Mode](https://code.visualstudio.com/docs/copilot/chat/chat-agent-mode) — Understanding agent capabilities and tools

---

> 💡 **Best Practice: Incremental Complexity**
>
> Don't implement the entire plan in one go. The TDD agent should:
> 1. Complete one task fully (tests → code → verify)
> 2. Run full test suite
> 3. Move to next task
>
> This prevents compounding errors and keeps the system working at all times.

---

## 🔗 What You Built

**In this exercise:**
- `.github/agents/tdd.agent.md` — TDD implementation agent with test-first workflow
- Handoff configuration connecting planning to implementation
- (Optional) `.github/agents/review.agent.md` — Plan-vs-implementation review agent

**How it compounds:**

| Previous Modules | This Exercise | Combined Power |
|------------------|---------------|----------------|
| Module 7: Custom agents | TDD agent + handoffs | Specialized agents with seamless transitions |
| Exercise 13.1: Project docs | Agent references CONTRIBUTING.md | Implementations follow documented patterns |
| Exercise 13.2: Planning agent | Handoff preserves plan | Planning decisions inform implementation |

---

## 🎉 Module Complete: Your Context Engineering System

You've built a complete context engineering workflow:

```
                    ┌─────────────────────────────────────────┐
                    │         Project Documentation           │
                    │   PRODUCT.md | ARCHITECTURE.md | ...    │
                    └─────────────────┬───────────────────────┘
                                      │
                                      ▼
┌─────────────────────────────────────────────────────────────────┐
│                    copilot-instructions.md                       │
│              (References project docs - always available)        │
└─────────────────────────────────────────────────────────────────┘
                                      │
                    ┌─────────────────┴─────────────────┐
                    ▼                                   ▼
          ┌─────────────────┐                 ┌─────────────────┐
          │  Planning Agent  │    handoff     │    TDD Agent     │
          │  (plan.agent.md) │ ──────────────▶│  (tdd.agent.md)  │
          └─────────────────┘                 └─────────────────┘
                    │                                   │
                    ▼                                   ▼
          ┌─────────────────┐                 ┌─────────────────┐
          │ Implementation   │                │ Tested, Quality  │
          │ Plan             │                │ Code             │
          └─────────────────┘                 └─────────────────┘
```

**The compound effect:**
- Project docs inform every AI interaction
- Planning agent creates structured plans aligned with architecture
- Handoffs preserve context between phases
- TDD agent implements with tests-first quality
- No context cliffs, no re-explanation, no forgotten constraints

---

## ➡️ What's Next

Your context engineering system is complete. Consider these next steps:

**Immediate application:**
- Use this workflow for your next feature implementation
- Measure time saved in planning and context setup

**Iteration:**
- Refine agents based on observed behavior
- Add domain-specific context to project docs
- Create additional agents (debugging, documentation, review)

**Scaling:**
- Share the workflow with your team via version control
- Create module-specific planning templates
- Establish quarterly context review cycles

> *"We've gone from 'explain everything every time' to 'the AI knows how we work.' This isn't just efficiency—it's institutional knowledge that scales."*
> — Sarah, reflecting on the transformation

---
