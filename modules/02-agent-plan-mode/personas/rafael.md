# Rafael's Journey: Module 2 - Agent Plan Mode

> **Your role**: Product Manager using plan mode for feasibility and scope discovery  
> **Time**: 35 minutes (focused) or 50 minutes (with team collaboration)  
> **Transformation**: From guessing scope to AI-assisted requirements discovery

---

## 📖 Your Story in This Module

You're about to make a promise to stakeholders. "Episode Detail pages? Sure, should be similar to Character Detail—probably one sprint."

But you've been burned before. What seems simple often isn't. Hidden complexity surfaces during development. Edge cases nobody mentioned. Database changes nobody anticipated. Two sprints become four.

**The problem isn't bad estimation. The problem is that you commit before fully understanding scope.**

Today, you'll use plan mode to explore requirements BEFORE promising anything. AI becomes your scope discovery partner, surfacing edge cases and complexity before you write the spec.

---

## 🎯 Your Exercises

### Exercise 2.1: Scope Discovery with Plan Mode ⭐ *You lead this one*

**Your role**: Use plan mode to discover hidden scope before committing  
**Time**: 25 minutes  
**[View Exercise 2.1 →](../EXERCISES.md#exercise-21-plan-before-you-code--the-character-detail-challenge-final-form)**

**What you'll create:**
- Scope discovery document with hidden requirements
- Edge case inventory
- Technical complexity assessment
- Realistic timeline based on discovered scope

**Your "before" pain:**

Stakeholder meeting, 10 AM:

*"Episode Detail should be like Character Detail, right? Same sprint?"*

You: *"Probably, yes. They're similar."*

Development starts. Week 2:
- Developer: *"Episodes have transcripts. Where do we store those?"*
- Developer: *"Multiple characters per episode. That's a many-to-many join."*
- Developer: *"Air dates need timezone handling."*
- Developer: *"Streaming links require third-party API integration."*

Sprint ends. Feature is 40% done. Stakeholders are frustrated.

**Your "after" win:**

Before the stakeholder meeting, you run a plan mode session:

```
@agent Use plan mode to analyze the scope of an "Episode Detail" feature.

Compare it to Character Detail and identify:
1. What's similar (can reuse patterns)
2. What's different (new complexity)
3. What edge cases exist
4. What database changes are needed
5. What integrations are required
6. Realistic effort estimate

Be comprehensive—I need to give stakeholders an accurate timeline.
```

Plan mode surfaces:

```markdown
## Episode Detail vs Character Detail Analysis

### Similar (Can Reuse)
- Basic page layout (name, image, description)
- Related content sections
- Favorites functionality

### New Complexity (Adds Scope)
1. **Many-to-many relationships**
   - Episodes have multiple characters
   - Characters appear in multiple episodes
   - Requires junction table queries

2. **Transcripts**
   - Large text storage (10KB+ per episode)
   - Search within transcripts
   - Highlighting quoted sections

3. **Air dates**
   - Timezone handling
   - "Originally aired" vs "streaming available"
   - Countdown for upcoming episodes

4. **Streaming integrations**
   - Third-party API (Netflix, Hulu, HBO)
   - API rate limits
   - Link validation

### Edge Cases
- Episodes with no characters (documentary style)
- Multi-part episodes (1a, 1b)
- Special episodes (crossovers)
- Unreleased episodes with partial data

### Effort Estimate
- Character Detail: 1 sprint (10 story points)
- Episode Detail: 2.5 sprints (25 story points)
  - Core page: 1 sprint
  - Transcripts + search: 0.5 sprint
  - Streaming integration: 1 sprint
```

Now at the stakeholder meeting:

*"Episode Detail is more complex than Character Detail. Here's why..."*

**Metrics:**
- **Scope surprises mid-sprint**: From 5-6 to 0-1
- **Estimate accuracy**: From 50% to 85%
- **Stakeholder trust in timelines**: Significantly improved
- **Rework due to missed scope**: From 30% to 5%

**Your transformation moment:**
> *"I used to commit to timelines and then scramble when complexity emerged. Now I discover the complexity FIRST. Plan mode is like having a technical advisor before I make any promises."*

---

### Exercise 2.2: Requirements Clarification Through AI 🤝 *Team collaboration*

**Your role**: Use plan mode to identify ambiguous requirements  
**Partners**: David (technical review), developers  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-22-iterate-on-configuration--david-designs-an-architecture-assistant)**

**What you contribute:**

