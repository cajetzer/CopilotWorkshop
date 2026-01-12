# Module 2: Agent Plan Mode

## ⏰ Monday 10:30 AM — Planning Before Implementing

> *"Before we start generating code, let's plan what we're doing. The best AI results come from the clearest thinking."*  
> — Sarah, introducing the team to structured AI collaboration

---

## 📖 The Story So Far

The FanHub team has documented their architecture and established coding standards. The Character Detail Challenge that frustrated them in Module 00 is now much easier—consistent patterns, correct API usage, matching styles.

But Sarah notices something: even with better context, they still jump straight to implementation. They ask Copilot to build, get code, realize they missed something, iterate, and eventually get there. Better than before, but still reactive.

*"We've learned to give Copilot context about our codebase,"* Sarah says, *"but we haven't learned to use AI to help us **think** about the problems first."*

**This module's mission**: Master GitHub Copilot's agent plan mode to create structured approaches before jumping into implementation. You'll revisit the Character Detail Challenge one final time and see how planning transforms the experience from "good enough" to "first-try success."

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Understand the difference between agent plan mode and implementation mode
- Use plan mode to ask clarifying questions before implementing
- Save planning results to files for team collaboration
- Apply iterative planning workflows to both code and Copilot configuration
- Experience how structured thinking improves AI output quality

**Time**: ~90 minutes  
**Personas**: Sarah (Skeptical Senior), David (Seasoned Architect), Marcus (DevOps Developer)

---

## 🧠 Mindful Moment: The Planning Paradox

Traditional thinking: *"Planning slows us down—let's just start coding."*

AI-native thinking: *"Planning speeds us up—AI helps us think, not just type."*

This isn't about creating project management overhead. It's about leveraging AI for the hardest part of development: **figuring out what to build and how to build it.**

---

## 📚 Key Concepts

### Agent Plan Mode vs Implementation Mode

GitHub Copilot operates in two distinct modes when you use the `@agent` prefix:

**Plan Mode**: Focus on analysis, strategy, and structured thinking
- Asks clarifying questions
- Identifies potential approaches
- Creates detailed action plans
- Highlights considerations and tradeoffs
- Outputs structured planning documents

**Implementation Mode**: Focus on execution and code generation
- Generates specific code solutions
- Makes concrete changes to files
- Provides ready-to-use implementations
- Assumes planning decisions have been made

### When to Use Plan Mode

Plan mode excels at:
- **Problem exploration** — Understanding requirements before implementing
- **Approach comparison** — Evaluating multiple solutions
- **Configuration planning** — Designing Copilot customizations
- **Architecture decisions** — Thinking through system design
- **Workflow optimization** — Planning development processes

### The Planning-to-Implementation Flow

The most effective AI collaboration follows this pattern:
1. **Plan**: Use `@agent` to think through the problem
2. **Save**: Store the plan in a file for reference
3. **Implement**: Switch to implementation mode with clear direction
4. **Iterate**: Return to planning when you need to adjust course

---

## 🔨 Exercises

### Exercise 2.1: Plan Before You Code — "The Character Detail Challenge: Final Form"

> 🧵 **The Golden Thread Continues**: You've attempted this challenge in Module 00 (chaos), Module 01a (better structure), and Module 01b (consistent patterns). Now see what happens when you **plan first**.

#### 📖 The Story

**Sarah** (Skeptical Senior, 15 years) has been tracking the team's progress on the Character Detail Challenge. She's noticed something: even with architecture docs and coding standards, they still jump straight to implementation—and sometimes miss important considerations.

*"We're treating AI like a magic code machine,"* Sarah observes. *"But the best results happen when we use it to think first, then implement."*

Today, Sarah will demonstrate how plan mode completes the transformation—turning the Character Detail Challenge from a struggle into a systematic success.

#### ❌ The "Before" — What We've Been Doing

Even with documentation in place, you've been asking for implementation directly:

```
@workspace Add a character detail page that shows:
- Character name
- Photo
- Biography
- List of episodes they appear in
```

