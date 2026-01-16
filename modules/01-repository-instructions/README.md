# Module 1: Repository Instructions

## ⏰ — Establishing Foundations

> *"We've all felt it—Copilot giving wildly different suggestions to each of us. Let's fix that."*  
> — Sarah, looking at the team's chaotic FanHub codebase

---

## 📖 The Story

The TechCorp team has cloned the FanHub starter project and experienced **The Struggle**. Everyone got different suggestions from Copilot because there are no documented patterns—the AI is as confused as a new hire with no onboarding docs.

**David** (Staff Engineer) knows the problem: *"Before anyone writes another line of code, we need to document what we have. Otherwise Copilot is just guessing—and so are we."* Every prompt Copilot sees includes unnecessary context because there's no architecture guide. It's wasting tokens analyzing the entire codebase just to understand basic structure.

**Sarah** (Senior Developer) has seen this movie before: *"See how the backend routes use three different async patterns? That's because the contractor had no standards. Let's fix that—and teach Copilot at the same time."* 

**This module's mission**: Create two foundational files that transform how Copilot understands your project:
1. **ARCHITECTURE.md** — Reduces context waste, provides structural understanding
2. **.github/copilot-instructions.md** — Standardizes patterns, ensures consistency

By the end, everyone will get better suggestions with less context, following your chosen patterns.

---

⚠️ **Prerequisites**: 
- Complete [Module 00: Orientation](../00-orientation/README.md)

---

## 🧠 Mindful Moment: The Documentation Paradox

Traditional thinking: *"Documentation is something you write AFTER the code works."*

AI-native thinking: *"Documentation is the FIRST thing you create—it's the context that makes everything else better."*

This isn't about bureaucracy. It's about leverage. Every hour David spends documenting architecture saves the team (and Copilot) hundreds of hours of confusion.

---

## 💭 Why This Matters

**Sarah (Skeptical Senior, 15 years):** *"I tested it. Before ARCHITECTURE.md: Copilot analyzed 847 files to answer 'where do database queries go?' Response time: 8 seconds. After: Referenced architecture doc, 2 seconds. That's 75% faster responses, every query. When I added copilot-instructions.md with our React standards, pattern violations in PR reviews dropped from 8 per PR to 0. That's 40 minutes saved per review, 3 reviews per week = 2 hours back every week."*

**David (Seasoned Architect, 20 years):** *"For 20 years, I've documented architecture after the fact. Now architecture documentation is input, not output. ARCHITECTURE.md means Copilot understands my system design from the start—it doesn't suggest patterns that violate the architecture. It amplifies my decisions instead of working around them. Documentation once = architectural alignment automatically."*

**Marcus (DevOps Developer, 5 years):** *"Build failures used to take 30 minutes to debug because Copilot would suggest patterns that broke our build pipeline. Now copilot-instructions.md includes 'always use npm workspaces syntax, avoid file: protocol' and build-breaking suggestions dropped from 5 per sprint to 0. That's 150 minutes saved per sprint = 5 hours back every two weeks."*

**Elena (Quality Champion, 8 years):** *"I documented our testing standards once in copilot-instructions.md: 'use Jest, mock external APIs, test error cases.' Now generated test suites follow our patterns from the start. Test revision rounds went from 3→1, saving 30 minutes per test suite. That's actual time back, not theoretical improvement."*

**Rafael (Product Visionary, 10 years):** *"When I analyze codebases for feature feasibility, ARCHITECTURE.md cuts my exploration time from 45 minutes to 5. I can walk into stakeholder meetings with 'here's what's possible' answers instead of 'I need to investigate.' Faster technical understanding = faster business decisions = features shipped earlier."*

---

💡 **Understanding `@workspace`**

Throughout this module, you'll use `@workspace` in your Copilot prompts. This powerful context operator:
- Gives Copilot access to your entire project structure
- Enables analysis across multiple files simultaneously
- Allows AI to understand relationships between components
- Makes documentation generation accurate and project-specific

Think of `@workspace` as giving Copilot the same bird's-eye view you have as a developer. Instead of seeing one file, it sees the whole system.

---

## 📚 Key Concepts

### The Two-File Foundation

These two files form the foundation of all Copilot customization:

**1. ARCHITECTURE.md (docs/ or repo root)**
- **Purpose**: Structural understanding + context efficiency
- **Value**: Copilot can reference architecture instead of analyzing entire codebase every time
- **Result**: Less tokens wasted, faster responses, more accurate suggestions
- **What to include**: Tech stack, folder structure, data flow, key patterns
- **What NOT to include**: Implementation details, code examples, exhaustive file lists

**2. .github/copilot-instructions.md**
- **Purpose**: Automatic pattern standardization
- **Value**: Every Copilot interaction follows your team's conventions
- **Result**: Consistent code style, reduced review cycles, fewer violations
- **What to include**: Coding conventions, library preferences, error patterns, testing requirements
- **What NOT to include**: Project structure, architecture decisions, task-specific rules

### How They Work Together

1. **ARCHITECTURE.md** gives Copilot the "what" and "where" → *"This is a React frontend with Express backend, here's the folder structure"*
2. **copilot-instructions.md** gives Copilot the "how" → *"Always use async/await, prefer functional components, handle errors with our error middleware"*

