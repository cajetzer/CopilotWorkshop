# Exercise 3: Execution & Validation

## 🔨 Implement from Plan and Measure the Improvement

**Time:** 25 minutes  
**Outcome:** See context engineering in action + documented metrics proving impact

---

## 📖 The Challenge

Creating documentation and plans is only valuable if they improve actual development work. This exercise closes the loop:

1. **Use** the context you've built to implement a feature
2. **Measure** the difference compared to working without context
3. **Validate** that the investment in context engineering pays off

---

## 🔄 The Full Workflow

```
┌─────────────────────┐
│ 1. Project Context  │  ← ARCHITECTURE.md, copilot-instructions.md
│    (Exercise 1)     │     Copilot understands your project
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 2. Planning         │  ← plan-template.md, @plan agent
│    (Exercise 2)     │     Systematic feature breakdown
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 3. Execution        │  ← Context-aware implementation
│    (This Exercise)  │     AI follows your patterns
└─────────┬───────────┘
          │
          ▼
┌─────────────────────┐
│ 4. Validation       │  ← Measure improvement
│    (This Exercise)  │     Prove ROI
└─────────────────────┘
```

---

## 🎯 Your Goal

1. **Implement** a small feature using your plan (or sample feature)
2. **Compare** AI assistance quality with and without context
3. **Document** your baseline metrics for ongoing improvement

---

## 📋 Part 1: Context-Aware Implementation (15 min)

### Step 1: Choose Your Implementation

**Option A: Continue from your Exercise 2 plan**

If you created a plan in Exercise 2, use it:
```
@workspace Implement the first phase of the plan in docs/plans/[your-plan].md
Start with [first task from your plan].
```

**Option B: Sample implementation**

If you need a quick example, use this:
```
@workspace Add a simple health check endpoint at /api/health that returns:
- Status: "ok" or "error"  
- Timestamp: current ISO timestamp
- Version: from package.json

Follow the patterns documented in ARCHITECTURE.md for API endpoints.
```

### Step 2: Observe the Difference

**With context engineering (what you should see):**
- Copilot references your ARCHITECTURE.md
- Code follows your documented patterns
- File placement matches your folder structure
- Testing approach aligns with your conventions

