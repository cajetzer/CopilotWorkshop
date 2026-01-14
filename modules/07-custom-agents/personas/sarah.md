# Sarah's Journey: Module 7 - Custom Agents

> **Your role**: The skeptic who finally sees the payoff  
> **Time**: 20 minutes (focused) or 60 minutes (with full team collaboration)  
> **Transformation**: From "prove this wasn't wasted time" to "finally convinced"

---

## 📖 Your Story in This Module

This is the moment of truth.

You've invested significant time in setup: architecture documentation, coding standards, custom prompts, agent skills. Every module, you asked the same question: *"Is this worth it?"*

Module 1: "OK, documentation helps. But we could have just written a style guide."  
Module 2: "Plan mode is useful. But is all this planning overhead worth it?"  
Module 3: "Prompts are nice. But we're spending time on tooling, not features."  
Module 4: "Custom instructions seem helpful. But the setup time adds up."  
Module 5: "Skills are interesting. But we still haven't shipped anything."  
Module 6: "MCP servers give real data. But we're running out of day."

Now it's payoff time.

*"If this works,"* you announce, *"I'll admit all that setup was worth it."*

---

## 🎯 Your Exercises

### Exercise 7.1: The Payoff — Rich Feature Generation ⭐ *You validate the transformation*

**Your role**: Witness and validate that all the customization delivers real value  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-71-the-payoff--rich-feature-generation)**

**What you'll witness:**
- Agent mode leveraging everything the team built
- Cross-layer feature generated in minutes (not hours)
- Code that follows architecture, matches standards, includes tests
- The compound effect of all previous modules

**Your "before" (Module 0 flashback):**
Remember the Character Detail page attempt without customization?
- Copilot suggested wrong patterns
- File structure didn't match project conventions  
- Error handling was inconsistent
- Tests were generic and incomplete
- Required multiple iterations and manual fixes
- You were ready to dismiss Copilot entirely

**Time to usable feature**: 2-3 hours of frustration  
**Your verdict then**: *"This is what I was afraid of. Generic garbage that doesn't understand our domain."*

**Your "after" (Module 7 reality):**
Watch Marcus prompt the agent for an Episode Ratings feature:

```
Create a feature that allows users to rate episodes with stars (1-5).
Display average rating on EpisodeDetail page.
Store ratings in SQLite database.
Include API endpoint, React component, and tests.
```

The agent:
1. Creates database table following documented schema patterns
2. Adds API endpoint matching architecture layer separation
3. Builds React component following team coding standards
4. Generates tests using Elena's testing patterns
5. Handles edge cases (no ratings yet, rating updates, validation)

**Time to production-ready feature**: 15-20 minutes + review  
**Code quality**: Matches what you'd write manually  
**Review verdict**: Minimal changes needed

**Your transformation moment:**
> *"Remember Module 0? I was ready to dismiss Copilot entirely. Now look at this—cross-layer feature, proper patterns, tests included. Every module we did built toward this moment. The documentation wasn't overhead; it was investment. The planning wasn't waste; it was foundation. This is what I hoped AI could do—but only after we taught it our way of working."*

---

### Exercise 7.2: Architecture Reviewer Agent 🤝 *Observe David*

**Your role**: Validate that David's agent catches what you'd catch in review  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-72-create-a-custom-agent--davids-architecture-reviewer)**

**Your validation focus:**
- Does the agent check the patterns you review for?
- Does it catch layering violations?
- Does it flag inconsistent error handling?
- Would you trust it as a first-pass review?

**Your insight:**
> *"David's architecture reviewer is like having him available 24/7. It catches the structural issues before code reaches human review. That frees me to focus on business logic and edge cases—the parts that actually need senior judgment."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Investment thinking**: Seeing setup time as foundation, not overhead
- **Compound value recognition**: Understanding how customizations multiply
- **Agent trust calibration**: Knowing when to trust agent output vs. when to verify
- **Review efficiency**: Using agents for first-pass, humans for judgment

### How This Validates Your Investment

Every module you participated in contributed to this moment:

| Module | Your Investment | Payoff in Module 7 |
|--------|-----------------|-------------------|
| **Module 1** | Created coding standards | Agent follows your patterns |
| **Module 2** | Validated plan mode | Agent plans before implementing |
| **Module 4** | Created React standards | Components match your requirements |
| **Module 5** | Co-created pipeline skill | CI integration works smoothly |

The payoff isn't any single customization—it's all of them working together.

---

## 💭 Your Transformation Arc

**Module 0 (starting position):**
- 😰 *"This is generic garbage that doesn't understand our domain."*
- 😰 Ready to dismiss Copilot as hype
- 😰 Saw only the limitations, not the potential
- 😰 Skeptical that any customization would help

**Module 7 (transformation moment):**
- ✅ *"Every module we did built toward this moment."*
- ✅ Agent generates cross-layer features correctly
- ✅ Code matches team standards without manual intervention
- ✅ Finally convinced that the investment was worth it
- ✅ Skepticism transformed into informed advocacy

**The complete transformation:**

| Module | Your Stance | Your Quote |
|--------|-------------|------------|
| 0 | Dismissive | "Generic garbage" |
| 1 | Curious | "OK, documentation helps" |
| 2 | Interested | "Structured thinking works" |
| 4 | Engaged | "Custom instructions save time" |
| 5 | Invested | "Skills scale expertise" |
| 7 | **Convinced** | "Finally, this was worth it" |

**Key insight:**
> *"I've been skeptical every step of the way—that's my job. But skepticism should change when evidence changes. We went from generic autocomplete that ignored our patterns to an agent that understands our architecture, follows our standards, and generates production-ready code. That's not hype. That's measurable improvement."*

---

## 🚀 Quick Start Guide

**If you're short on time (20 minutes):**
1. Exercise 7.1: Watch the rich feature generation (15 min)
2. Validate output against your review checklist (5 min)

**If you have full time (45 minutes):**
1. Exercise 7.1: Rich Feature Generation (20 min)
2. Exercise 7.2: Architecture Reviewer Agent (15 min)
3. Compare Module 0 → Module 7 metrics (10 min)

---

## 📊 Your Success Metrics

| Metric | Module 0 (Uncustomized) | Module 7 (Full Customization) |
|--------|------------------------|------------------------------|
| **Cross-layer feature time** | 2-3 hours (frustrating) | 15-20 minutes (smooth) |
| **Pattern compliance** | ~30% (manual fixes needed) | ~95% (minimal fixes) |
| **Test coverage** | Generic, incomplete | Matches team standards |
| **Code review cycles** | 3-4 rounds | 1 round |
| **Your verdict** | "Generic garbage" | "Finally convinced" |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [David's path](david.md) to see architecture reviewer creation
- [Marcus's path](marcus.md) to see agent mode from infrastructure perspective

### Next Module
Your next appearance: **[Module 9: Copilot CLI](../../09-copilot-cli/personas/sarah.md)**

Preview: *"An AI that runs shell commands? What stops it from `rm -rf /`?"* You'll examine the security model and discover that the guardrails are actually well thought out.

### The Transformation Complete

This module is where your arc completes. The skeptic becomes the advocate—not through blind faith, but through evidence:

- **Module 0**: "Prove it"
- **Module 7**: "Proven"
- **Module 11**: "Let's scale it"

> *"I spent 15 years being skeptical of tools that overpromise. Copilot earned my trust the old-fashioned way—by delivering. The customization matters. The documentation matters. The planning matters. All of it came together in Module 7. I'm not just convinced; I'm convinced with receipts."*
