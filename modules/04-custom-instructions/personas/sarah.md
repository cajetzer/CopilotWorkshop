# Sarah's Journey: Module 4 - Custom Instructions

> **Your role**: Senior Developer scaling code review feedback through automated standards  
> **Time**: 35 minutes (focused) or 90 minutes (with full team collaboration)  
> **Transformation**: From repeating React review feedback to codifying it once

---

## 📖 Your Story in This Module

You've been reviewing React components for years, and you give the same feedback over and over: "Use functional components," "Add TypeScript types," "Handle loading states," "Don't use inline styles."

Every junior developer makes the same mistakes. Every code review becomes a teaching moment that you've already taught a dozen times.

Today, you'll capture those React review standards in custom instructions—so Copilot generates compliant components from the start. Your expertise, scaled across every component the team builds.

---

## 🎯 Your Exercises

### Exercise 4.4: React Component Standards ⭐ *You lead this one*

**Your role**: Codify React review feedback into reusable instructions  
**Time**: 30 minutes  
**[View full exercise →](../EXERCISES.md#exercise-44-react-component-standards--sarah-scales-code-review-feedback)**

**What you'll create:**
- `.github/instructions/react-components.instructions.md` — Your React review checklist as instructions
- `EpisodeAppearances` component validating the standards work

**Your "before" pain:**
Open any existing React component in the codebase. Notice the inconsistencies:
- Some use class components, some functional
- TypeScript types are incomplete or use `any`
- Loading/error states handled differently
- Mix of inline styles and styled-components
- useEffect dependencies often incomplete

**Every PR you review:**
- 20 minutes reviewing React patterns (not business logic)
- Same comments every time: "Add types," "Handle empty state," "Fix dependencies"
- 2-3 review rounds just for component structure
- Junior developers repeatedly make the same mistakes

**Time cost per React component review**: 20 minutes  
**Frustration level**: High (repeating yourself constantly)  
**Knowledge transfer**: Slow (teaching one PR at a time)

**Your "after" win:**
With `react-components.instructions.md`:
- Copilot generates components that follow your standards
- TypeScript types are complete
- Loading/error/empty states handled automatically
- Styled-components used correctly
- Hook dependencies complete

**Review time per component**: 5 minutes (business logic only)  
**Pattern violations**: Near zero  
**Review rounds**: 1 (vs 2-3 before)  
**Knowledge transfer**: Instant (codified in instructions)

**Time saved per component**: 15 minutes (20 min → 5 min)  
**Time saved per sprint** (10 components): 2.5 hours  
**Time saved per year** (26 sprints): 65 hours = 1.5+ weeks

**Your transformation moment:**
> *"I've spent years giving the same React review feedback. 'Use functional components.' 'Add proper types.' 'Handle loading states.' Now I've documented those patterns once, and Copilot enforces them automatically. Every component the team generates follows my review standards—without me reviewing every line. That's not automation for automation's sake—that's my expertise scaled."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Pattern codification**: Turning review feedback into reusable instructions
- **Automated expertise**: Your standards apply without your manual review
- **Context-aware assistance**: Instructions activate automatically for the right files
- **Review efficiency**: Focus on architecture and business logic, not syntax

### How This Helps Your Real Work

As a senior developer who reviews code, you've accumulated React expertise through years of:
- Catching edge cases (empty states, error handling)
- Enforcing patterns (functional components, TypeScript)
- Teaching best practices (hook dependencies, accessibility)
- Maintaining consistency (styling, structure, naming)

**Traditional knowledge transfer has problems:**
- **Repetitive reviews**: Same feedback on every PR
- **Slow learning**: Junior devs learn by making mistakes
- **Inconsistent application**: Standards vary by reviewer
- **You're the bottleneck**: Can't scale your expertise

**Custom instructions solve all four:**

1. **Automated feedback**: Copilot generates code following your standards
2. **Instant learning**: Developers see correct patterns immediately
3. **Consistent application**: Same standards, every component, every time
4. **Expertise at scale**: Your review checklist applies without you present

### Artifacts You Create
- `.github/instructions/react-components.instructions.md` — Your React review standards
- `EpisodeAppearances` component demonstrating the patterns
- Validation that standards eliminate repetitive review feedback

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Wasting time repeating the same review feedback endlessly
- 😰 Junior developers making preventable mistakes
- 😰 Inconsistent React patterns across the codebase
- 😰 Being the bottleneck for every React component

**After this module (your achievements):**
- ✅ Documented React standards once, now enforced automatically
- ✅ Component review time reduced from 20 min to 5 min
- ✅ Pattern violations eliminated (near zero per component)
- ✅ Your expertise scales without you reviewing every line
- ✅ Focus shifted from syntax to architecture and business logic

**Key insight:**
> *"Code review isn't just about catching mistakes—it's about teaching patterns. But teaching the same patterns repeatedly doesn't scale. Now I teach once by documenting standards, and Copilot applies them everywhere. That's leverage."*

---

## 🚀 Quick Start Guide

**If you're short on time (30 minutes):**
1. Jump to Exercise 4.4
2. Create react-components.instructions.md with your React review checklist
3. Generate EpisodeAppearances component to validate
4. Compare to existing components—notice the consistency

**If you have full time (35 minutes):**
1. Exercise 4.4: Create React standards and validate (30 min)
2. Review: Compare before/after component quality (5 min)

**Want to go deeper?**
- Add accessibility review standards
- Document performance optimization patterns
- Create instructions for API integration patterns
- Add testing requirement templates

---

## 📊 Your Success Metrics

| Metric | Before react-components.instructions | After react-components.instructions |
|--------|-------------------------------------|-------------------------------------|
| **Review time per component** | 20 minutes | 5 minutes |
| **Pattern violations per component** | 5-8 issues | 0-1 issues |
| **Review rounds for structure** | 2-3 rounds | 1 round |
| **Time explaining React patterns** | Every PR | None (documented) |
| **Time saved per sprint** (10 components) | — | 2.5 hours |
| **Time saved per year** (26 sprints) | — | 65 hours |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Elena's path](elena.md) to see testing standards perspective

### Next Module
Your next appearance: **[Module 9: Copilot CLI](../../09-copilot-cli/personas/sarah.md)**

**What's next for you**: You'll discover command-line workflows that batch-process tasks, generate consistent commit messages, and automate code reviews. The efficiency gains you've seen in the editor now extend to terminal workflows.

**Why it matters**: Module 4 taught you to scale review feedback through instructions. Module 9 extends that to your entire workflow—from terminal commands to commit messages to PR descriptions.

---

## 📚 Official Documentation

- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)
- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-custom-instructions-for-github-copilot)
- [VS Code: File-Scoped Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization#_create-file-scoped-instructions)
