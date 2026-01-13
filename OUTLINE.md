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
| **Jordan** | 12 years | Platform, deployment | Manual ops → Automated ops → Systems at scale |

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

**Learning Objectives:**
- Create architecture documentation that provides context for AI suggestions
- Build a `.github/copilot-instructions.md` that standardizes team patterns
- Experience the dramatic improvement in suggestion quality
- Understand why "clarity is the new syntax" isn't just a slogan

**Artifacts Created**:
- `docs/ARCHITECTURE.md` — System design for FanHub
- `.github/copilot-instructions.md` — Team coding patterns

**Key Insight**: Same question, dramatically better answers. Context is everything. Documentation isn't something you write AFTER the code works—it's the FIRST thing you create.

---

### Module 2: Agent Plan Mode

**Time**: 90 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Master structured thinking with agent plan mode. Learn to use AI to help you *think*, not just *type*.

**Story**: Monday 10:30 AM. Sarah introduces planning before implementation. The team learns systematic AI collaboration—using plan mode to ask clarifying questions and create structured approaches before jumping into code.

**Learning Objectives:**
- Understand the difference between agent plan mode and implementation mode
- Use plan mode to ask clarifying questions before implementing
- Save planning results to files for team collaboration
- Apply iterative planning workflows to both code and Copilot configuration
- Experience how structured thinking improves AI output quality

**Artifacts Created**:
- `docs/FEATURE-PLAN-*.md` — Structured planning examples
- `docs/AGENT-DESIGN-*.md` — Custom agent design processes
- `docs/AI-PLANNING-WORKFLOWS.md` — Systematic planning templates
- `docs/TEAM-AI-COLLABORATION-STANDARDS.md` — Team AI usage standards

**Key Insight**: Plan mode transforms AI from reactive to strategic. Use AI to help configure AI. Planning speeds you up by ensuring first-try success.

---

### Module 3: Custom Prompts

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Build a reusable prompt library. Create templates for testing and specifications.

**Story**: Monday 11:30 AM. Elena creates test prompts, Rafael builds spec-to-code templates.

💡 **Plan Mode Tip**: Use plan mode to design prompt structure and test different approaches before implementation.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 3.1 | Test Generation Prompts | Elena | 30 min | `.github/prompts/test-generation.md` |
| 3.2 | Spec-to-Code Prompts | Rafael | 30 min | `.github/prompts/spec-to-code.md` |
| 3.3 | Build Episode Guide | Team | 30 min | Using prompts together |

**Artifacts Created**:
- `.github/prompts/test-generation.md` — Elena's comprehensive test template
- `.github/prompts/spec-to-code.md` — Rafael's spec-to-implementation workflow

**Key Insight**: Prompt libraries make expertise reusable. Solved problems stay solved.

---

### Module 4: Custom Instructions

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Create file-scoped instructions via `applyTo` patterns. Context-aware code generation that activates automatically.

**Story**: Monday 2:00 PM. Character Detail v2 will touch tests, API routes, Docker configs, React components. Each file type needs different expertise. *"Can we prepare Copilot to switch contexts automatically?"* Elena asks.

**Learning Objectives:**
- Understand the hierarchy of Copilot instructions (repo → folder → file)
- Create file-type-specific instructions using `applyTo` patterns
- Create path-based instructions for different parts of your codebase
- Build specialized "expertise" instructions for domains like security, deployment, and testing
- See how instructions compound and combine
- Complete the Character Detail v2 prerequisites

**Artifacts Created**:
- `.github/instructions/testing.instructions.md` — Elena's QA patterns
- `.github/instructions/api-routes.instructions.md` — David's REST conventions
- `.github/instructions/infrastructure.instructions.md` — Jordan's security checklist
- `.github/instructions/react-components.instructions.md` — Priya's component patterns

**Key Insight**: Instructions activate based on file patterns—context without prompting. Custom prompts are opt-in; custom instructions are automatic.

---

### Module 5: Agent Skills

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Create Agent Skills with domain-specific knowledge that Copilot loads automatically when relevant.

**Story**: Monday 3:30 PM. The team has file-specific patterns, but what about business rules that aren't file-specific? *"How do I teach Copilot our domain knowledge—not just code patterns, but FanHub's data model?"* Elena asks.

**Learning Objectives:**
- Understand what Agent Skills are and how they differ from instructions and prompts
- Create custom skills with YAML frontmatter and markdown instructions
- Include scripts and resources within skill directories
- See how Copilot automatically loads skills when relevant
- Build domain-specific validation skills for the FanHub data model
- Leverage community skills from existing repositories

**Artifacts Created**:
- `.github/skills/tv-show-data-validator/` — Domain data validation skill
- `.github/skills/feature-requirements/` — Product standards skill
- `docs/SKILLS-DESIGN-PLAN.md` — Skill design framework
- `docs/SKILLS-LIBRARY-STRATEGY.md` — Complete skills ecosystem strategy

