# FanHub Workshop: Complete Outline

> **Total Time**: 10-12 hours (self-paced)  
> **Modules**: 10 core modules + orientation  
> **Exercises**: 34+ hands-on exercises  
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
| 🏢 **Enterprise Patterns** | Organization-wide standards and governance | Module 10 |

By Module 10, all features work together and you'll scale your success across the organization.

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

### Module 0: Orientation — The Challenge

**Time**: 30–45 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Meet the team. Get the challenge. Experience Copilot without customization.

**Story**: Monday 9:00 AM. Sarah drops a messy fan site on the team's desk.

| # | Exercise | Persona | Time | What You'll Experience |
|---|----------|---------|------|----------------------|
| 0.1 | The Challenge | Sarah | 15 min | Understand the sprint goals |
| 0.2 | Clone & Explore | All | 15 min | See the "before" state |
| 0.3 | Copilot Without Context | Priya | 15 min | Watch Copilot struggle |

**Key Insight**: Copilot without context gives generic, confused suggestions. This is the baseline to beat.

---

### Module 1: Repository Instructions

**Time**: 90 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Create repository instructions and architecture documentation. Watch Copilot transform instantly.

**Story**: Monday 10:00 AM. David documents architecture, Marcus creates team instructions.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 1.1 | Architecture Documentation | David | 30 min | ARCHITECTURE.md |
| 1.2 | Repository Instructions | Marcus | 30 min | `.github/copilot-instructions.md` |
| 1.3 | The Transformation | Priya | 30 min | See the "after" |

**Artifacts Created**:
- `docs/ARCHITECTURE.md` — System design for FanHub
- `.github/copilot-instructions.md` — Team coding patterns

**Key Insight**: Same question, dramatically better answers. Context is everything.

---

### Module 2: Agent Plan Mode

**Time**: 90 minutes | **Difficulty**: 🌱 | **Tier**: 🆓

> Master structured thinking with agent plan mode. Learn to use AI to help configure AI.

**Story**: Monday 10:30 AM. Sarah introduces planning before implementation. Team learns systematic AI collaboration.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 2.1 | Plan Before You Code | Sarah | 20 min | Planning-to-implementation flow |
| 2.2 | Iterate on Configuration | David | 25 min | Agent design with plan mode |
| 2.3 | Plan Development Workflows | Marcus | 25 min | Systematic AI collaboration |
| 2.4 | Plan Mode Integration Workshop | Team | 20 min | Team alignment and standards |

**Artifacts Created**:
- `docs/FEATURE-PLAN-watched-episodes.md` — Structured planning example
- `docs/AGENT-DESIGN-architecture-assistant.md` — Custom agent design process
- `docs/AI-PLANNING-WORKFLOWS.md` — Systematic planning templates
- `docs/TEAM-AI-COLLABORATION-STANDARDS.md` — Team AI usage standards

**Key Insight**: Plan mode transforms AI from reactive to strategic. Use AI to think, not just type.

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

### Module 4: Custom Agents

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓/💼

> Create custom agents for autonomous tasks. Learn Agent Mode and CLI integration.

**Story**: Monday 1:00 PM. Marcus discovers Agent Mode, David creates custom agents.

💡 **Plan Mode Tip**: Use plan mode to design agent personalities and capabilities before creating custom agents.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 4.1 | Agent Mode Fundamentals | Marcus | 20 min | Agent Mode workflow |
| 4.2 | Custom Architecture Agent | David | 30 min | `agents/architecture-reviewer/` |
| 4.3 | Background Agents | David | 20 min | 🏢 Long-running tasks |

**Artifacts Created**:
- `agents/architecture-reviewer/` — Custom architecture review agent
- `agents/devops-reviewer/` — Custom DevOps review agent

**Key Insight**: Agents handle autonomous multi-step tasks. Work in parallel.

---

### Module 5: Custom Instructions

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> File-scoped instructions via `applyTo` patterns. Context-aware code generation.

**Story**: Monday 2:30 PM. The team creates instructions that activate automatically.

