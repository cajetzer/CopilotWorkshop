# FanHub Workshop: Complete Outline

> **Total Time**: 11-13 hours (self-paced)  
> **Modules**: 11 core modules + orientation  
> **Exercises**: 39+ hands-on exercises  
> **Target Audience**: Developers at all experience levels

---

## 🎯 The Customization Features

This workshop teaches ways to customize GitHub Copilot. Each module progressively adds customization, demonstrating how they compound.

| Feature | What It Does | Introduced In |
|---------|--------------|---------------|
| 📋 **Repository Instructions** | Team patterns in every response | Module 1 |
| 🎯 **Agent Plan Mode** | Structured thinking before implementation | Module 2 |
| 📝 **Custom Prompts** | Reusable, shareable prompt files | Module 3 |
| 🤖 **Custom Agents** | Autonomous task specialists | Module 4 |
| 🎨 **Custom Instructions** | File-scoped context via `applyTo` | Module 5 |
| 🎓 **Agent Skills** | Domain-specific knowledge loaded when relevant | Module 6 |
| 🔌 **MCP Servers** | External system access (databases, APIs) | Module 7 |
| 🏢 **Enterprise Patterns** | Organization-wide standards and governance | Module 11 |

By Module 11, all features work together and you'll scale your success across the organization.

---

## 📊 Legend

### Tier Markers

| Icon | Tier | Description |
|------|------|-------------|
| 🆓 | Free | Available to all Copilot users |
| 💼 | Business | Requires Copilot Business license |
| 🏢 | Enterprise | Requires Copilot Enterprise license |

### Difficulty Markers

| Icon | Difficulty | Description |
|------|-----------|-------------|
| 🌱 | Beginner | Foundational concepts |
| 🌿 | Intermediate | Building on basics |
| 🌳 | Advanced | Complex, multi-tool workflows |

---

## 👥 The FanHub Team

Seven personas guide you through the workshop, each representing real developer archetypes:

| Persona | Experience | Role in Workshop | Key Transformation |
|---------|-----------|------------------|-------------------|
| **Sarah** | 15 years | Sets the challenge, validates results | Skeptic → Believer → Scaling Advocate |
| **David** | 20 years | Architecture, code review | "Will AI replace me?" → "AI amplifies my legacy" |
| **Marcus** | 5 years | DevOps → Application code | Infrastructure only → Full-stack confident → Knowledge sharer |
| **Priya** | 1 year | Learning, UI implementation | Intimidated → Empowered → Documentation contributor |
| **Elena** | 8 years | Testing, quality assurance | AI-skeptical QA → AI-assisted QA → Quality at scale |
| **Rafael** | 10 years | Product, specifications | Requirements → Execution bridge → Enabling all teams |

**Full personas**: [modules/00-orientation/PERSONAS.md](modules/00-orientation/PERSONAS.md)

---

## 📚 Module Map

### Module 0: The Challenge — Building FanHub in 8 Hours

**Time**: 60 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Meet the team. Get the challenge. Experience Copilot without customization—then prepare to transform how you build software.

**Story**: Monday 9:00 AM. Sarah challenges the team to turn a messy contractor project into a production-ready fan site.

**Learning Objectives:**
- Understand **The AI-Assisted Mindset** (Clarity Beats Cleverness, Intent Over Implementation, Documentation Is Leverage, Human Judgment Is Non-Negotiable)
- Master **The Five Practices** (Clarity as Foundation, Documentation as Leverage, Intent Over Implementation, Context is Everything, Iterate and Refine)
- Meet the FanHub project and choose your show theme
- Set up the starter application and verify it runs
- Experience Copilot struggling with an unconfigured codebase (the "before" state)

**Key Insight**: Copilot without context gives generic, confused suggestions. This is the baseline to beat. You need to *feel* the frustration before the transformation is meaningful.

---

### Module 1: Repository Instructions

**Time**: 90 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Create repository instructions and architecture documentation. Watch Copilot transform from confused to context-aware.

**Story**: Monday 10:00 AM. David documents architecture, Sarah creates team standards. The same questions now get dramatically better answers.

**Key Insight**: Same question, dramatically better answers. Context is everything. Documentation isn't something you write AFTER the code works—it's the FIRST thing you create.

---

### Module 2: Agent Plan Mode

**Time**: 90 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Master structured thinking with agent plan mode. Learn to use AI to help you *think*, not just *type*.

**Story**: Monday 10:30 AM. Sarah introduces planning before implementation. The team learns systematic AI collaboration—using plan mode to ask clarifying questions and create structured approaches before jumping into code.

**Key Insight**: Plan mode transforms AI from reactive to strategic. Use AI to help configure AI. Planning speeds you up by ensuring first-try success.

---

### Module 3: Custom Prompts

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Build a reusable prompt library. Create templates for testing and specifications.

**Story**: Monday 11:30 AM. Elena creates test prompts, Rafael builds spec-to-code templates.

💡 **Plan Mode Tip**: Use plan mode to design prompt structure and test different approaches before implementation.

**Key Insight**: Prompt libraries make expertise reusable. Solved problems stay solved.

---

### Module 4: Custom Instructions

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Create file-scoped instructions via `applyTo` patterns. Context-aware code generation that activates automatically.

**Story**: Monday 2:00 PM. Character Detail v2 will touch tests, API routes, Docker configs, React components. Each file type needs different expertise. *"Can we prepare Copilot to switch contexts automatically?"* Elena asks.

**Key Insight**: Instructions activate based on file patterns—context without prompting. Custom prompts are opt-in; custom instructions are automatic.

---

### Module 5: Agent Skills

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Create Agent Skills with domain-specific knowledge that Copilot loads automatically when relevant.

