# Sarah's Journey: Module 10 - Agentic SDLC

> **Your role**: Safety-conscious senior ensuring agentic workflows have proper guardrails  
> **Time**: 25 minutes (focused) or 90 minutes (with full team collaboration)  
> **Transformation**: From "AI agents are too risky" to "checkpoints provide the safety net I need"

---

## 📖 Your Story in This Module

It's 4:00 PM on Monday. The team is building features in parallel—VS Code, GitHub.com, CLI tools, all working simultaneously. Everyone's moving fast.

You've been burned before by "move fast" culture. You've seen what happens when automation runs without guardrails: unexpected changes, rollback nightmares, debugging sessions that last until midnight.

*"Let AI make a bunch of changes, realize something's wrong, and have to manually undo everything? No thanks."*

Today, you'll discover checkpoints: automatic save points that let you review, accept, or roll back agent changes at any point. This isn't about slowing down—it's about moving fast with confidence.

---

## 🎯 Your Exercises

### Exercise 5.5: Checkpoints — Your Safety Net ⭐ *You lead this one*

**Your role**: Validate that checkpoints provide adequate safety for agentic workflows  
**Time**: 15 minutes  
**[View full exercise →](../EXERCISES.md#-exercise-55-checkpoints--your-safety-net)**

**What you'll create:**
- Understanding of checkpoint behavior and controls
- Confidence in using agent mode for real tasks
- Recovery patterns when agent work goes off track

**Your "before" pain:**
Without checkpoints, agent mode feels dangerous:
- Agent makes many changes across multiple files
- Something goes wrong partway through
- No way to partially accept good work
- Manual undo is tedious and error-prone
- Fear of agents prevents using them for real work

**Your risk assessment:**
- What if the agent misunderstands requirements mid-task?
- What if it makes correct changes in some files but wrong in others?
- What if I want to keep the first 3 steps but redo step 4?
- How do I even know what changed?

**Fear level**: High — *"I'd rather do it manually than risk an AI mess"*

**Your "after" win:**
With checkpoints:
- Review changes incrementally, not all-or-nothing
- See exactly what changed at each step
- Roll back to any previous state
- Accept partial work when agent goes off track
- Confidence to use agent mode for real, complex tasks

**Your risk mitigation:**
- Checkpoints created automatically after each significant action
- Can review diffs at any checkpoint
- Roll back preserves everything before that point
- Partial acceptance is a normal workflow, not an edge case

**Confidence level**: High — *"I can use agents for complex tasks with a safety net"*

**Your validation moment:**
> *"I was ready to dismiss agent mode as too risky. Checkpoints changed my mind. I can let the agent work on complex refactoring, review at each step, and roll back if something goes wrong. It's autonomy with a safety net. That's what I needed to trust it."*

---

### Exercise 5.6: Status Check & Sprint Review 🤝 *Team orchestration*

**Your role**: Call the status check and assess parallel progress  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-56-status-check--parallel-progress)**

It's 5:15 PM. You call for a status check. The team has been building in parallel across different tools—now you need to ensure everything comes together coherently.

**Your coordination role:**
- Verify all parallel work aligns architecturally
- Check that each track has proper test coverage
- Ensure nothing falls through the cracks
- Identify any blockers before the final push

**Your assessment criteria:**
- [ ] All features follow documented architecture
- [ ] Test coverage meets team standards
- [ ] No conflicting changes between parallel tracks
- [ ] Quality gates haven't been bypassed for speed

---

### Supporting Exercises

#### Exercise 5.3: GitHub.com Track 🤝 *Parallel workflow*

**Your role**: Validate that browser-based development maintains quality  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-53-githubcom-track--browser-based-development)**

**Your concern**: When developers work on GitHub.com, do they bypass the careful processes we've established? Do AI suggestions in the browser follow the same patterns as local development?