**Key Insight**: Skills encode domain expertise as AI-accessible knowledge that loads automatically when relevant. Instructions = code patterns. Skills = business rules and domain knowledge.

---

### Module 6: MCP Servers — Extending Copilot's Reach

**Time**: 45 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Give Copilot hands—connect to databases, APIs, and external systems via Model Context Protocol.

**Story**: Monday 4:30 PM. *"The validator skill knows our data FORMAT is correct, but it can't check if the character actually EXISTS in our database. For Character Detail v2 to work perfectly, Copilot needs to SEE our actual data."* Elena realizes Copilot needs external system access.

**Learning Objectives:**
- Understand what MCP is and how it extends Copilot's capabilities
- Configure MCP servers in workspace `mcp.json` files
- Use MCP tools in Copilot chat and agent mode
- Connect to databases via MCP
- Understand security considerations for MCP server trust

**Artifacts Created**:
- `.vscode/mcp.json` — MCP server configuration
- `fanhub/docs/MCP-STRATEGY.md` — MCP planning document
- `fanhub/docs/MCP-GOVERNANCE.md` — Security policies
- `fanhub/docs/AI-STACK.md` — Complete customization documentation

**Key Insight**: MCP transforms Copilot from "knows things" to "can do things"—verify data, check status, interact with systems. Skills = knowledge. MCP = actions.

---

### Module 7: Custom Agents — THE PAYOFF

**Time**: 60 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> This is the payoff—create autonomous agents that use ALL your customization to build complete features.

**Story**: Monday 5:00 PM. *"We've spent all day building context—instructions, prompts, custom instructions, skills, MCP connections. Now let's see what an agent can do with ALL of that in place."* David says, ready for the payoff moment.

**Learning Objectives:**
- Understand the difference between Chat, Edit, and Agent modes
- Create custom agents with specialized capabilities
- Experience the "payoff" of layered customization
- Use agent mode with full context (instructions + skills + MCP)
- Watch an agent build the complete Character Detail v2 feature autonomously

**Artifacts Created**:
- `agents/architecture-reviewer/` — Custom architecture review agent
- `agents/devops-reviewer/` — Custom DevOps review agent
- Complete Character Detail v2 feature (episodes, quotes, related characters, favorites)

**Key Insight**: Early morning Copilot gave generic suggestions. Now with all context layers, watch an agent build a complete feature with episodes, quotes, related characters. This is the compounding effect.

---

### Module 8: GitHub.com Copilot for Product Management

**Time**: 50-60 minutes | **Difficulty**: 🌿 | **Tier**: 🏢 (Enterprise features emphasized)

> Bridge product and engineering without VS Code. Rafael validates delivery, updates docs, and communicates with stakeholders—all from GitHub.com.

**Story**: Monday 3:30 PM. Character Detail v2 just shipped. Rafael needs to validate the implementation matches requirements, update user documentation, answer stakeholder questions about timeline, and plan the next sprint. He doesn't have VS Code—and doesn't need it.

**Learning Objectives:**
- Transform vague feature requests into well-structured GitHub Issues using Copilot
- Validate PR implementations against original requirements using PR summaries
- Update user documentation quickly using GitHub.com's web editor with Copilot
- Translate technical complexity into business-friendly stakeholder communication
- Use Copilot to analyze backlog patterns for data-informed prioritization

**Artifacts Created**:
- Refined feature issues with clear acceptance criteria
- Product validation comments on PRs
- Updated user documentation (using GitHub.com web editor, not github.dev)
- Business-friendly stakeholder communication
- Prioritized backlog with data-driven rationale

**Key Insight**: Product managers can stay proximate to implementation without local dev environments. GitHub.com Copilot bridges product and engineering—validate continuously, not just at sprint demos.

---

### Module 9: Copilot CLI

**Time**: 60 minutes | **Difficulty**: 🌿 | **Tier**: 💼

> Agentic terminal workflows with the GitHub Copilot CLI. Your AI assistant for Git, shell commands, and GitHub operations.

**Story**: Monday 6:00 PM. Jordan needs to automate deployment workflows and make terminal work less error-prone. Sarah wants to see if CLI tools can reduce context-switching.

**Learning Objectives:**
- Install and configure GitHub Copilot CLI
- Use natural language to generate shell commands
- Execute GitHub operations from the terminal (PRs, issues, workflows)
- Create systematic automation workflows using CLI
- Understand when to use CLI vs VS Code vs Web interfaces

**Artifacts Created**:
- Automated terminal workflow scripts
- CLI-based development process integrations
- Custom CLI agent configurations

**Key Insight**: CLI interfaces enable systematic, repeatable automation of development workflows with AI assistance. Work where you already are—the terminal.

---

### Module 10: Agentic SDLC — The Complete Workflow

**Time**: 90 minutes | **Difficulty**: 🌳 | **Tier**: 🆓

