# Module 1: Repository Instructions

## ⏰ Monday 10:00 AM — Establishing Foundations

> *"We've all felt it—Copilot giving wildly different suggestions to each of us. Let's fix that."*  
> — Sarah, looking at the team's chaotic FanHub codebase

---

## 📖 Story So Far

The TechCorp team has gathered for their Monday morning sprint planning, and Sarah has thrown down a challenge: ship a production-ready FanHub (TV show fan site) by end of day.

The team has cloned the starter project and noticed something troubling: the `docs/` folder is empty. No architecture documentation, no coding standards, no team conventions. The AI is as confused as a new hire with no onboarding docs.

They've experienced **The Struggle** firsthand—Copilot giving wildly different suggestions to each person, inconsistent patterns across the codebase, and hours wasted in code reviews catching style issues.

**Exercise 1.1** (in the [main README](README.md#exercise-11-document-the-architecture--david-maps-the-territory)) established the foundation with David creating the architecture documentation. Now the team will build on that foundation with team standards, experience the transformation, and peek behind the AI's curtain.

---

💡 **Integration Note**: The architecture documentation created in Exercise 1.1 serves as the foundation for all exercises in this module. If you're jumping in here, complete Exercise 1.1 first to create `fanhub/docs/ARCHITECTURE.md`.

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Create architecture documentation that provides context for AI suggestions
- Build a `.github/copilot-instructions.md` that standardizes team patterns
- Experience the dramatic improvement in suggestion quality
- Understand why "clarity is the new syntax" isn't just a slogan

**Time**: ~90 minutes (or follow your persona's focused path for less)  
**Featured Personas**: David (Architect), Sarah (Senior Developer), Priya (Junior Developer)

---

## 🧠 Mindful Moment: The Documentation Paradox

Traditional thinking: *"Documentation is something you write AFTER the code works."*

AI-native thinking: *"Documentation is the FIRST thing you create—it's the context that makes everything else better."*

This isn't about bureaucracy. It's about leverage. Every hour David spends documenting architecture saves the team (and Copilot) hundreds of hours of confusion.

---

## 📚 Key Concepts

### Repository Instructions

GitHub Copilot can read a special file at `.github/copilot-instructions.md` in your repository. When present, Copilot automatically includes these instructions in every prompt—like giving every AI interaction the same onboarding document.

**What belongs here:**
- Coding conventions (naming, formatting, patterns)
- Technology preferences (which libraries to use/avoid)
- Error handling approaches
- Testing requirements
- Domain-specific terminology

**What doesn't belong:**
- General programming knowledge
- Things that change frequently
- Secrets or credentials (never!)

> 📂 **Reference Examples**: The [`examples/completed-config/`](../../examples/completed-config/) folder contains sample files for reference:
> - [`docs/ARCHITECTURE.md`](../../examples/completed-config/docs/ARCHITECTURE.md) — Sample architecture documentation
> - [`.github/copilot-instructions.md`](../../examples/completed-config/.github/copilot-instructions.md) — Sample team instructions
> - [`docs/character-detail-challenge.md`](../../examples/completed-config/docs/character-detail-challenge.md) — Golden Thread tracking template

### Context Through Documentation

Copilot suggestions improve dramatically when:
- Architecture is documented (it understands where code fits)
- Patterns are explicit (it knows which style to follow)
- Terminology is defined (domain language isn't a mystery)

This is why David's architecture documentation is step one—not step last.

---

## 🔨 Exercises

### Exercise 1.2: Create Team Standards — "Sarah Builds the Playbook"

#### 📖 The Story

**Sarah** (Senior Developer, 15 years) has seen this pattern countless times—a codebase that started well enough but drifted into chaos without explicit standards. She's tired of code reviews that catch the same inconsistencies over and over.

*"See how the backend routes use three different async patterns?"* Sarah points to the FanHub codebase. *"That's because the contractor had no standards. Let's fix that—and teach Copilot at the same time."*

Sarah knows that defining standards isn't just about consistency—it's about leverage. Every hour spent here saves dozens of hours in code review debates.

**Supporting Cast**: 
- **David** (Staff Engineer) reviews Sarah's choices, ensuring the patterns align with long-term architectural goals
- **Priya** will later benefit from these standards in Exercise 1.3

#### ❌ The "Before" — What Frustration Looks Like

Open `fanhub/backend/src/routes/characters.js` and compare it to `fanhub/backend/src/routes/shows.js`.

Notice:
- Different async patterns (`.then()` chains vs `async/await`)
- Different error handling approaches
- Different response formats

Now ask Copilot to add a new endpoint:

```
Add a PATCH endpoint to update a character's status (alive, deceased, unknown)
```

**What you'll get**: A suggestion that might follow ANY of the existing patterns—or a fourth pattern entirely. There's no consistency because there's no standard.

#### 🎯 Objective

Create `.github/copilot-instructions.md` that establishes consistent patterns for the entire team.

#### 📋 Steps

1. **Experience the "before" state**
   
   Open `fanhub/backend/src/routes/characters.js` and compare it to `fanhub/backend/src/routes/shows.js`.
   
   Notice the inconsistencies:
   - Different async patterns (`.then()` chains vs `async/await`)
   - Different error handling approaches
   - Different response formats
   
   Now ask Copilot to add a new endpoint:
   ```
   Add a PATCH endpoint to update a character's status (alive, deceased, unknown)
   ```
   
   The suggestion might follow ANY of the existing patterns—or introduce a fourth one entirely.

2. **Use Agent mode to create the instructions file**
   
   Open Copilot Chat and switch to **Agent mode** (click the mode selector or use `@agent`).
   
   Ask Copilot to create your team standards:
   
   ```
   @workspace Analyze this codebase and create a .github/copilot-instructions.md file 
   that establishes consistent team standards.
   
   The file should include:
   
   1. Project Context - Brief description of FanHub (TV show fan site, React + Node.js/Express)
   
   2. Code Style standards for:
      - JavaScript/Node.js (ES6+, async/await preference, template literals)
      - React components (functional components, hooks, styled-components)
      - Naming conventions (components, functions, constants, database columns, API routes)
   
   3. Patterns with code examples for:
      - Error handling (try/catch with consistent response format)
      - API responses (consistent JSON structure for success and error)
      - Database queries (parameterized queries, handling missing records)
   
   4. Testing requirements (Jest, React Testing Library, where test files go)
   
   5. Documentation expectations (JSDoc, updating ARCHITECTURE.md)
   
   6. Dependencies - preferred libraries and ones to avoid
   
   Look at the actual code to identify what patterns SHOULD be standardized 
   (pick the best approach when there are inconsistencies).
   Include code examples for the error handling and API response patterns.
   ```

3. **Review and refine the output**
   
   Copilot will generate a comprehensive instructions file. Review it:
   
   - Did it pick sensible defaults for the inconsistent patterns?
   - Are the code examples clear and complete?
   - Does it cover the key areas (style, patterns, testing, dependencies)?
   
   If anything is missing, ask follow-up questions:
   ```
   Add a section about which libraries to prefer and which to avoid
   ```
   
   Or:
   ```
   The error handling example should show the full try/catch pattern with console.error
   ```

4. **Create the file**
   
   Create `fanhub/.github/copilot-instructions.md` and paste the generated content.
   
   Make any adjustments based on your team's actual preferences—you're the decision maker, Copilot is your assistant.

5. **Test the improvement**

   Now ask Copilot the same question from step 1:
   
   ```
   Add a PATCH endpoint to update a character's status (alive, deceased, unknown)
   ```
   
   The suggestion should now:
   - Use async/await (not callbacks or .then())
   - Include try/catch error handling
   - Return consistent JSON structure
   - Follow your naming conventions

#### ✅ Success Criteria

- [ ] Used Agent mode to generate `copilot-instructions.md`
- [ ] Reviewed and refined Copilot's output for your team's preferences
- [ ] File includes at least 5 coding conventions
- [ ] Included error handling pattern with code example
- [ ] Specified preferred libraries and ones to avoid
- [ ] Tested that Copilot suggestions now follow your patterns

> 📂 **Compare Your Work**: See [`examples/completed-config/.github/copilot-instructions.md`](../../examples/completed-config/.github/copilot-instructions.md) for a comprehensive reference example. Your version should reflect your team's specific preferences and conventions.

#### ✨ The "After" — The Improved Experience

Ask Copilot to generate several different things:
- A new API endpoint
- A new React component
- Error handling code
- A database query

All suggestions now follow the same patterns. The team speaks one language.

**Time saved per code review**: ~30 minutes (no more style debates)  
**Consistency improvement**: From 3 different patterns to 1 standard approach  
**Confidence gained**: The whole team now has explicit patterns to follow

#### 📚 Official Docs

- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [GitHub Docs: Repository Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)

#### 📌 Practices Used

| Practice | How It Applied |
|----------|----------------|
| 📚 **Documentation as Leverage** | Your instructions file trains AI on team patterns |
| 🔍 **Clarity as a Foundation** | Clear standards enable consistent suggestions |
| 🎯 **Context is Everything** | Instructions are *automatic* context for every interaction |
| 🔄 **Iterate and Refine** | You refined AI output to match your team's actual preferences |

#### 💭 Sarah's Realization

*"I've spent years giving the same code review feedback over and over. Now I've codified those patterns once, and Copilot enforces them for me. The team gets consistent suggestions, and I get to focus on architecture instead of style debates."**

#### 🚀 Challenge Extension

**Cross-Persona Review**: Have someone playing Elena (QA) review your instructions:
- Are the testing requirements specific enough?
- Would a new developer know exactly what test coverage looks like?

Add more specific testing guidance based on the feedback.

---

### Exercise 1.3: Experience the Transformation — "Priya Sees the Light"

#### 📖 The Story

**Priya** (Junior Developer, 1 year) has been quietly watching David and Sarah work. She's intimidated by architecture documents and coding standards—that's senior developer stuff.

But then Sarah hands her a task: *"Add a new feature to display character quotes. Use Copilot, and tell us how it goes."*

Priya opens her editor, types a prompt, and something magical happens: Copilot's suggestions look like they were written by David himself. Same patterns. Same error handling. Same naming conventions.

*"Wait,"* she thinks. *"Is this what it feels like to have years of experience?"*

**Supporting Cast**:
- **David** created the architecture that guides the AI
- **Marcus** defined the patterns that Priya now benefits from
- **Sarah** provides the safe space for Priya to experiment and learn

#### ❌ The "Before" — What Priya Used to Experience

Before the team created standards:
- Every Copilot suggestion felt like a coin flip
- She'd accept code, then get feedback in reviews that it was "wrong"
- She never knew which pattern was "correct"
- Asking felt embarrassing—*shouldn't I already know this?*

**Time wasted per feature**: 2+ hours (code + rewrites after review)  
**Confidence level**: Low (constant uncertainty about "doing it right")  
**Learning curve**: Steep (patterns weren't explicit)

#### 🎯 Objective

Use the team's new documentation and standards to build a feature with confident Copilot assistance.

#### 📋 Steps

1. **Open the characters route file**
   
   Open: `fanhub/backend/src/routes/characters.js`

2. **Ask Copilot to add a feature**
   
   In Copilot Chat:
   ```
   @workspace Add a new endpoint GET /api/characters/:id/quotes that returns 
   all quotes spoken by a specific character. Include pagination with 
   limit and offset query parameters.
   ```

3. **Observe the suggestion**
   
   Notice how the generated code:
   - Uses async/await (from your instructions)
   - Includes proper error handling (from your instructions)
   - Returns consistent JSON structure (from your instructions)
   - Uses parameterized queries (from your instructions)

4. **Apply and review**
   
   Accept the suggestion, then verify it matches your team's patterns.

5. **Try a frontend component**
   
   Now ask:
   ```
   @workspace Create a QuotesList component that displays quotes for a 
   character. It should fetch from /api/characters/:id/quotes, handle 
   loading and error states, and support pagination.
   ```

6. **Verify consistency**
   
   The component should:
   - Be a functional component (not class)
   - Use styled-components (per your instructions)
   - Have a .jsx extension
   - Follow your naming conventions

#### ✅ Success Criteria

- [ ] Generated backend code follows async/await pattern
- [ ] Error handling matches the standard from copilot-instructions.md
- [ ] JSON response structure is consistent
- [ ] Frontend component uses functional + hooks pattern
- [ ] Styling uses styled-components
- [ ] File naming follows conventions

#### ✨ The "After" — The Improved Experience

Priya realizes something profound: The AI isn't giving her random suggestions anymore. It's giving her suggestions that match exactly what her senior teammates would write.

**The compounding effect:**
- David's architecture doc → Copilot understands the codebase
- Sarah's instructions → Copilot follows team patterns
- Priya's code → Automatically looks like senior developer code

**Time saved per feature**: 90 minutes (first-try quality code)  
**Code review rounds**: From 3-4 to 1  
**Confidence gained**: Immeasurable—Priya now trusts her work

#### 📚 Official Docs

- [VS Code: Copilot Chat](https://code.visualstudio.com/docs/copilot/copilot-chat)
- [GitHub Docs: Best Practices for Prompts](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)

#### 📌 Practices Used

| Practice | How It Applied |
|----------|----------------|
| 🔍 **Clarity as a Foundation** | Clear prompts described WHAT you wanted |
| 🎯 **Intent Over Implementation** | You described the feature, not the code |
| 🎯 **Context is Everything** | Team docs + instructions = consistent results |

*Notice: All five practices compound. Documentation enabled context. Context enabled clarity. The result: junior developer code that looks senior.*

#### 💭 Priya's Confidence

*"I used to think senior developers had some magic knowledge I was missing. Turns out, they just have patterns—and now I have them too. Copilot isn't replacing my learning; it's accelerating it."*

#### 🚀 Challenge Extension

**The Consistency Test**: Generate 5 different pieces of code:
1. A new API endpoint
2. A database query function
3. A React component
4. An error handler
5. A utility function

Review all 5 for consistency. Do they all follow the same patterns? If not, what's missing from your copilot-instructions.md?

---

### Exercise 1.4: Peek Behind the Curtain — "David Debugs the AI"

#### 📖 The Story

**David** (Staff Engineer, 20 years) is impressed by the transformation, but he's curious. *"I've spent 20 years debugging code by understanding how it executes. Can I do the same with Copilot? What does it actually 'see' when it makes a suggestion?"*

The Debug View reveals exactly that—what context Copilot received, how your prompt was constructed, and why it generated the response it did.

**Supporting Cast**:
- **Marcus** and **Priya** have been using Copilot without understanding the mechanics
- **Sarah** encourages David's investigative approach—understanding the tool makes it more powerful

#### ❌ The "Before" — What Frustration Looks Like

Without debug visibility:
- AI suggestions seem like a black box
- Can't understand why it chose one approach over another
- Hard to improve prompts without seeing what went wrong
- Unexpected results lead to frustration, not learning

**Time wasted on trial-and-error prompting**: 15-20 minutes per complex task  
**Success rate**: ~60% (hit-or-miss without understanding)  
**Ability to teach others**: Limited (can't explain why something works)

#### 🎯 Objective

Use the Chat Debug View to understand how Copilot works under the covers—and learn to guide it better.

#### 📋 Steps

1. **Enable debug view**

   In VS Code:
   - Open Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`)
   - Search: "Developer: Toggle Developer Tools"
   - Or: Help → Toggle Developer Tools
   - Navigate to the Console tab and look for Copilot-related output

2. **Make a request and examine the debug output**

   Ask Copilot:
   ```
   @workspace Create an authentication middleware for our Express API
   ```

   In debug view, observe:
   - **Context sent**: What files and content did Copilot see?
   - **Your instructions**: Did it include `copilot-instructions.md`?
   - **Architecture context**: Did it reference `ARCHITECTURE.md`?

3. **Understand what Copilot "sees"**

   The debug output shows you the full prompt that was sent to the model:
   - Your `copilot-instructions.md` content
   - Any referenced files
   - Your actual question
   - System instructions

   **Key insight**: Copilot isn't magic—it's responding to a carefully constructed prompt. The better the context, the better the response.

4. **Identify context gaps**

   If the result didn't match expectations:
   - Was the right context included?
   - Did Copilot see your conventions file?
   - Were relevant examples available?
   - What was missing?

5. **Improve based on debug insights**

   After seeing what Copilot "saw", try adding explicit context:
   
   ```
   @workspace Create an authentication middleware for our Express API
   following the JWT pattern. Use the error handling from our copilot-instructions.
   #file:src/middleware/existing-middleware.js
   ```

   Check debug output again—notice how the context changed.

#### ✅ Success Criteria

- [ ] Enabled and accessed Developer Tools in VS Code
- [ ] Examined debug output for a Copilot request
- [ ] Identified that `copilot-instructions.md` was included in context
- [ ] Understood how your documentation affects AI suggestions
- [ ] Can explain to a teammate what Copilot "sees"

#### ✨ The "After" — The Improved Experience

With debug visibility:
- Understand why Copilot gave specific suggestions
- See exactly how your documentation improves results
- Debug unexpected behavior systematically
- Improve prompting skills with evidence, not guesswork

**Time saved on debugging unexpected results**: 10-15 minutes per issue  
**Success rate**: 90%+ (intentional context leads to predictable results)  
**Teaching effectiveness**: High (can show others exactly how it works)

#### 📚 Official Docs

- [VS Code Developer Tools](https://code.visualstudio.com/docs/editor/debugging)
- [GitHub Copilot troubleshooting](https://docs.github.com/en/copilot/troubleshooting-github-copilot)

#### 💭 David's Insight

*"For 20 years, I've debugged code by understanding its execution. Now I can debug AI interactions by understanding what context it used. The debug view turned a black box into a glass box. This isn't magic—it's engineering."*

---

## 🔗 Compounding Value

**What we created in this module:**
- `docs/ARCHITECTURE.md` — Project context (Exercise 1.1)
- `.github/copilot-instructions.md` — Team patterns (Exercise 1.2)

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

## ✅ Module Checklist

Before moving to Module 2, verify:

- [ ] `fanhub/docs/ARCHITECTURE.md` exists and is accurate
- [ ] `fanhub/.github/copilot-instructions.md` exists with team patterns
- [ ] Team agrees on the standards (no "but I prefer..." objections)
- [ ] Tested that Copilot suggestions now follow your patterns
- [ ] Everyone understands WHY this matters (not just how)

---

## 📚 Official Documentation

- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [VS Code: Copilot Chat Context](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-context)
- [GitHub Docs: Repository Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [GitHub Docs: Prompt Engineering](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)

---

## ➡️ Next Up

**[Module 2: Agent Plan Mode](../02-agent-plan-mode/README.md)** — Monday 11:30 AM

Now that Copilot knows our patterns, let's teach it to think through problems before coding. David will discover AI planning for architectural decisions, Marcus will debug complex deployment issues, and the whole team will see how "plan first, code second" transforms their workflow.

> *"The AI knows our standards now. But can it think through complex problems like we do?"*  
> — David, ready to test Copilot's reasoning capabilities

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