**Your discovery**: The customizations travel with the repository. Organization instructions, repo instructions—they apply everywhere, even in the browser.

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Risk assessment**: Evaluating when agentic workflows are appropriate
- **Safety mechanisms**: Understanding and using checkpoints effectively
- **Parallel coordination**: Orchestrating multiple development tracks
- **Quality gates**: Ensuring speed doesn't sacrifice standards

### How This Helps Your Real Work

As a senior developer, you're the voice of caution. But caution shouldn't mean paralysis:

**Old pattern** (avoid risk entirely):
- Don't use agent mode for real tasks
- Manual work is "safer" (but slower)
- Fall behind teams willing to experiment
- Miss productivity gains from new tools

**New pattern** (managed risk with checkpoints):
- Use agent mode confidently with safety net
- Review incrementally, catch issues early
- Accept good work, roll back problems
- Get productivity gains without recklessness

### Artifacts You Create
- Checkpoint usage patterns
- Recovery workflows for agent mode
- Quality checklist for parallel development

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 AI agents making uncontrolled changes
- 😰 No way to partially accept agent work
- 😰 Rollback nightmares from automation gone wrong
- 😰 "Move fast" culture bypassing quality gates

**After this module (your achievements):**
- ✅ Checkpoints provide granular control over agent changes
- ✅ Can review and accept work incrementally
- ✅ Roll back to any previous state with confidence
- ✅ Parallel development with quality maintained
- ✅ Speed AND safety—not either/or

**Key insight:**
> *"I used to think 'move fast' and 'don't break things' were incompatible. Checkpoints prove they're not. I can let agents work on complex tasks while maintaining full control. Review each step, accept what's good, roll back what's not. That's not reckless—that's efficient with guardrails."*

---

## 🚀 Quick Start Guide

**If you're short on time (15 minutes):**
1. Exercise 5.5: Checkpoints (15 min)
   - Start an agent task
   - Observe checkpoint creation
   - Practice reviewing and rolling back

**If you have full time (35 minutes):**
1. Exercise 5.5: Checkpoints (15 min)
2. Exercise 5.6: Status Check (10 min)
3. Review parallel track coordination (10 min)

**Want to go deeper?**
- Create checkpoint usage guidelines for your team
- Document recovery patterns for common agent mode issues
- Establish quality gates for parallel development

---

## 📊 Your Success Metrics

| Metric | Without Checkpoints | With Checkpoints |
|--------|--------------------|--------------------|
| **Agent mode comfort level** | Low (too risky) | High (safety net exists) |
| **Recovery from agent mistakes** | Manual undo (painful) | Roll back (instant) |
| **Partial work acceptance** | All-or-nothing | Granular control |
| **Complex task delegation** | Avoided | Confidently delegated |
| **Time lost to agent errors** | Hours (manual recovery) | Minutes (checkpoint restore) |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full parallel development story
- [David's path](david.md) to see architecture validation perspective
- [Marcus's path](marcus.md) to see infrastructure track
- [Rafael's path](rafael.md) to see product prioritization

### Next Module
Your next appearance: **[Module 11: Enterprise Patterns](../../11-enterprise-patterns/personas/sarah.md)**

Preview: *"We built something that works. Now we need to make it organizational standard."* You'll scale team success to enterprise capability—organization instructions, metrics dashboards, and onboarding kits.

### The Day's Arc
Your journey through Monday:

| Time | Your Role | Your Transformation |
|------|-----------|---------------------|
| **9:00 AM** | Skeptical observer | "Prove this isn't hype" |
| **10:30 AM** | Standards creator | "Documentation is leverage" |
| **2:00 PM** | Plan mode champion | "Structured thinking works" |
| **4:00 PM** | Safety validator | "Checkpoints are the safety net" |
| **5:15 PM** | Sprint coordinator | "We're actually going to ship" |
| **6:00 PM** | Convinced advocate | "This was worth it" |

**By end of day:**
> *"I started skeptical—I've seen too many tools overpromise. But we shipped a production-ready fan site in one day using AI assistance. Not by throwing caution to the wind, but by building guardrails: documentation, planning, checkpoints. That's how you move fast without breaking things."*
