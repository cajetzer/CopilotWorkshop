# Exercise 13.1: Curating Project-Wide Context

## 🔨 Exercise

### Exercise 13.1: Curating Project-Wide Context — "Document Once, Guide Forever"

**Lead:** ⭐ David | **Support:** 🤝 Sarah, 🤝 Rafael | **Time:** 25 min

#### 📖 The Challenge

Every time David starts a new chat with Copilot, he spends 10-15 minutes re-explaining the architecture. "We use a hexagonal architecture pattern. The frontend is React with TypeScript. We follow specific error handling conventions." Over and over, for every feature.

Sarah sees inconsistent suggestions across the team. One developer gets advice that conflicts with their React patterns. Another gets backend suggestions that ignore their error handling standards. "Copilot treats every interaction like a blank slate," she observes. "It has no institutional memory."

Rafael watches new developers ask the same questions repeatedly: "Where do I put this component? What's our naming convention for API endpoints? How do we handle authentication?" The answers exist in people's heads, but not in a form AI can use.

**The core problem:** Context rebuilding wastes 10-15 minutes per chat, architectural decisions are inconsistent, and onboarding the same questions get asked repeatedly because knowledge isn't captured systematically.

#### 🔄 The Transformation

| Before ❌ | After ✨ |
|-----------|----------|
| "Let me explain our architecture again..." every chat | AI starts every interaction with full project context |
| Inconsistent suggestions across team members | All developers get architecture-aligned recommendations |
| New devs ask same questions repeatedly | PRODUCT.md, ARCHITECTURE.md answer common questions |
| **Time:** 10-15 min context setup per chat<br>**Consistency:** varies by explanation<br>**Onboarding questions:** 20+ per new dev | **Time:** 0 min context setup<br>**Consistency:** 100% aligned<br>**Onboarding questions:** reduced 80% |

#### 🎯 Your Goal

Create a project documentation suite (PRODUCT.md, ARCHITECTURE.md, CONTRIBUTING.md) and integrate it into `copilot-instructions.md` so AI always has critical project context.

---

> 💡 **Best Practice: AI-Assisted Documentation**
>
> You can use Copilot to generate initial drafts of these documentation files. Prompt: "Generate an ARCHITECTURE.md (max 2 pages) that describes the overall architecture of the project." But **always review and refine**—AI generates structure, your expertise ensures accuracy.

---

#### 📋 Steps

**1. Generate project documentation using AI assistance**

Open a new chat and generate each documentation file. Use these prompts as starting points:

**For PRODUCT.md:**
```
Generate a PRODUCT.md (max 2 pages) file that describes the product functionality of FanHub:
- A TV show fan site for discovering and tracking shows
- Core features: show browsing, character details, user favorites
- Target audience: casual TV fans who want to track multiple shows
- Key value proposition: unified interface for show information across platforms
```

**For ARCHITECTURE.md:**
```
Generate an ARCHITECTURE.md (max 2 pages) file that describes the overall architecture:
- Frontend: React with TypeScript, component-based architecture
- Backend: Node.js/Express REST API
- Data: Mock data layer (no database yet)
- Key patterns: Functional components, custom hooks, centralized error handling
```

**For CONTRIBUTING.md:**
```
Generate a CONTRIBUTING.md (max 1 page) file that describes developer guidelines:
- React: Functional components only, custom hooks for shared logic
- TypeScript: Strict mode, explicit return types
- Testing: Jest + React Testing Library, test files next to source
- Naming: PascalCase components, camelCase functions, kebab-case files
```

Save these files in the `fanhub/docs/` directory.

---

> ⚠️ **Anti-Pattern: Context Dumping**
>
> **Don't:** Include every detail about your codebase in these files.
>
> **Why it fails:** AI attention is limited. A 20-page ARCHITECTURE.md overwhelms the AI and dilutes focus on what matters.
>
> **Instead:** Keep each file to 1-2 pages max. Focus on decisions that help AI make better choices: "We use X pattern because Y" not "Here's everything about our code."

---

**2. Review and refine the generated documentation**

AI generates good structure but may miss project-specific nuances. Review each file for:

- **Accuracy:** Does this match how we actually work?
- **Completeness:** Are key patterns and conventions included?
- **Conciseness:** Can anything be cut without losing decision-making value?
- **Consistency:** Do all files align on terminology and patterns?

Edit the files to reflect your team's actual practices. This is where your expertise matters—AI provides the skeleton, you add the wisdom.

**3. Integrate documentation into copilot-instructions.md**

Open `.github/copilot-instructions.md` and add references to your new documentation:

```markdown
# FanHub Project Guidelines

## Project Context
* [Product Vision and Goals](../fanhub/docs/PRODUCT.md): Understand the high-level vision and objectives to ensure alignment with user needs.
* [System Architecture and Design Principles](../fanhub/docs/ARCHITECTURE.md): Overall system architecture, design patterns, and principles that guide development.
* [Contributing Guidelines](../fanhub/docs/CONTRIBUTING.md): Developer guidelines and collaboration practices for consistent contributions.

Suggest updates to these documents if you find incomplete or conflicting information during your work.

## Existing Guidelines
[Keep any existing instructions below this line]
```

---

> 💡 **Best Practice: Progressive Context Building**
>
> Start with high-level architecture and only add rules to address errors the agent makes repeatedly. If the AI keeps using class components, add "Use functional components only." If it ignores your error handling, add that pattern. **Let observed behavior guide what you document.**

---

**4. Test the integrated context**

Open a new chat and verify the AI now has your project context:

```
What architecture pattern does FanHub use? What are our React component conventions?
```

The AI should reference your documentation files and provide answers aligned with what you wrote. If it doesn't, check that your file paths are correct and the links are properly formatted.

#### ✅ Success Criteria

- [ ] `fanhub/docs/PRODUCT.md` exists and describes the product vision (1-2 pages max)
- [ ] `fanhub/docs/ARCHITECTURE.md` exists and describes system architecture (1-2 pages max)
- [ ] `fanhub/docs/CONTRIBUTING.md` exists and describes developer guidelines (1 page max)
- [ ] `.github/copilot-instructions.md` references all three documentation files
- [ ] New chat correctly answers questions about your architecture using the documentation

> 📂 **Compare Your Work**: [`examples/completed-config/docs/`](../../examples/completed-config/docs/)
>
> Reference implementations show the structure and depth expected for each file.

#### 📚 Official Docs

- [Custom Instructions](https://code.visualstudio.com/docs/copilot/customization/custom-instructions) — How instructions files work and best practices
- [Context Engineering Guide - Step 1](https://code.visualstudio.com/docs/copilot/guides/context-engineering-guide#_step-1-curate-project-wide-context) — Official guidance on curating project context

---

> 💡 **Best Practice: Keep Context Fresh**
>
> Set a calendar reminder to review these files quarterly. Stale context leads to outdated suggestions. When you update patterns in code, update the documentation. Use the AI to help: "Review ARCHITECTURE.md against our current codebase and suggest updates."

---

## 🔗 What You Built

**In this exercise:**
- `fanhub/docs/PRODUCT.md` — Product vision that guides feature decisions
- `fanhub/docs/ARCHITECTURE.md` — System architecture that ensures consistent patterns
- `fanhub/docs/CONTRIBUTING.md` — Developer guidelines that maintain code quality
- Updated `copilot-instructions.md` — Integrated references so AI always has context

**How it compounds:**

| Previous Modules | This Exercise | Combined Power |
|------------------|---------------|----------------|
| Module 1: Repository instructions | Project documentation suite | Baseline + detailed architectural context |
| Module 4: Path-based instructions | Integrated documentation refs | File-specific rules + project-wide knowledge |
| Module 7: Custom agents | Living documentation | Agents can reference authoritative project docs |

---

## ➡️ Next Up

**[Exercise 13.2: Building a Planning Agent](exercise-13.2.md)** — Create a specialized agent that generates implementation plans using your project context.

> *"Now that the AI knows our architecture, how do we make sure it plans features that actually fit our patterns before writing code?"*
> — Rafael, ready to transform requirements into actionable plans

---