> Orchestrate development across multiple AI interfaces simultaneously. VS Code + GitHub.com + CLI working together.

**Story**: Monday 7:00 PM. *"We've learned each interface individually. Now let's see how they work together in a real SDLC workflow."* The team prepares to orchestrate everything.

**Learning Objectives:**
- Understand multi-interface parallel workflows (VS Code agent + Web review + CLI automation)
- Use agents in multiple contexts simultaneously
- Connect local development, web collaboration, and terminal automation
- Experience the compound effect of all customizations working together
- Ship the complete FanHub application using the full AI-assisted workflow

**Artifacts Created**:
- Complete orchestrated development workflow documentation
- Multi-interface integration patterns
- End-to-end AI-assisted SDLC process

**Key Insight**: The most powerful AI workflows use multiple interfaces in parallel—agents building locally, web reviews happening simultaneously, CLI automation running in the background. This is the systematic approach that scales.

---

### Module 11: Enterprise Patterns — Scaling Copilot Across Teams

**Time**: 90-120 minutes | **Difficulty**: 🌳 | **Tiers**: 🆓 💼 🏢

> Scale your success across the organization. Create standards, measure impact, enable other teams.

**Story**: Tuesday 9:00 AM. Sarah calls an early meeting: "We built something that works. Now we need to make it organizational standard."

**Learning Objectives:**
- Create organization-level instructions that standardize practices across teams
- Establish systematic code review standards for AI-generated code
- Set up knowledge bases (Copilot Spaces 🏢) that enable cross-repo learning
- Implement metrics and tracking to demonstrate ROI
- Build self-service onboarding materials that scale your approach

**Artifacts Created**:
- Organization-level `copilot-instructions.md` template
- `COPILOT-REVIEW-GUIDE.md` — Comprehensive AI code review checklist
- `TEAM-ONBOARDING.md` — Self-service onboarding kit
- Quarterly metrics report template
- Copilot Space configuration (Enterprise tier)

**Key Insight**: Individual success becomes organizational capability. Package your learnings so everyone benefits. Enterprise features (💼 Business/Enterprise, 🏢 Enterprise-only) enable org-wide scaling.

---**Key Insight**: Individual success becomes organizational capability. Package learnings so everyone benefits.

---

## 🎓 Learning Paths

### Full Workshop (11-13 hours)

Complete all 11 core modules in order. The narrative builds progressively.

| Time | Modules | Focus |
|------|---------|-------|
| ~11-13 hours | 0–11 | Build features, ship, scale, and reflect |

---

### Quick Start (4 hours)

Core customization features without the full narrative.

| Order | Module | Key Takeaway |
|-------|--------|--------------|
| 1 | Module 1 | Repository instructions |
| 2 | Module 2 | Custom prompts |
| 3 | Module 3 | Agents |
| 4 | Module 4 | Custom instructions |

---

### Team Lead Track (3 hours)

Focus on establishing practices for your team.

| Order | Module | Focus |
|-------|--------|-------|
| 1 | Module 1 | Team standards |
| 2 | Module 2 | Prompt library |
| 3 | Module 4 | Custom instructions |

---

## 📊 Summary Statistics

### Time by Module

| Module | Time | Cumulative |
|--------|------|-----------|
| 0: Orientation | 30-45 min | 45 min |
| 1: Repository Instructions | 90 min | 2h 15min |
| 2: Agent Plan Mode | 90 min | 3h 45min |
| 3: Custom Prompts | 90 min | 5h 15min |
| 4: Custom Agents | 90 min | 6h 45min |
| 5: Custom Instructions | 90 min | 8h 15min |
| 6: Agent Skills | 90 min | 9h 45min |
| 7: MCP Servers | 75 min | 11h |
| 8: Copilot Web | 90 min | 12h 30min |
| 9: Copilot CLI | 90 min | 14h |
| 10: Agentic SDLC + Ship | 90-120 min | 15h 30min |
| 11: Enterprise Patterns | 90-120 min | 17h |
| **Total** | **~11-13 hours** | |

### Exercises by Tier

| Tier | Count | Percentage |
|------|-------|------------|
| 🆓 Free | 33 | 85% |
| 💼 Business | 4 | 10% |
| 🏢 Enterprise | 2 | 5% |

### Artifacts Created

| Category | Count | Examples |
|----------|-------|----------|
| Documentation | 11 | ARCHITECTURE.md, MCP-STRATEGY.md, AI-STACK.md |
| Prompts | 4 | test-generation.md, spec-to-code.md, infra-preflight.md |
| Agents | 3 | architecture-reviewer, devops-reviewer, fanhub-validator |
| Instructions | 4 | testing, api-routes, infrastructure, components |
| Skills | 2 | tv-show-data-validator, feature-requirements |
| MCP Configs | 1 | .vscode/mcp.json |
| Planning Files | 4 | Feature plans, agent designs, workflows, standards |
| Code | 8+ | Search, analytics dashboard, components |

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