Both are read by Copilot automatically when you use `@workspace` context.

> 📂 **Reference Examples**: The [`examples/completed-config/`](../../examples/completed-config/) folder contains sample files showing completed work:
> - [`docs/ARCHITECTURE.md`](../../examples/completed-config/docs/ARCHITECTURE.md)
> - [`.github/copilot-instructions.md`](../../examples/completed-config/.github/copilot-instructions.md)

---

## 🔨 Exercises

| # | Exercise | Lead | Support | Time | Topic |
|---|----------|------|---------|------|-------|
| [1.1](exercise-1.1.md) | Create ARCHITECTURE.md | David | All | 15 min | Documentation as Leverage |
| [1.2](exercise-1.2.md) | Create copilot-instructions.md | Sarah | All | 20 min | Intent Over Implementation |

**Total Time**: ~15 minutes

---

## 📚 Official Documentation

- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [VS Code: Copilot Chat Context](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-context)
- [GitHub Docs: Repository Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [GitHub Docs: Prompt Engineering](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)

---

## ➡️ Next Up

**[Module 2: Agent Plan Mode](../02-agent-plan-mode/README.md)** — Monday 11:30 AM

Now that Copilot knows our structure (ARCHITECTURE.md) and our patterns (copilot-instructions.md), let's teach it to think through problems before coding. David will discover AI planning for architectural decisions, Marcus will debug complex deployment issues, and the whole team will see how "plan first, code second" transforms their workflow.

> *"Copilot knows our patterns now. But can it think through complex problems like we do?"*  
> — David, ready to test Copilot's reasoning capabilities

---

## ✅ Module Checklist

Before moving to Module 2, verify:

- [ ] `fanhub/docs/ARCHITECTURE.md` exists and includes: tech stack, folder structure, data flow
- [ ] `.github/copilot-instructions.md` exists with: coding conventions, library preferences, error patterns
- [ ] Tested queries run faster with ARCHITECTURE.md (compare before/after response times)
- [ ] Copilot suggestions now follow your documented patterns
- [ ] Team agrees on both documents (no "but I prefer..." objections)
- [ ] Both checkpoints completed showing measurable improvements

---

#### 📌 Practices Used

| Practice | How It Applied |
|----------|----------------|
| 📚 **Documentation as Leverage** | Your ARCHITECTURE.md now benefits humans AND AI |
| 🎯 **Context is Everything** | The `@workspace` context enabled accurate analysis |
| 🔄 **Iterate and Refine** | You reviewed and improved AI output before accepting |

#### 💭 David's Realization

*"I've been documenting architecture for years because it helps junior devs. I never realized it also helps the AI. Same investment, double the payoff."*

---

## 🔗 Compounding Value

**What we created in this module:**
- `docs/ARCHITECTURE.md` — Project context
- `.github/copilot-instructions.md` — Team patterns

**How this helps in future modules:**

| Module | How Today's Work Helps |
|--------|----------------------|
| Module 2 | Custom prompts can reference ARCHITECTURE.md |
| Module 3 | Custom agents know your patterns |
| Module 4 | Custom instructions build on repository instructions |
| Module 5 | All customizations compound, ship, and reflect |

Every minute invested here saves hours later.

---

## 🧠 Mindful Moment: The Transformation

**Before this module:**
- Copilot gave everyone different suggestions
- Code reviews caught inconsistencies
- Junior developers felt lost
- The codebase was heading toward entropy

**After this module:**
- Copilot gives everyone the SAME suggestions
- Code reviews focus on logic, not style
- Junior developers produce senior-quality code
- The codebase has gravity—it pulls code toward consistency

**The shift**: Documentation isn't a tax. It's a multiplier.

---


## 📚 Official Documentation

### Core Documentation
- **[VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions)** — Complete guide to .github/copilot-instructions.md
- **[GitHub Docs: Repository Instructions](https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions)** — Official repository custom instructions documentation

### Related Resources
- [VS Code: Copilot Chat Context](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-context) — Understanding `@workspace` and context operators
- [GitHub Docs: Prompt Engineering](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot) — Best practices for working with Copilot

---



## 🎭 Behind the Scenes: What Just Happened

For those who want to understand the deeper mechanics:

### Why `.github/copilot-instructions.md` Works

1. **Automatic inclusion**: Copilot reads this file and includes it in every prompt context
2. **Priority**: These instructions influence suggestions across the entire repository
3. **Consistency**: Every team member gets the same context, so everyone gets consistent suggestions

### Why Architecture Documentation Matters to AI

Large Language Models like Copilot:
- Excel at pattern matching
- Struggle with implicit context
- Perform better with explicit relationships

Your `ARCHITECTURE.md` turns implicit knowledge ("everyone knows the frontend calls the backend") into explicit context that AI can use.

### The Virtuous Cycle

```
Documentation → Better AI suggestions → 
Consistent code → Easier documentation → 
Better AI suggestions → ...
```

This is the flywheel that separates teams who struggle with AI tools from teams who thrive.