**Story**: Monday 3:30 PM. The team has file-specific patterns, but what about business rules that aren't file-specific? *"How do I teach Copilot our domain knowledge—not just code patterns, but FanHub's data model?"* Elena asks.

**Key Insight**: Skills encode domain expertise as AI-accessible knowledge that loads automatically when relevant. Instructions = code patterns. Skills = business rules and domain knowledge.

---

### Module 6: MCP Servers — Extending Copilot's Reach

**Time**: 45 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Give Copilot hands—connect to databases, APIs, and external systems via Model Context Protocol.

**Story**: Monday 4:30 PM. *"The validator skill knows our data FORMAT is correct, but it can't check if the character actually EXISTS in our database. For Character Detail v2 to work perfectly, Copilot needs to SEE our actual data."* Elena realizes Copilot needs external system access.

**Key Insight**: MCP transforms Copilot from "knows things" to "can do things"—verify data, check status, interact with systems. Skills = knowledge. MCP = actions.

---

### Module 7: Custom Agents — THE PAYOFF

**Time**: 60 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> This is the payoff—create autonomous agents that use ALL your customization to build complete features.

**Story**: Monday 5:00 PM. *"We've spent all day building context—instructions, prompts, custom instructions, skills, MCP connections. Now let's see what an agent can do with ALL of that in place."* David says, ready for the payoff moment.

**Key Insight**: Early morning Copilot gave generic suggestions. Now with all context layers, watch an agent build a complete feature with episodes, quotes, related characters. This is the compounding effect.

---

### Module 8: GitHub.com Copilot for Product Management

**Time**: 50-60 minutes | **Difficulty**: 🌿 | **Tier**: 🏢 (Enterprise features emphasized)

> Bridge product and engineering without VS Code. Rafael validates delivery, updates docs, and communicates with stakeholders—all from GitHub.com.

**Story**: Monday 3:30 PM. Character Detail v2 just shipped. Rafael needs to validate the implementation matches requirements, update user documentation, answer stakeholder questions about timeline, and plan the next sprint. He doesn't have VS Code—and doesn't need it.

**Key Insight**: Product managers can stay proximate to implementation without local dev environments. GitHub.com Copilot bridges product and engineering—validate continuously, not just at sprint demos.

---

### Module 9: Copilot CLI

**Time**: 60 minutes | **Difficulty**: 🌿 | **Tier**: 💼

> Agentic terminal workflows with the GitHub Copilot CLI. Your AI assistant for Git, shell commands, and GitHub operations.

**Story**: Monday 6:00 PM. Marcus needs to automate deployment workflows and make terminal work less error-prone. Sarah wants to see if CLI tools can reduce context-switching.

**Key Insight**: CLI interfaces enable systematic, repeatable automation of development workflows with AI assistance. Work where you already are—the terminal.

---

### Module 10: Agentic SDLC — The Complete Workflow

**Time**: 90 minutes | **Difficulty**: 🌳 | **Tier**: 🆓

> Orchestrate development across multiple AI interfaces simultaneously. VS Code + GitHub.com + CLI working together.

**Story**: Monday 7:00 PM. *"We've learned each interface individually. Now let's see how they work together in a real SDLC workflow."* The team prepares to orchestrate everything.

**Key Insight**: The most powerful AI workflows use multiple interfaces in parallel—agents building locally, web reviews happening simultaneously, CLI automation running in the background. This is the systematic approach that scales.

---

### Module 11: Enterprise Patterns — Scaling Copilot Across Teams

**Time**: 90-120 minutes | **Difficulty**: 🌳 | **Tiers**: 🆓 💼 🏢

> Scale your success across the organization. Create standards, measure impact, enable other teams.

**Story**: Tuesday 9:00 AM. Sarah calls an early meeting: "We built something that works. Now we need to make it organizational standard."

**Key Insight**: Individual success becomes organizational capability. Package your learnings so everyone benefits. Enterprise features (💼 Business/Enterprise, 🏢 Enterprise-only) enable org-wide scaling.

---**Key Insight**: Individual success becomes organizational capability. Package learnings so everyone benefits.

---

## 🔗 Quick Reference

### Key Files

| File | Purpose | Created In |
|------|---------|-----------|
| `.github/copilot-instructions.md` | Team patterns | Module 1 |
| `docs/ARCHITECTURE.md` | System design | Module 1 |
| `docs/AI-PLANNING-WORKFLOWS.md` | Planning templates | Module 2 |
| `.github/prompts/*.md` | Reusable prompts | Module 3 |
| `agents/*/` | Custom agents | Module 4 |
| `.github/instructions/*.md` | File-scoped instructions | Module 5 |
| `.github/skills/*/` | Domain-specific skills | Module 6 |

### The Transformation Journey

| Stage | When | What Changes |
|-------|------|-------------|
| **Before** | Module 0 | Generic, confused suggestions |
| **Foundation** | Module 1 | Architecture-aware, pattern-following |
| **Planning** | Module 2 | Structured AI collaboration, systematic thinking |
| **Automation** | Modules 3-4 | Reusable prompts, autonomous agents |
| **Context-Aware** | Module 5 | File-scoped, pattern-matched instructions |
| **Domain Expertise** | Module 6 | Specialized knowledge via Agent Skills |
| **Integrated** | Modules 7-8 | Web + CLI + local workflows |
| **Complete** | Module 9 | All features compound, ship it |

---

## 🤝 Contributing

This workshop is open for contributions. Areas of opportunity:

- **Additional prompts** for the prompt library
- **More custom agents** for different domains
- **Alternative instruction patterns** as examples
- **Translations** to other languages

See [.github/copilot-instructions.md](.github/copilot-instructions.md) for content guidelines.
