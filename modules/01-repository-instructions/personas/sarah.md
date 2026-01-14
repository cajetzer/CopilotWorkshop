# Sarah's Journey: Module 1 - Repository Instructions

> **Your role**: Senior Developer enforcing coding standards and consistency  
> **Time**: 35 minutes (focused) or 90 minutes (with full team collaboration)  
> **Transformation**: From manual code review enforcer to automated standards guardian

---

## 📖 Your Story in This Module

Fifteen years of development have taught you that chaos compounds. You've seen codebases drift into entropy because nobody documented the "right way" to do things. Code reviews become debates instead of validations.

You're skeptical of AI tools—you've seen too many hype cycles. But today, you'll discover something practical: if you document standards once, Copilot enforces them automatically. No more repeating the same code review feedback. No more style debates.

---

## 🎯 Your Exercises

### Exercise 1.2: Create Team Standards ⭐ *You lead this one*

**Your role**: Build `.github/copilot-instructions.md` that standardizes team patterns  
**Time**: 30 minutes  
**[View full exercise →](../EXERCISES.md#exercise-12-create-team-standards--sarah-builds-the-playbook)**

**What you'll create:**
- `.github/copilot-instructions.md` — Complete team coding standards
- Automatic context for every Copilot interaction
- Foundation for consistent code generation

**Your "before" pain:**
Open `backend/src/routes/characters.js` and compare to `backend/src/routes/shows.js`:
- Different async patterns (`.then()` vs `async/await`)
- Different error handling approaches
- Different response formats

Ask Copilot to add a new endpoint—get inconsistent results that don't match any pattern.

**Code review time per feature**: 30-45 minutes (catching style issues)  
**Consistency level**: 3 different patterns in production code  
**Team friction**: High (debates about "the right way")

**Your "after" win:**
With copilot-instructions.md in place:
- All Copilot suggestions follow the same patterns
- Code reviews focus on logic, not style
- Team speaks one language
- Standards are enforced automatically

**Time saved per code review**: ~30 minutes  
**Consistency improvement**: 1 standard approach everywhere  
**Team friction**: Eliminated (patterns are documented)

**Your transformation moment:**
> *"I've spent years giving the same code review feedback over and over. Now I've codified those patterns once, and Copilot enforces them for me. The team gets consistent suggestions, and I get to focus on architecture instead of style debates."*

---

### 🧵 Your Checkpoint 1.2b: Character Detail Challenge

**After creating copilot-instructions.md**, revisit the Character Detail challenge:

```
@workspace Add a character detail page
```

#### From Your Standards Perspective, Evaluate:

- [ ] Uses `async/await` (not callbacks or `.then()` chains)
- [ ] Includes try/catch error handling with consistent structure
- [ ] Returns JSON with documented response format
- [ ] Follows naming conventions for functions, components, files
- [ ] Uses approved libraries (styled-components, not inline styles)

**Your metrics**:
- **Style violations**: ___ (should be 0)
- **Code review rounds needed**: ___ (down from 3-4 in Module 00)
- **Pattern divergence**: ___ instances (should be 0)
- **Convention compliance**: ___% (should be 95%+)

**What improved**: Pattern consistency, convention adherence, fewer code review cycles

**What this proves**: Standards documented once = standards enforced automatically

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Standard codification**: Turning implicit team knowledge into explicit rules
- **Automated enforcement**: AI applies standards without human intervention
- **Knowledge distribution**: Your preferences become everyone's defaults
- **Review efficiency**: Focus on logic and design, not syntax and style

### How This Helps Your Real Work

As a senior developer, you're the consistency guardian. But traditional enforcement has problems:
- **Manual reviews are tedious**: Same feedback repeated across PRs
- **Standards drift**: Not documented, so interpretations vary
- **Onboarding is slow**: New devs learn by trial and error in reviews
- **You're a bottleneck**: Every PR needs your eyes

**Repository instructions solve all four:**

1. **Automated feedback**: Copilot generates code following your standards from the start
2. **Standards stability**: Documented in copilot-instructions.md, not in your head
3. **Instant onboarding**: New devs get correct patterns immediately
4. **Scale yourself**: Standards apply without you reviewing every line

### Artifacts You Create
- `.github/copilot-instructions.md` — The single source of truth for team conventions
- Pattern examples with clear code samples
- Testing requirements and dependency preferences

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Wasting time on tools that don't deliver real value
- 😰 Losing the craftsmanship aspect of coding to "AI autocomplete"
- 😰 Being forced to change workflows that already work
- 😰 Another hype cycle that promises more than it delivers

**After this module (your achievements):**
- ✅ Documented standards once, now enforced automatically
- ✅ Code reviews take 30 minutes less per feature
- ✅ Team consistency improved dramatically (3 patterns → 1)
- ✅ Your expertise is distributed, not diluted
- ✅ This is a practical tool with measurable ROI, not hype

**Key insight:**
> *"I was skeptical because I've seen tools that promise efficiency but create more work. This is different. I documented what I'd review anyway, and now Copilot does the first pass. That's not hype—that's leverage."*

---

## 🚀 Quick Start Guide

**If you're short on time (30 minutes):**
1. Jump to Exercise 1.2
2. Use Agent mode to generate copilot-instructions.md
3. Review and refine the standards
4. Test with a new endpoint generation

**If you have full time (35 minutes):**
1. Exercise 1.2: Create team standards (30 min)
2. Checkpoint 1.2b: Test Character Detail challenge (5 min)

**Want to go deeper?**
- Add examples for complex patterns (authentication, caching)
- Document anti-patterns and why they're discouraged
- Create error handling templates for different scenarios

---

## 📊 Your Success Metrics

| Metric | Before copilot-instructions | After copilot-instructions |
|--------|----------------------------|---------------------------|
| **Code review time per feature** | 45-60 minutes | 15-30 minutes |
| **Style-related review comments** | 8-12 per PR | 0-2 per PR |
| **Pattern consistency across codebase** | 60% (3 different styles) | 95%+ (1 standard) |
| **Time explaining patterns to new devs** | 5+ hours over first month | 1 hour (they learn from AI) |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [David's path](david.md) to see architecture documentation perspective
- [Priya's path](priya.md) to see how standards help learning

### Next Module
Your next appearance: **[Module 9: Copilot CLI](../../09-copilot-cli/personas/sarah.md)**

**What's next for you**: You'll discover command-line workflows that let you batch-process tasks, generate consistent commit messages, and automate code reviews. The efficiency gains you've seen in the editor now extend to terminal workflows.

**Why it matters**: Module 1 taught you to standardize suggestions in the editor. Module 9 extends that standardization to your entire workflow—from terminal commands to commit messages to PR descriptions.

---

## 📚 Resources for Senior Developers

**Official Documentation:**
- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [GitHub Docs: Repository Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [GitHub Docs: Best Practices for Prompts](https://docs.github.com/en/copilot/using-github-copilot/best-practices-for-using-github-copilot)

**Standards-Specific Resources:**
- ESLint/Prettier configuration for automated style enforcement
- Pre-commit hooks for validation
- Code review checklists to complement AI suggestions

**Apply to Your Real Work:**
- Document your team's existing patterns (capture what you review for)
- Add code examples to copilot-instructions.md for clarity
- Include library preferences and approved dependencies