This approach jumps straight to code. But consider:
- What happens if a character has no photo? No biography?
- How should this page integrate with navigation?
- What about loading states? Error states?
- Should users be able to edit character info? Mark as favorite?
- How does this connect to the episode list we might add later?

**Without planning, these questions surface AFTER you've written the code.**

#### 🎯 Objective

Use agent plan mode to structure your thinking before implementing the Character Detail page, creating a comprehensive plan that leads to first-try success.

#### 📋 Steps

1. **Review your previous attempts**
   
   Open `docs/character-detail-challenge.md` and review your metrics from:
   - Module 00: The Struggle (no context)
   - Module 01a: After ARCHITECTURE.md
   - Module 01b: After copilot-instructions.md
   
   Notice that even with docs and standards, you may have needed multiple iterations.

2. **Switch to plan mode for structured thinking**
   
   Start a new chat conversation and use the `@agent` prefix:
   
   ```
   @agent I need to add a character detail page to the FanHub app.
   Before we implement anything, help me create a comprehensive plan.
   
   Please analyze the current codebase and create a structured plan that addresses:
   
   1. Data requirements - what character information do we have? What's missing?
   2. API needs - do we have the right endpoints? What might we need to add?
   3. Component structure - how should this page be organized?
   4. Integration points - how does this connect to navigation, other pages?
   5. Edge cases - no photo, long biography, character in zero episodes?
   6. User experience - loading states, error handling, mobile responsiveness?
   7. Future considerations - favorites, editing, social sharing?
   
   Ask me clarifying questions if you need more context about our specific requirements.
   ```

3. **Engage with the clarifying questions**
   
   Plan mode will likely ask you questions like:
   - Is character data editable or read-only?
   - Should we show related characters (same show)?
   - Do we need breadcrumb navigation back to the character list?
   - Should there be a "favorite" or "bookmark" feature?
   - How should we handle characters with extensive episode appearances?
   
   **This is where your product thinking matters most.** Answer thoughtfully—these decisions shape the implementation.

4. **Generate the structured plan**
   
   Once you've clarified the requirements, ask for the complete plan:
   
   ```
   Based on our discussion, create a detailed implementation plan with:
   - Data model validation (what exists vs. what we need)
   - API endpoint specifications (existing + any new ones)
   - Component hierarchy and props
   - State management approach
   - Testing strategy
   - Implementation order (what to build first)
   
   Format this as a document I can save and share with the team.
   ```

5. **Save the plan for team collaboration**
   
   Create a new file to store your planning results:
   
   ```
   Create fanhub/docs/FEATURE-PLAN-character-detail.md with the complete plan
   ```
   
   This becomes your implementation guide and helps other team members understand your approach.

6. **Now implement with the plan as context**
   
   With your plan saved, ask for implementation:
   
   ```
   @workspace Based on the plan in docs/FEATURE-PLAN-character-detail.md, 
   implement the CharacterDetail page component. Start with the core layout 
   and data fetching as specified in the plan.
   ```

7. **Update your tracking document**
   
   Open `docs/character-detail-challenge.md` and complete the final section:
   
   | Metric | Mod 00 | Mod 01a | Mod 01b | **Mod 02** |
   |--------|--------|---------|---------|------------|
   | Time to working code | ___ | ___ | ___ | ___ |
   | Prompt attempts | ___ | ___ | ___ | ___ |
   | Edge cases identified | ___ | ___ | ___ | ___ |
   | Confidence (1-10) | ___ | ___ | ___ | ___ |

#### ✅ Success Criteria

- [ ] Used `@agent` prefix to access plan mode
- [ ] Engaged with clarifying questions about the character detail page
- [ ] Generated a comprehensive implementation plan
- [ ] Saved the plan to `fanhub/docs/FEATURE-PLAN-character-detail.md`
- [ ] Implemented using the plan as context
- [ ] Updated `docs/character-detail-challenge.md` with final metrics
- [ ] Can articulate the difference between planning and implementing with AI

#### ✨ The "After" — The Complete Transformation

**Compare your journey:**

