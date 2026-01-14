# Sarah's Journey: Module 3 - Custom Prompts

> **Your role**: Senior Developer validating that reusable prompts deliver measurable efficiency  
> **Time**: 30 minutes (focused) or 90 minutes (with full team collaboration)  
> **Transformation**: From "we keep writing the same prompts" to "our best thinking is now reusable"

---

## 📖 Your Story in This Module

Module 1 gave the team foundations: architecture docs and coding standards. Module 2 introduced structured thinking with plan mode. Both delivered measurable improvements—you tracked them.

Now you're noticing a pattern: everyone keeps writing the same kinds of prompts over and over.

*"Help me create a component that..."*  
*"Add a route that handles..."*  
*"Write tests for this function that..."*

The same structures, the same context-setting, the same boilerplate. The team learned to write good prompts—but now they're writing them repeatedly.

*"What if we could save these prompts and share them?"* you ask. *"Like functions, but for AI instructions. The Character Detail page took real planning—what if we captured that pattern so we never have to plan it again?"*

---

## 🎯 Your Exercises

### Exercise 3.4: Detail Page Pattern Prompt ⭐ *You validate this one*

**Your role**: Validate that the detail page prompt delivers consistent, reviewable code  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-34-detail-page-pattern--compound-value)**

**What you'll create:**
- Validation that the `create-detail-page` prompt produces review-ready code
- Evidence that pattern prompts reduce code review cycles
- Episode Detail page using the captured pattern

**Your "before" pain:**
The Character Detail page in Module 2 took real planning:
- Define requirements (15 min)
- Plan component structure (10 min)
- Identify edge cases (10 min)
- Write implementation prompts (10 min)
- Generate and refine code (15 min)

**Total time**: ~60 minutes for one detail page  
**Consistency risk**: Next developer might plan differently  
**Review burden**: Each page needs full architectural review

**Your "after" win:**
With the `create-detail-page` prompt capturing the pattern:
- Run `/create-detail-page` with entity parameters (2 min)
- Get component following established patterns (instant)
- Quick review confirms pattern compliance (3 min)

**Total time**: ~5 minutes per additional detail page  
**Consistency**: Same pattern every time  
**Review burden**: Pattern validated once, reused infinitely

**Time saved per detail page**: 55 minutes  
**Time saved for 6 entity pages**: 5.5 hours  
**Code review cycles reduced**: From full review to pattern confirmation

**Your validation moment:**
> *"The Episode Detail page follows the same patterns as Character Detail—exactly as documented. That consistency is what code review is all about. I reviewed the pattern once; now I trust it everywhere. 3 minutes instead of multiple review rounds."*

---

### Exercise 3.6: Team Integration 🤝 *Team collaboration*

**Your role**: Coordinate team prompt usage, track efficiency gains  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-36-team-integration--the-compound-effect)**

**Your coordination focus:**
- Each team member uses a different prompt
- Track time savings per prompt usage
- Document which prompts deliver highest ROI
- Identify patterns worth capturing as new prompts

**Your insight:**
> *"This is what I hoped AI could do—not replace us, but make us work together better. And now our best work is reusable. Elena's testing patterns, David's architecture checklist, Marcus's git workflow—captured once, used forever."*

---

### Supporting Exercises

#### Exercise 3.1: Test Suite Generator 🤝 *Learn from Elena*

**Your role**: Observer and validator  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-31-test-suite-generator--elena-captures-testing-patterns)**

**Your perspective**: Does Elena's test prompt generate tests that meet your code review standards? Are edge cases covered? Is test structure consistent?

**Your validation**: Use the generated test prompt on a component you wrote. Check if it catches the cases you'd manually review for.

#### Exercise 3.2: User Story → Implementation 🤝 *Learn from Rafael*

**Your role**: Observer and validator  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-32-user-story--implementation--rafael-bridges-product-and-code)**

**Your perspective**: Does Rafael's prompt produce implementation plans that align with your coding standards? Are the technical decisions sound?

**Your validation**: The spec-to-implementation gap caused a 2-week delay last quarter. If this prompt prevents that, it's worth the investment.

#### Exercise 3.3: Architecture Review Prompt 🤝 *Learn from David*