**Without context engineering (what you'd see before):**
- Generic patterns that may not match your project
- Guesses about file placement
- Testing suggestions that don't fit your framework
- Need for multiple corrections

### Step 3: Complete One Task

Implement one complete task from your plan:
1. Create the file(s) needed
2. Write the implementation
3. Add basic tests
4. Verify it works

**Track these as you go:**
- How many times did you correct Copilot's suggestions?
- Did Copilot reference your documentation?
- Did the code follow your patterns?

---

## 📋 Part 2: Comparative Validation (10 min)

### Step 4: Run a Controlled Comparison

To validate the impact, try this comparison:

**Test 1: With Context**
```
@workspace Create a new utility function for formatting dates in our project.
```

Note:
- Response time: ___ seconds
- Did it reference your docs? Yes / No
- Did it follow your patterns? Yes / No
- Corrections needed: ___

**Test 2: Hypothetical Without Context**

Think about how this same question would have been answered before you created ARCHITECTURE.md and copilot-instructions.md:
- Would Copilot know your date library preference?
- Would it know where utilities should be placed?
- Would it match your naming conventions?

### Step 5: Document Specific Improvements

Create a list of specific improvements you observed:

| Question/Task | Before Context Engineering | After Context Engineering |
|---------------|---------------------------|--------------------------|
| "Where do utilities go?" | Guessed, suggested /src/utils, /lib, /helpers | Knew exact path from ARCHITECTURE.md |
| "What testing framework?" | Suggested Jest, Mocha, Vitest options | Knew we use [your framework] with [conventions] |
| "How to handle errors?" | Generic try/catch pattern | Our documented error handling pattern |

---

## 📋 Part 3: Establish Your Baseline (5 min)

### Step 6: Complete the Metrics Summary

Fill out this metrics summary to track your context engineering investment:

```markdown
# Context Engineering Baseline - [Date]

## Time Investment
- ARCHITECTURE.md creation: ___ minutes
- copilot-instructions.md creation: ___ minutes
- Plan template creation: ___ minutes
- **Total setup time: ___ minutes**

## Measured Improvements

### Response Quality
- Structural questions answered correctly: ___% → ___%
- Pattern-compliant suggestions: ___% → ___%
- References to documentation in responses: ___% 

### Response Speed
- Structural questions: ___ seconds → ___ seconds
- Implementation suggestions: ___ seconds → ___ seconds

### Correction Frequency
- Corrections per implementation task: ___ → ___
- "That's not how we do it" feedback: ___ per day → ___ per day

## ROI Calculation
- Setup time: ___ minutes (one-time)
- Time saved per structural question: ___ seconds × ___ questions/day = ___ min/day
- Break-even: ___ days
- Annual savings: ___ hours

## Next Improvements
- [ ] Add more patterns to instructions
- [ ] Create additional templates for [specific workflow]
- [ ] Build custom agent for [specific task]
```

### Step 7: Save Your Baseline

Save this as `docs/context-engineering-baseline.md` in your project. Update it monthly to track improvement over time.

---

## ✅ Success Criteria

Before completing the workshop, verify:

- [ ] Implemented at least one task using context-aware Copilot
- [ ] Observed Copilot referencing your documentation
- [ ] Documented at least 3 specific improvements
- [ ] Completed the metrics baseline
- [ ] Identified next improvements to make

---

## 📊 Expected Results

Based on the context engineering workflow, you should observe:

| Metric | Typical Improvement |
|--------|-------------------|
| Structural question response time | 60-70% faster |
| Pattern compliance (first suggestion) | 40-60% improvement |
| Corrections per implementation | 50-70% reduction |
| Time to productive with new project | 70-80% reduction |

---

## 💡 Continuous Improvement

Context engineering isn't "set and forget." Here's how to maintain and improve:

### Weekly
- Notice patterns Copilot misses → Add to instructions
- Find repeated explanations → Document once

### Monthly
- Review ARCHITECTURE.md accuracy → Update as code evolves
- Check instruction effectiveness → Refine based on gaps
- Update baseline metrics → Track improvement over time

### Quarterly
- Audit documentation freshness → Major review
- Evaluate new Copilot features → Integrate into workflow
- Share learnings with team → Scale the approach

---

## 🚀 Challenge Extension

If you have extra time, try these advanced improvements:

### Create a Code Review Agent

```markdown
---
description: Review code against documented standards
tools: ['search', 'problems']
---

# Code Review Agent

Review the provided code against our documented standards in:
- docs/ARCHITECTURE.md (structural patterns)
- .github/copilot-instructions.md (code conventions)

For each issue found:
1. Quote the relevant standard
2. Show the violation
3. Suggest the fix

Focus on pattern violations, not style preferences.
```

### Add Team-Specific Prompts

Create prompts for common team workflows:
- `/new-feature` — Start a new feature with proper structure
- `/add-test` — Generate tests following your conventions
- `/debug` — Systematic debugging using your logging patterns

---

## 📚 Official Docs

- [VS Code: Context Engineering Guide](https://code.visualstudio.com/docs/copilot/guides/context-engineering-guide) — Complete workflow reference
- [VS Code: Measuring Copilot Impact](https://code.visualstudio.com/docs/copilot/getting-started-chat) — Understanding effectiveness
- [GitHub: Copilot Metrics](https://docs.github.com/en/copilot/using-github-copilot/getting-code-suggestions-in-your-ide) — Tracking productivity gains

---

## ➡️ Next: Workshop Wrap-Up

**[Wrap-Up: What You've Built →](04-wrapup.md)**

Review everything you've created and plan your next steps.

> *"The best time to set up context engineering was when you started the project. The second best time is today."*
