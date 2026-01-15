# Rafael's Journey: Module 7 - Custom Agents

> **Your role**: Product Manager watching agents validate features against your requirements  
> **Time**: 30 minutes (focused) or 50 minutes (with team collaboration)  
> **Transformation**: From reviewing every PR to agents validating acceptance criteria automatically

---

## 📖 Your Story in This Module

Everything is coming together. Your domain terminology is in the repo (Module 1). Your product standards auto-apply (Module 4). Your feature requirements are captured in skills (Module 5).

But there's still a bottleneck: **you**.

Every PR that implements a feature needs product validation. Does it meet acceptance criteria? Does it include all the UI states you specified? Is the user experience what you envisioned?

You're the final checkpoint. And you're overwhelmed.

**Custom agents solve this.** The team creates agents that encode your product standards. They can validate PRs against acceptance criteria *before* you review. You shift from gatekeeper to strategic reviewer.

---

## 🎯 Your Exercises

### Exercise 7.1: Product Validation Agent ⭐ *You watch the payoff*

**Your role**: See how agents incorporate your product standards and validate features  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-71-creating-your-first-custom-agent--the-teams-code-companion)**

**Your "before" pain:**

A PR comes in for the Character Detail page. You need to validate:

1. Does it show all required character information?
2. Is there a loading state?
3. Is there an error state?
4. Is there an empty state (no data available)?
5. Is it accessible?
6. Does it match the mobile mockups?

You open the PR, review 400 lines of code, cross-reference against your spec document, and leave 12 comments. An hour later, you've validated one PR. You have six more waiting.

**Your "after" win:**

Sarah creates a custom agent that includes your product standards:

```markdown
# FanHub Development Agent

## Agent Identity
You are a FanHub full-stack developer with deep knowledge 
of our product standards and user experience requirements.

## Product Standards (from Rafael)
- Every feature must handle: loading, empty, error, success states
- All components must be accessible (WCAG AA)
- Mobile-first design at 320px, 768px, 1024px breakpoints

## Feature Validation
Before completing any feature implementation:
1. Verify all UI states are implemented
2. Check accessibility requirements
3. Confirm responsive design
4. Validate against acceptance criteria in spec
```

When the agent generates code, it **already includes** your requirements:

```
Agent: I'll implement the Character Detail page. Based on our product standards, 
I'll ensure:
- ✅ Loading state with skeleton screen
- ✅ Error state with retry button
- ✅ Empty state if character not found
- ✅ Accessible with ARIA labels
- ✅ Responsive at all breakpoints

Shall I proceed with the implementation?
```

Your PR review now takes 10 minutes instead of an hour. The basics are already covered.

**Metrics:**
- **PR review time (for product validation)**: From 60 min to 10 min
- **Product standard violations**: From 8-12 per PR to 0-2 per PR
- **Features requiring rework**: From 60% to 15%

---

### Exercise 7.2: Watching the Payoff 🤝 *The moment of validation*

**Your role**: Observe as the agent builds features correctly  
**Time**: 10 minutes

This is your "aha moment." The team asks the custom agent:

```
@fanhub-dev Build the Character Detail page. Show character info, 
related episodes, and allow adding to favorites.
```

**What you observe:**

The agent's response includes everything you've been asking for manually:

```
I'll implement the Character Detail page following FanHub standards.

## Implementation Plan

### Component Structure
- CharacterDetail (main component)
- CharacterInfo (bio, image, metadata)
- RelatedEpisodes (episode list with links)
- FavoriteButton (add/remove from favorites)

### UI States (per product standards)
- Loading: Skeleton screen matching layout
- Error: "Couldn't load character" with retry
- Empty: "Character not found" with search suggestion
- Success: Full character display

### Accessibility
- Semantic HTML (article, section, nav)
- ARIA labels for interactive elements
- Focus management for modal interactions

### Analytics (per product standards)
- Page view event
- "Add to favorites" click event
- Episode click events

Proceeding with implementation...
```