**Your role**: Observer and potential adopter  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-33-architecture-review--david-scales-his-expertise)**

**Your perspective**: David catches architecture issues you'd catch in code review. If his prompt can do a first-pass check, that reduces your review load.

**Your insight:**
> *"David's architecture prompt is like a pre-review. By the time code reaches me, the structural issues are already caught. I can focus on business logic instead of 'why is this in the wrong layer?'"*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Pattern recognition**: Identifying repetitive prompt structures worth capturing
- **Efficiency measurement**: Tracking time savings from reusable prompts
- **Quality validation**: Ensuring prompt outputs meet review standards
- **Team coordination**: Organizing prompt libraries for team benefit

### How This Helps Your Real Work

As a senior developer, you're already doing code review. Custom prompts enhance that:

1. **Consistency before review**: Prompts enforce patterns at generation time
2. **Reduced review cycles**: Code arrives following established patterns
3. **Focus on logic, not style**: Style issues caught by prompts, not you
4. **Scalable standards**: Your review checklist becomes a prompt others use

### Artifacts You Create
- Validation metrics for team prompts
- Pattern compliance checklists
- Prompt ROI tracking

---

## 💭 Your Transformation Arc

**Before this module (your observations):**
- 😰 Team writes same prompts repeatedly
- 😰 Each developer plans features slightly differently
- 😰 Code review catches inconsistencies that should be prevented
- 😰 Good patterns exist but aren't systematically reused

**After this module (your achievements):**
- ✅ Best prompts captured and shared across team
- ✅ Feature patterns (like detail pages) are consistent
- ✅ Code arrives at review following established patterns
- ✅ Review focuses on business logic, not structural issues
- ✅ Measurable time savings per feature

**Key insight:**
> *"We invested 20 minutes planning the Character Detail page. That planning produced a great pattern. Now that pattern is in a prompt—every future detail page takes 5 minutes and follows the same quality standard. That's not just efficiency; that's compounding returns on good thinking."*

---

## 🚀 Quick Start Guide

**If you're short on time (20 minutes):**
1. Exercise 3.4: Detail Page Pattern (20 min)
   - Use `/create-detail-page` for Episode Detail
   - Validate output against your review checklist
   - Track time savings

**If you have full time (50 minutes):**
1. Exercise 3.1: Review Elena's test generator (10 min)
2. Exercise 3.4: Detail Page Pattern (20 min)
3. Exercise 3.6: Team Integration (20 min)

**Want to go deeper?**
- Create prompt for your most common code review feedback
- Build prompt library with team ROI metrics
- Document anti-patterns as "don't do this" prompts

---

## 📊 Your Success Metrics

| Metric | Before Custom Prompts | After Custom Prompts |
|--------|----------------------|----------------------|
| **Time per detail page feature** | 60 minutes | 5 minutes |
| **Pattern consistency across features** | Variable (developer-dependent) | Uniform (prompt-enforced) |
| **Code review cycles per feature** | 2-3 rounds | 1 round (pattern confirmed) |
| **Time to review pattern-compliant code** | 30 minutes | 5 minutes |
| **ROI per prompt reuse** | — | 55 minutes saved |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Elena's path](elena.md) to see test pattern creation
- [David's path](david.md) to see architecture review prompt
- [Rafael's path](rafael.md) to see spec-to-implementation bridge
- [Marcus's path](marcus.md) to see git workflow automation

### Next Module
Your next appearance: **[Module 4: Custom Instructions](../../04-custom-instructions/personas/sarah.md)**

Preview: *"You've been reviewing React components for years, giving the same feedback over and over. What if you codified those React review standards in custom instructions—so Copilot generates compliant components from the start?"*

### The Compound Effect
Your work across modules builds on itself:

| Module | Your Contribution | Compound Value |
|--------|-------------------|----------------|
| **Module 1** | Coding standards | Copilot follows team patterns |
| **Module 2** | Plan mode validation | Structured thinking before code |
| **Module 3** | Pattern prompt validation | Best planning is reusable |
| **Module 4** | React standards | Component patterns automated |

Each layer amplifies the previous ones. Standards + Planning + Prompts + Instructions = consistent, reviewable code at scale.