Before writing specs, you clarify requirements through plan mode:

```
@agent I have a vague feature request: "Let users compare characters side by side."

Use plan mode to help me clarify:
1. What exactly should be comparable? (Stats? Quotes? Episodes?)
2. How many characters can be compared at once?
3. Should comparisons be savable/shareable?
4. What's the mobile experience?
5. What edge cases should I consider?

Ask me questions if the requirement is ambiguous.
```

Plan mode response:

```markdown
## Clarification Questions

Before I can scope this feature, I need answers:

1. **Comparison scope**: 
   - Just visual comparison (side-by-side bios)?
   - Statistical comparison (episode count, quote count)?
   - Relationship mapping (how are they connected)?

2. **Quantity limits**:
   - Compare 2 characters? (simple side-by-side)
   - Compare 3+? (requires different UI)
   - Compare across shows? (different data shapes)

3. **Persistence**:
   - Temporary comparison (gone on page close)?
   - Savable comparisons (like favorites)?
   - Shareable via URL?

4. **Mobile**:
   - Side-by-side on mobile is cramped
   - Swipe between characters?
   - Comparison summary view?

## My Recommendation

Based on typical patterns, I suggest starting with:
- 2-character comparison only
- Same-show characters (consistent data)
- Temporary (no persistence MVP)
- Desktop-first, mobile later

This scopes it to ~3-5 story points. Want me to detail edge cases?
```

**Why this matters:**

You go to stakeholders with clarified requirements, not vague ideas. Questions are asked BEFORE development, not during.

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Scope discovery**: Finding hidden complexity before commitment
- **Requirement clarification**: Turning vague ideas into clear specs
- **Estimation improvement**: Data-driven timelines, not guesses
- **Stakeholder communication**: Managing expectations with evidence

### How This Helps Your Real Work

**Traditional product workflow:**
```
Vague idea → Quick estimate → Commit → Discover complexity → Scramble → Miss deadline
```

**Plan mode workflow:**
```
Vague idea → Plan mode analysis → Discover complexity → Informed estimate → Commit → Deliver
```

The difference:
- **No surprises**: Complexity surfaces before commitment
- **Credibility**: Your estimates are based on analysis
- **Trust**: Stakeholders learn to rely on your timelines
- **Speed**: Actually faster because no rework

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Committing to timelines I can't keep
- 😰 Hidden complexity surprising us mid-sprint
- 😰 Stakeholders losing trust in estimates
- 😰 Requirements that sound simple but aren't

**After this module (your achievements):**
- ✅ Scope discovered before commitment
- ✅ Complexity surfaced in planning, not development
- ✅ Estimates based on analysis, not intuition
- ✅ Stakeholders trust my timelines

**Key insight:**
> *"Plan mode doesn't just help developers plan code. It helps product managers plan scope. I used to guess and hope. Now I analyze and know."*

---

## 🚀 Quick Start Guide

**If you're short on time (25 minutes):**
1. Jump to Exercise 2.1
2. Run plan mode on a feature you're about to scope
3. Document the complexity discovered
4. Use it in your next stakeholder conversation

**If you have full time (35 minutes):**
1. Exercise 2.1: Scope discovery (25 min)
2. Exercise 2.2: Requirements clarification (10 min)
3. Create a template for future scope analysis

---

## 📊 Your Success Metrics

| Metric | Before Plan Mode | After Plan Mode |
|--------|-----------------|-----------------|
| **Scope surprises mid-sprint** | 5-6 per feature | 0-1 per feature |
| **Estimate accuracy** | ~50% | ~85% |
| **Rework from missed scope** | 30% of effort | 5% of effort |
| **Stakeholder trust score** | "Timelines slip" | "Timelines reliable" |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [David's path](david.md) to see architecture planning
- [Sarah's path](sarah.md) to see implementation planning

### Next Module
Your next appearance: **[Module 3: Custom Prompts](../../03-custom-prompts/personas/rafael.md)**

**What's next for you**: You'll create reusable prompts that transform user stories into technical plans automatically. The scope discovery from Module 2 becomes a repeatable template in Module 3.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [VS Code: Agent Mode](https://code.visualstudio.com/docs/copilot/copilot-chat#_agent-mode)
- [GitHub Docs: Copilot Chat](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-chat-in-your-ide)

**Product-Specific Resources:**
- [Agile Estimation Best Practices](https://www.atlassian.com/agile/estimation)
- [Scope Discovery Techniques](https://www.productplan.com/glossary/scope-creep/)