**Your reaction:**
> *"This is exactly what I've been asking for in every PR review. Loading states, error handling, accessibility, analytics. The agent didn't forget anything because it's in the agent definition. This is product standards at scale."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Product standards automation**: Your requirements build into agent behavior
- **Scalable validation**: Agents check criteria before you do
- **Strategic review**: Focus on product judgment, not checklist items

### How This Helps Your Real Work

**The old flow:**
```
Developer builds → PR submitted → Rafael validates → Comments → Rework → Re-review
```

**The new flow:**
```
Developer + Agent builds (with product standards) → PR submitted → Rafael spot-checks → Ship
```

The difference:
- **Less tactical review**: Agents handle the checklist
- **More strategic judgment**: You focus on "Is this the right feature?"
- **Faster shipping**: Standards built-in means fewer review cycles
- **Happier developers**: Less back-and-forth on basics

### Your Standards Are Now Scalable

You documented product standards once. Now:
- Repository instructions include domain context
- Custom instructions auto-apply to feature files
- Agent skills encode your feature requirements
- Custom agents validate against acceptance criteria

**This is your expertise, automated.**

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Being the bottleneck on every feature
- 😰 Repeating the same feedback in every PR
- 😰 Features shipping incomplete because you missed something
- 😰 Not scaling—one PM can only review so many PRs

**After this module (your achievements):**
- ✅ Agents validate against your standards automatically
- ✅ PR reviews focus on product judgment, not checklists
- ✅ Features include all requirements by default
- ✅ Your expertise scales to the entire team

**Key insight:**
> *"I was the human checklist for every feature. 'Did you add loading state? Did you add error handling? Is this accessible?' Now that's encoded in the agent. I'm not being replaced—I'm being amplified. The agent handles the 'did you follow the standards?' and I handle the 'is this the right product decision?'"*

---

## 🚀 Quick Start Guide

**If you're short on time (20 minutes):**
1. Watch Sarah create the custom agent with your standards
2. Observe the agent generating code with your requirements
3. Review a generated PR—notice what you *don't* have to comment on

**If you have full time (30 minutes):**
1. Exercise 7.1: Watch agent creation and observe product standards inclusion (15 min)
2. Exercise 7.2: Watch the payoff as agent builds feature correctly (10 min)
3. Reflect: What review tasks can you now delegate to agents? (5 min)

---

## 📊 Your Success Metrics

| Metric | Before Agents | After Agents |
|--------|--------------|--------------|
| **PR review time (product validation)** | 60 min/PR | 10 min/PR |
| **Product standard violations per PR** | 8-12 | 0-2 |
| **Features requiring rework** | 60% | 15% |
| **PMs needed for review coverage** | 1 PM / 5 developers | 1 PM / 15 developers |

---

## 🤝 Your Role in This Module

You're not the primary "doer" in this module—Sarah and Marcus build the agents. But you're critical because:

1. **Your standards are the input**: The agent definition includes your product requirements
2. **You validate the output**: Does the agent-generated code meet your vision?
3. **You refine the process**: When the agent misses something, you update the standards

This is collaborative automation. Technical team members build the tools. You define what "done" looks like.

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Sarah's path](sarah.md) to see agent creation
- [David's path](david.md) to see architecture validation

### Next Module
Your next appearance: **[Module 8: Copilot for Web](../../08-copilot-web/personas/rafael.md)**

**What's next for you**: This is YOUR module. Copilot for Web lets you create issues, validate PRs, and participate in development—all from the browser. No IDE required. This is where product managers become development partners.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [VS Code: Chat Modes and Custom Agents](https://code.visualstudio.com/docs/copilot/chat/chat-modes)
- [GitHub Copilot: Custom Agents](https://docs.github.com/en/copilot/customizing-copilot/creating-and-using-agents)

**Product-Specific Resources:**
- [Acceptance Criteria Best Practices](https://www.productplan.com/learn/acceptance-criteria/)
- [Product Standards Documentation](https://www.nngroup.com/articles/design-systems-101/)