| Attempt | Context | Approach | Typical Result |
|---------|---------|----------|----------------|
| Module 00 | None | Direct ask | Chaos, 3+ attempts |
| Module 01a | ARCHITECTURE.md | Direct ask | Better structure, still iterations |
| Module 01b | + Instructions | Direct ask | Consistent patterns, fewer iterations |
| **Module 02** | + Plan Mode | **Plan then implement** | **First-try success, edge cases covered** |

With structured planning, you now have:
- **Clear requirements** that you've thought through with AI assistance
- **Implementation roadmap** that considers architecture and edge cases
- **Team documentation** that others can review and build upon
- **Confidence** in your approach before writing any code
- **Measurable improvement** across all your attempts

**Time invested**: 20 minutes of planning  
**Value unlocked**: First-try implementation without backtracking

#### 📚 Official Docs

- [GitHub Copilot: Agent Mode](https://docs.github.com/en/copilot/using-github-copilot/copilot-chat/copilot-chat-in-github)
- [VS Code: Copilot Chat Modes](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-modes)

#### 💭 Sarah's Realization

*"I've been skeptical of AI tools because they felt chaotic. But plan mode isn't chaotic—it's structured thinking. This is how AI actually helps experienced developers: by amplifying our planning, not replacing our judgment."*

#### 🎭 The Team Celebrates

**Sarah**: *"Look at the progression. Same prompt, dramatically different results. THIS is what I needed to see."*

**David**: *"Planning isn't overhead—it's where my 20 years of experience matters most. The AI handles syntax; I handle strategy."*

**Priya**: *"I never would have thought about those edge cases on my own. Plan mode taught me to think like a senior developer!"*

**Marcus**: *"This is like code review BEFORE you write the code. Catch the issues when they're cheap to fix."*

---

### Exercise 2.2: Iterate on Configuration — "David Designs Agent Personas"

**Time invested**: 20 minutes of planning  
**Value unlocked**: Hours of focused implementation without backtracking

#### 📚 Official Docs

- [GitHub Copilot: Agent Mode](https://docs.github.com/en/copilot/using-github-copilot/copilot-chat/copilot-chat-in-github)
- [VS Code: Copilot Chat Modes](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-modes)

#### 💭 Sarah's Realization

*"I've been skeptical of AI tools because they felt chaotic. But plan mode isn't chaotic—it's structured thinking. This is how AI actually helps experienced developers: by amplifying our planning, not replacing our judgment."*

---

### Exercise 2.2: Iterate on Configuration — "David Designs Agent Personas"

#### 📖 The Story

**David** (Seasoned Architect, 20 years) has a confession: He's been worried that AI tools might make his architectural expertise less valuable. But after seeing plan mode in action, he's realized something important.

*"AI doesn't replace architectural thinking—it amplifies it,"* David reflects. *"But only if I use it as a thinking partner, not just a code generator."*

Today, David will use plan mode to design a custom Copilot agent that embodies his architectural expertise—showing that the deepest knowledge makes AI tools more powerful, not less relevant.

#### ❌ The "Before" — What Frustration Looks Like

When David asks Copilot about architecture decisions, he often gets generic advice:

*"Use microservices for scalability"*  
*"Consider caching for performance"*  
*"Add error handling"*

These aren't wrong, but they're not contextual to his specific project, constraints, or architectural philosophy. The AI gives standard answers instead of reasoning through his particular situation.

#### 🎯 Objective

Use plan mode to iteratively design a custom Copilot agent that reflects David's architectural expertise and project context.

#### 📋 Steps

1. **Experience the "before" state**
   
   Ask Copilot a generic architecture question:
   
   ```
   How should I handle error cases in the FanHub API?
   ```
   
   Notice the generic response—it might be technically correct but lacks the context of your specific requirements, constraints, and architectural philosophy.

2. **Use plan mode to design a custom agent**
   
   Switch to agent plan mode to design a better approach:
   
   ```
   @agent I want to create a custom Copilot agent that provides architecture 
   guidance specifically for our FanHub project. Help me plan this agent's 
   design.
   
   The agent should:
   - Understand our tech stack (React, Node.js, PostgreSQL)
   - Know our constraints (small team, need to ship fast, prioritize maintainability)
   - Follow our architectural principles (simple over clever, consistency over optimization)
   - Consider our specific context (TV show fan site, read-heavy workload, user-generated content)
   
   What questions should I answer to create an effective custom agent prompt?
   ```

3. **Engage with the planning conversation**
   
   Plan mode will ask you questions to help design the agent:
   - What architectural decisions does your team face most often?
   - What are your preferred patterns for this tech stack?
   - What anti-patterns do you want the agent to warn against?
   - How technical should the guidance be?
   
   This is where David's 20 years of experience becomes the input for better AI output.

4. **Iteratively refine the agent design**
   
   Based on the planning conversation, ask for a draft agent prompt:
   
   ```
   Create a draft custom agent prompt that incorporates our discussion. 
   The agent should be named "David-Architecture-Assistant" and provide 
   context-aware architectural guidance for the FanHub project.
   ```
   
   Review the draft and iterate:
   
   ```
   The agent prompt is too generic. Make it more specific to our constraints:
   - We have a 3-person team, so solutions need to be maintainable by small teams
   - We're prioritizing shipping over perfect architecture
   - We want pragmatic advice, not theoretical best practices
   ```

5. **Test and refine the agent concept**
   
   Plan mode can help you think through how this agent would work:
   
   ```
   How would this custom agent handle the original question: 
   "How should I handle error cases in the FanHub API?"
   
   Show me how the response would be different with our custom context.
   ```

6. **Save your agent design process**
   
   Document your planning work:
   
   ```
   Create fanhub/docs/AGENT-DESIGN-architecture-assistant.md documenting:
   - The planning questions we worked through
   - The custom agent prompt we developed
   - Examples of how responses would improve
   - Notes for future agent iterations
   ```

#### ✅ Success Criteria

- [ ] Used plan mode to think through agent design systematically
- [ ] Identified specific architectural context and constraints  
- [ ] Iteratively refined the agent concept based on planning feedback
- [ ] Documented the agent design process for future reference
- [ ] Can explain how expertise makes AI tools more powerful

#### ✨ The "After" — The Improved Experience

Through structured planning, David discovered:
- **AI amplifies expertise** rather than replacing it
- **Custom agents** can embody specific knowledge and context
- **Planning mode** excels at design work, not just implementation
- **Documentation** of the design process helps future iterations

**Key insight**: The deeper your expertise, the better your AI customizations become.

#### 📚 Official Docs

- [GitHub Docs: Using GitHub Copilot Chat](https://docs.github.com/en/copilot/using-github-copilot/asking-github-copilot-questions-in-your-ide)
- [VS Code: Copilot Customization](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [GitHub Docs: About customizing Copilot](https://docs.github.com/en/copilot/customizing-copilot/about-customizing-github-copilot)

#### 💭 David's Transformation

*"I was worried AI would make my architectural knowledge obsolete. But I realize now—my 20 years of experience is what makes me able to design AI tools that actually understand architecture. The expertise isn't obsolete, it's the competitive advantage."*

---

### Exercise 2.3: Create a Reusable Planning Template — "Marcus Systematizes Success"

#### 📖 The Story

**Marcus** (DevOps Developer, 5 years) notices the team keeps using plan mode in similar ways. His DevOps instinct kicks in: *"If we're doing the same thing repeatedly, let's make it a template."*

#### ❌ The "Before" — Ad-Hoc Planning

Each time someone uses plan mode, they start from scratch—different questions, different formats, inconsistent results.

#### 🎯 Objective

Create ONE reusable planning template the team can use for new features.

#### 📋 Steps

1. **Ask plan mode to create a feature planning template**
   
   ```
   @agent Create a simple planning template for new features. 
   
   The template should be a checklist of questions to ask before implementing:
   - What data does this feature need?
   - What UI components are involved?
   - What edge cases should we handle?
   - How does it connect to existing features?
   
   Keep it to one page—practical, not bureaucratic.
   ```

2. **Save the template**
   
   ```
   Save this as fanhub/docs/FEATURE-PLANNING-TEMPLATE.md
   ```

3. **Test it with a real feature**
   
   Apply your new template to plan "user ratings for episodes":
   
   ```
   @agent Using our FEATURE-PLANNING-TEMPLATE.md, help me plan an 
   "episode ratings" feature where users can rate episodes 1-5 stars.
   ```

4. **Refine if needed**
   
   Did the template help? Missing anything? Update it based on what you learned.

#### ✅ Success Criteria

- [ ] Created `fanhub/docs/FEATURE-PLANNING-TEMPLATE.md`
- [ ] Template fits on one page
- [ ] Tested template with episode ratings feature
- [ ] Template produces useful, actionable plans

#### ✨ The "After" — Systematic Planning

Instead of reinventing planning each time, the team has a **starting point**. Junior developers know what questions to ask. Senior developers save time on routine planning.

**Time to create template**: ~10 minutes  
**Time saved per feature**: ~15 minutes of "what should I ask?"

#### 📚 Official Docs

- [GitHub Docs: Best practices for prompting GitHub Copilot Chat](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)
- [VS Code: Copilot Chat](https://code.visualstudio.com/docs/copilot/copilot-chat)
- [GitHub Docs: Getting started with Copilot Chat](https://docs.github.com/en/copilot/github-copilot-chat/copilot-chat-in-ides/using-github-copilot-chat-in-your-ide)

#### 💭 Marcus's Insight

*"DevOps is about making good practices repeatable. Same applies here—one template, consistent results."*

---

### Exercise 2.4: Debug Investigation — "Sarah Investigates Before Fixing"

#### 📖 The Story

**Sarah** (Skeptical Senior, 15 years) gets a bug report: *"The Episodes page shows wrong episodes sometimes. I click Season 2, but I see Season 1 episodes. Refreshing fixes it."*

Sarah's instinct is to dive into the code and start changing things. But she remembers: **plan mode helps you think before you act.**

*"If I understand the bug first, I'll fix it once instead of creating three new bugs."*

#### ❌ The "Before" — The Debugging Anti-Pattern

Without planning, debugging often looks like:
1. Read the bug report, make assumptions
2. Jump to the code, start changing things
3. "Fix" one thing, break another
4. Spend 2 hours on a 15-minute bug

#### 🎯 Objective

Use plan mode to systematically investigate the bug before writing any fix.

#### 📋 Steps

1. **Ask plan mode to help investigate**
   
   ```
   @agent Users report the Episodes page sometimes shows wrong data—they 
   click Season 2 but see Season 1 episodes. It's intermittent and 
   refreshing fixes it.
   
   Before I change any code, help me investigate:
   1. What could cause intermittent, stale data issues?
   2. What should I look for in the Episodes.js component?
   3. What's my hypothesis-driven investigation plan?
   ```

2. **Follow the investigation plan**
   
   Plan mode will likely point you toward:
   - Caching issues (is there a cache that's not invalidated?)
   - Race conditions (is data loading before filters apply?)
   - State management (is state persisting when it shouldn't?)
   
   Open [fanhub/frontend/src/pages/Episodes.js](../../fanhub/frontend/src/pages/Episodes.js) and look for what plan mode identified.

3. **Document what you find**
   
   ```
   @agent I found the issue in Episodes.js. There's a module-level cache 
   (episodeCache) that doesn't account for which season was requested.
   
   Create a brief bug analysis document that explains:
   - Root cause
   - Why it's intermittent
   - Recommended fix approach
   
   Save as fanhub/docs/BUG-ANALYSIS-episode-cache.md
   ```

4. **Now fix it with confidence**
   
   With your analysis complete, the fix is clear. You can either:
   - Remove the flawed cache entirely (simplest)
   - Fix the cache to track season IDs (more complex)
   
   **Note**: Don't actually implement the fix yet—the goal is the investigation process. The fix is left as an optional challenge.

#### ✅ Success Criteria

- [ ] Used plan mode to create an investigation strategy
- [ ] Identified the caching bug in `Episodes.js`
- [ ] Documented the root cause and fix approach
- [ ] Understood the bug **before** attempting to fix it

#### ✨ The "After" — Systematic Debugging

Instead of 2 hours of trial-and-error, Sarah spent:
- **5 minutes** creating an investigation plan
- **5 minutes** following the plan to find the bug  
- **5 minutes** documenting the root cause

**Total**: 15 minutes to fully understand an intermittent bug

**The fix is now trivial** because the problem is understood.

#### 💭 Sarah's Validation

*"This is exactly what I needed to see. Plan mode isn't just for new features—it's for thinking through problems. I've been debugging for 15 years, but having AI help structure my investigation? That's actually useful."*

#### 🚀 Challenge Extension

If you want to complete the fix:
1. Remove the flawed `episodeCache` and `cacheTimestamp` variables
2. Or implement proper caching with season-aware keys
3. Test by rapidly switching between seasons

#### 📚 Official Docs

- [GitHub Docs: Using GitHub Copilot Chat in your IDE](https://docs.github.com/en/copilot/using-github-copilot/asking-github-copilot-questions-in-your-ide)
- [VS Code: Copilot Chat Context](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-context)
- [GitHub Docs: Using chat participants](https://docs.github.com/en/copilot/github-copilot-chat/copilot-chat-in-ides/using-github-copilot-chat-in-your-ide#using-chat-participants)

---

## 🎯 Module Summary

### Key Takeaways

1. **Plan mode transforms AI collaboration** from reactive to strategic
2. **Structured thinking produces better AI results** than immediate implementation
3. **Planning applies to configuring AI tools**, not just generating code
4. **Expertise amplifies AI effectiveness** rather than being replaced by it
5. **Systematic approaches scale good practices** across entire teams

### Practices Mastered

| Practice | Key Insight |
|----------|-------------|
| 🎯 **Plan Before Implementing** | Structure your thinking before asking AI to generate solutions |
| 📚 **Document Planning Results** | Save plans for team collaboration and future reference |
| 🔄 **Iterate on Approaches** | Use plan mode conversations to refine and improve strategies |
| 🏗️ **Systematic Workflows** | Turn effective practices into repeatable team processes |

### What's Next

In **Module 3: Custom Prompts**, you'll apply your plan mode foundation to design custom prompts that embody your team's patterns and preferences. You'll discover how structured planning makes prompt engineering more effective and systematic.

**💡 Plan Mode Tip for Next Module**: Before creating any custom prompts, use plan mode to analyze what types of prompts your team needs and how they should be structured.

---

## 🧵 The Golden Thread: Complete

You've now completed the **Character Detail Challenge** across all three modules:

| Module | Context | Approach | Result |
|--------|---------|----------|--------|
| **00** | Nothing | Direct ask | Chaos, 3+ attempts, generic output |
| **01a** | ARCHITECTURE.md | Direct ask | Better structure, still inconsistent |
| **01b** | + Instructions | Direct ask | Consistent patterns, fewer iterations |
| **02** | + Plan Mode | **Plan first** | **First-try success, edge cases covered** |

**The lesson**: Each layer of investment compounds. Documentation provides context. Instructions provide patterns. Plan mode provides strategy. Together, they transform AI collaboration from frustrating guesswork into systematic success.

> *"Same prompt. Dramatically different results. That's not magic—that's engineering."* — Sarah

---

## ⏱️ Time Check

**Expected Duration**: 75 minutes
- Exercise 2.1: The Character Detail Challenge: Final Form (25 minutes)
- Exercise 2.2: David's Agent Design (25 minutes)  
- Exercise 2.3: Marcus's Planning Template (15 minutes)
- Exercise 2.4: Sarah's Debug Investigation (10 minutes)

**If running ahead**: Complete the bug fix in Exercise 2.4, create additional templates  
**If running behind**: Focus on Exercise 2.1 (essential for the Golden Thread) and 2.4

---

*"The best AI results come from the clearest human thinking. Plan mode helps you think clearly."*