💡 **Plan Mode Tip**: Use plan mode to analyze codebase patterns and generate tailored instruction configurations.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 5.1 | Testing Instructions | Elena | 25 min | `**/*.test.ts` patterns |
| 5.2 | API Route Instructions | David | 25 min | `src/api/**` patterns |
| 5.3 | Infrastructure Instructions | Jordan | 25 min | DevOps file patterns |
| 5.4 | Component Instructions | Priya | 15 min | React component patterns |

**Artifacts Created**:
- `.github/instructions/testing.instructions.md`
- `.github/instructions/api-routes.instructions.md`
- `.github/instructions/infrastructure.instructions.md`
- `.github/instructions/react-components.instructions.md`

**Key Insight**: Instructions activate based on file patterns—context without prompting.

---

### Module 6: Agent Skills

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Create Agent Skills with domain-specific knowledge that Copilot loads automatically when relevant.

**Story**: Monday 4:00 PM. Elena and Rafael teach Copilot FanHub's domain expertise through specialized skills.

💡 **Plan Mode Tip**: Use plan mode to design skill structures, identify domain patterns, and create systematic validation workflows.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 6.1 | Explore Community Skills | Elena | 20 min | Learning from anthropics/skills and awesome-copilot |
| 6.2 | TV Show Data Validator | Elena | 25 min | `.github/skills/tv-show-data-validator/` |
| 6.3 | Feature Requirements Skill | Rafael | 25 min | `.github/skills/feature-requirements/` |
| 6.4 | Skills Library Strategy | Team | 20 min | Comprehensive skills ecosystem planning |

**Artifacts Created**:
- `.github/skills/tv-show-data-validator/` — Domain data validation skill
- `.github/skills/feature-requirements/` — Product standards skill
- `docs/SKILLS-DESIGN-PLAN.md` — Skill design framework
- `docs/SKILLS-LIBRARY-STRATEGY.md` — Complete skills ecosystem strategy

**Key Insight**: Skills encode domain expertise as AI-accessible knowledge that loads automatically when relevant.

---

### Module 7: Copilot Web

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 💼

> Use Copilot where code lives: PRs, issues, GitHub.com

**Story**: Monday 5:00 PM. Team learns web-based AI workflows and integration strategies.

💡 **Plan Mode Tip**: Use plan mode to plan web-based workflows and integration strategies before implementing.

| # | Exercise | Persona | Time | Focus |
|---|----------|---------|------|-------|
| 7.1 | PR Description Generation | David | 20 min | Auto-generate PR summaries |
| 7.2 | Code Review with Copilot | Sarah | 25 min | AI-assisted review workflows |
| 7.3 | Issue Enhancement | Rafael | 25 min | Better issue descriptions |
| 7.4 | Web Workflow Integration | Team | 20 min | Combining web and local workflows |

**Artifacts Created**:
- Automated PR templates and review workflows
- Enhanced issue descriptions with AI assistance
- Integrated web-to-local development processes

**Key Insight**: Web interfaces extend AI collaboration beyond the editor to the entire development lifecycle.

---

### Module 8: Copilot CLI

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 💼

> Agentic terminal workflows with the GitHub Copilot CLI

**Story**: Monday 5:30 PM. Jordan automates terminal workflows and creates systematic CLI approaches.

💡 **Plan Mode Tip**: Use plan mode to design CLI automation scripts and systematic pipeline workflows.

| # | Exercise | Persona | Time | Focus |
|---|----------|---------|------|-------|
| 8.1 | CLI Installation & Setup | Jordan | 15 min | Installing and first interactive session |
| 8.2 | Interactive Terminal Tasks | Marcus | 20 min | Agent-style task execution |
| 8.3 | GitHub.com Integration | Jordan | 20 min | PRs, issues, and workflows from terminal |
| 8.4 | Programmatic Automation | Jordan | 20 min | Scripted automation workflows |
| 8.5 | CLI Customization | Team | 15 min | Instructions and custom agents for CLI |

**Artifacts Created**:
- Automated terminal workflows and scripts
- CLI-based development process integrations
- Custom CLI agents and automation patterns

**Key Insight**: CLI interfaces enable systematic automation of development workflows with AI assistance.

---

