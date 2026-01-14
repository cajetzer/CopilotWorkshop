# David's Journey: Module 3 - Custom Prompts

> **Your role**: Architectural Guardian, Code Review Expert  
> **Time**: 20 minutes (focused on Exercise 3.2b)  
> **Transformation**: From "reviewing everything manually" to "distributing my expertise"

---

## 📖 Your Story in This Module

You review 15-20 pull requests per week. Each one takes 20-30 minutes because you're checking architectural layering, separation of concerns, error handling, security patterns, performance considerations.

The frustrating part? You give the same feedback over and over:
- *"This component imports directly from the database—violates separation of concerns"*
- *"Error handling exposes implementation details to the client"*
- *"No input validation before database query—SQL injection risk"*
- *"State management scattered instead of centralized"*

You've been the architectural bottleneck for 20 years. Every PR waits for you.

*"What if developers could run my review checklist themselves—before submitting?"*

That's what custom prompts enable. You encode your 20-year review checklist into `.github/prompts/architecture-review.prompt.md`—and developers can run `/architecture-review` on their code before opening a PR. Instant feedback. Instant learning.

---

## 🎯 Your Exercise

### Exercise 3.2b: Architectural Review Prompt ⭐ *You lead this one*

**Your role**: Create a reusable prompt that captures your architectural review expertise  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-32b-architectural-review-prompt--david-automates-20-years-of-feedback)**

**What you'll create:**
- `.github/prompts/architecture-review.prompt.md` with your review checklist
- References to `docs/ARCHITECTURE.md` for system context
- Structured output format (Strengths, Issues, Suggestions, Priority)

**Your "before" pain:**
You spend 5-7 hours per week reviewing PRs for the same architectural issues:
- Layering violations (UI calling database directly)
- Poor separation of concerns
- Security risks (no input validation)
- Performance problems (N+1 queries, unnecessary re-renders)
- Errors exposing implementation details

**Time per review**: 20-30 minutes  
**Frustration**: Extremely high—these are preventable  
**Developer learning**: Slow—feedback comes after they think they're done

**Your "after" win:**
You create the architectural review prompt once. Developers run `/architecture-review` before submitting code. The prompt catches:
- API calls in components (should be in service layer)
- Missing error boundaries
- No input validation
- Unoptimized re-renders

**Time saved per PR**: 15-20 minutes (issues caught before you review)  
**Developer confidence**: High—self-review before submission  
**Learning acceleration**: Dramatic—understand patterns in real-time  
**Your review capacity**: 3x more impactful reviews in same time

**Your transformation moment:**
> *"For 20 years, I've been the architectural bottleneck. Every PR waits for me to spot the same patterns. Now developers can run my checklist themselves—instantly. They learn faster, I review less, and code quality goes up. My expertise isn't being replaced—it's being distributed."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Expertise codification**: Turn tacit knowledge into explicit, reusable tools
- **Self-service architecture**: Enable developers to validate their own work
- **Scalable mentoring**: Teach patterns without manual review bottlenecks

### How This Helps Your Real Work
You've always known that good architecture requires consistency. The problem is enforcement at scale—you can't review every line of code, and architecture documents get ignored until code review.

Custom prompts solve this: Developers run your architectural checklist before submission. They catch issues themselves. They learn WHY patterns matter, not just that you want them. Your feedback becomes instant and consistent.

This is how senior architects scale their impact: Turn review expertise into self-service tools. Your 20 years of pattern recognition becomes instantly available to everyone.

### Artifacts You Create
- `.github/prompts/architecture-review.prompt.md` - Your review checklist, encoded

**How these compound**:
- Module 4: Custom instructions apply patterns automatically; your prompt validates adherence
- Module 7: Custom agent uses your prompt as part of automated PR review
- Module 10: Parallel workflows all maintain architectural consistency
- Module 11: Your review prompt becomes organizational standard

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 "I'm the bottleneck—every PR waits for my review"
- 😰 "Developers make the same mistakes repeatedly"
- 😰 "Architectural knowledge lives only in my head"
- 😰 "If AI reviews code, what's my role?"

**After this module (your achievements):**
- ✅ Created architectural review prompt encoding 20 years of expertise
- ✅ Enabled developers to self-review before submission
- ✅ Reduced review time per PR by 15-20 minutes
- ✅ Accelerated developer learning through instant feedback

**Key insight:**
> *"AI doesn't replace architectural review—it distributes it. My deep knowledge of layering, separation of concerns, and security patterns is MORE valuable now because I can encode it once and apply it everywhere. I'm not being automated away—I'm being amplified."*

---

## 🚀 Quick Start Guide

**If you're short on time (10 minutes):**
1. Read Exercise 3.2b introduction (2 min)
2. Create `.github/prompts/architecture-review.prompt.md` with core checklist (6 min)
3. Run on one file and verify it catches architectural issues (2 min)

**If you have full time (20 minutes):**
1. Review your typical PR feedback to identify patterns (5 min)
2. Create comprehensive `.github/prompts/architecture-review.prompt.md` (10 min)
3. Test on Episode List component and refine based on results (5 min)

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Review time per PR** | 20-30 min | 5-10 min |
| **PRs reviewed per week** | 15-20 | 40-50 (same time) |
| **Issues caught pre-submission** | 0% | 80% |
| **Developer learning speed** | Weeks (via review feedback) | Immediate (via prompt) |
| **Architectural violations** | 3-5 per PR | 0-1 per PR |
| **Time explaining same patterns** | 3-4 hours/week | 15 min/week |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) to see how Elena, Rafael, and Marcus create prompts
- [Elena's path](elena.md) to see testing prompt automation
- [Rafael's path](rafael.md) to see spec-to-implementation translation
- [Marcus's path](marcus.md) to see one-command git workflows

### Next Module
Your next appearance: **[Module 4: Custom Instructions](../../04-custom-instructions/personas/david.md)** — where you create API route instructions that automatically apply your REST conventions to every endpoint