### Module 9: Agentic SDLC + Ship

**Time**: 90-120 minutes | **Difficulty**: 🌳 | **Tier**: 🆓

> Run agents simultaneously across VS Code, Web, and CLI. Ship and reflect.

**Story**: Monday 6:00 PM. The team orchestrates all their AI tools, ships the complete FanHub, and reflects on their transformation.

💡 **Plan Mode Tip**: Use plan mode to orchestrate the entire development lifecycle and coordinate multiple AI tools.

| # | Exercise | Persona | Time | Focus |
|---|----------|---------|------|-------|
| 9.1 | VS Code Agent Orchestration | Marcus | 25 min | Coordinating multiple local agents |
| 9.2 | Multi-Interface Workflows | David | 25 min | VS Code + Web + CLI integration |
| 9.3 | Quality Assurance Integration | Elena | 20 min | AI-assisted testing and validation |
| 9.4 | The Complete Ship | All | 20 min | Deploy integrated FanHub with full AI workflow |
| 9.5 | Sprint Retrospective | Sarah | 15 min | Reflect on transformation and learnings |
| 9.6 | Future Planning | Team | 15 min | Plan continued AI integration strategies |

**Artifacts Created**:
- Complete FanHub application with all AI integrations
- Comprehensive team AI workflow documentation
- Retrospective and future planning materials

**Key Insight**: All customization features compound. The systematic approach scales to entire development lifecycles.

---

### Module 10: Enterprise Patterns — Scaling Copilot Across Teams

**Time**: 90-120 minutes | **Difficulty**: 🌳 | **Tiers**: 🆓 💼 🏢

> Scale your success across the organization. Create standards, measure impact, enable other teams.

**Story**: Tuesday 9:00 AM. Sarah calls an early meeting: "We built something that works. Now we need to make it organizational standard."

| # | Exercise | Persona | Time | Enterprise Feature |
|---|----------|---------|------|-------------------|
| 10.1 | Organization Instructions | Rafael + Sarah | 25 min | 💼 Org-level standards |
| 10.2 | Code Review Standards | Elena + David | 25 min | 🆓 AI code review checklist |
| 10.3 | Copilot Spaces Setup | Jordan + David | 25 min | 🏢 Cross-repo knowledge bases |
| 10.4 | Metrics Dashboard | Jordan + Sarah | 25 min | 💼 Usage tracking and ROI |
| 10.5 | Onboarding Kit | Marcus + Priya | 25 min | 🆓 Team enablement templates |

**Artifacts Created**:
- Organization-level `copilot-instructions.md` template
- `COPILOT-REVIEW-GUIDE.md` — Comprehensive AI code review checklist
- `TEAM-ONBOARDING.md` — Self-service onboarding kit
- Quarterly metrics report template
- Copilot Space configuration (Enterprise)

**Key Insight**: Individual success becomes organizational capability. Package learnings so everyone benefits.

---

## 🎓 Learning Paths

### Full Workshop (9-10 hours)

Complete all 9 core modules in order. The narrative builds progressively.

| Time | Modules | Focus |
|------|---------|-------|
| ~7-8 hours | 0–5 | Build features, ship, and reflect |

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
| 7: Copilot Web | 90 min | 11h 15min |
| 8: Copilot CLI | 90 min | 12h 45min |
| 9: Agentic SDLC + Ship | 90-120 min | 14h 15min |
| **Total** | **~9-10 hours** | |

### Exercises by Tier

| Tier | Count | Percentage |
|------|-------|------------|
| 🆓 Free | 28 | 88% |
| 💼 Business | 3 | 9% |
| 🏢 Enterprise | 1 | 3% |

### Artifacts Created

| Category | Count | Examples |
|----------|-------|----------|
| Documentation | 8 | ARCHITECTURE.md, AI-PLANNING-WORKFLOWS.md, LEARNINGS.md |
| Prompts | 3 | test-generation.md, spec-to-code.md |
| Agents | 2 | architecture-reviewer, devops-reviewer |
| Instructions | 4 | testing, api-routes, infrastructure, components |
| Skills | 2 | tv-show-data-validator, feature-requirements |
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
