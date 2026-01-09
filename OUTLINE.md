# FanHub Workshop: Complete Outline

> **Total Time**: 7-8 hours (self-paced)  
> **Modules**: 5 core modules + 2 optional appendices  
> **Exercises**: 20 hands-on exercises  
> **Target Audience**: Developers at all experience levels

---

## 🎯 The Four Customization Features

This workshop teaches four ways to customize GitHub Copilot. Each module progressively adds customization, demonstrating how they compound.

| Feature | What It Does | Introduced In |
|---------|--------------|---------------|
| 📋 **Repository Instructions** | Team patterns in every response | Module 1 |
| 📝 **Custom Prompts** | Reusable, shareable prompt files | Module 2 |
| 🤖 **Custom Agents** | Autonomous task specialists | Module 3 |
| 🎨 **Custom Instructions** | File-scoped context via `applyTo` | Module 4 |

By Module 5, all features work together and you'll ship your complete workflow.

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
| **Sarah** | 15 years | Sets the challenge, validates results | Skeptic → Believer |
| **David** | 20 years | Architecture, code review | "Will AI replace me?" → "AI amplifies me" |
| **Marcus** | 5 years | DevOps → Application code | Infrastructure only → Full-stack confident |
| **Priya** | 1 year | Learning, UI implementation | Intimidated → Empowered |
| **Elena** | 8 years | Testing, quality assurance | AI-skeptical QA → AI-assisted QA |
| **Rafael** | 10 years | Product, specifications | Requirements → Execution bridge |
| **Jordan** | 12 years | Platform, deployment | Manual ops → Automated ops |

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

### Module 2: Custom Prompts

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> Build a reusable prompt library. Create templates for testing and specifications.

**Story**: Monday 11:30 AM. Elena creates test prompts, Rafael builds spec-to-code templates.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 2.1 | Test Generation Prompts | Elena | 30 min | `.github/prompts/test-generation.md` |
| 2.2 | Spec-to-Code Prompts | Rafael | 30 min | `.github/prompts/spec-to-code.md` |
| 2.3 | Build Episode Guide | Team | 30 min | Using prompts together |

**Artifacts Created**:
- `.github/prompts/test-generation.md` — Elena's comprehensive test template
- `.github/prompts/spec-to-code.md` — Rafael's spec-to-implementation workflow

**Key Insight**: Prompt libraries make expertise reusable. Solved problems stay solved.

---

### Module 3: Custom Agents

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓/💼

> Create custom agents for autonomous tasks. Learn Agent Mode and CLI integration.

**Story**: Monday 1:00 PM. Marcus discovers Agent Mode, David creates custom agents.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 3.1 | Agent Mode Fundamentals | Marcus | 20 min | Agent Mode workflow |
| 3.2 | Custom Architecture Agent | David | 30 min | `agents/architecture-reviewer/` |
| 3.3 | Background Agents | David | 20 min | 🏢 Long-running tasks |

**Artifacts Created**:
- `agents/architecture-reviewer/` — Custom architecture review agent
- `agents/devops-reviewer/` — Custom DevOps review agent

**Key Insight**: Agents handle autonomous multi-step tasks. Work in parallel.

---

### Module 4: Custom Instructions

**Time**: 90 minutes | **Difficulty**: 🌿 | **Tier**: 🆓

> File-scoped instructions via `applyTo` patterns. Context-aware code generation.

**Story**: Monday 2:30 PM. The team creates instructions that activate automatically.

| # | Exercise | Persona | Time | Customization Feature |
|---|----------|---------|------|----------------------|
| 4.1 | Testing Instructions | Elena | 25 min | `**/*.test.ts` patterns |
| 4.2 | API Route Instructions | David | 25 min | `src/api/**` patterns |
| 4.3 | Infrastructure Instructions | Jordan | 25 min | DevOps file patterns |
| 4.4 | Component Instructions | Priya | 15 min | React component patterns |

**Artifacts Created**:
- `.github/instructions/testing.instructions.md`
- `.github/instructions/api-routes.instructions.md`
- `.github/instructions/infrastructure.instructions.md`
- `.github/instructions/react-components.instructions.md`

**Key Insight**: Instructions activate based on file patterns—context without prompting.

---

### Module 5: Agentic SDLC + Ship

**Time**: 90-120 minutes | **Difficulty**: 🌳 | **Tier**: 🆓

> Run agents simultaneously across VS Code, Web, and CLI. Ship and reflect.

**Story**: Monday 4:00 PM. The team orchestrates multiple agents, then ships.

| # | Exercise | Persona | Time | Focus |
|---|----------|---------|------|-------|
| 5.1 | VS Code Agent Mode | Marcus | 25 min | Interactive feature development |
| 5.2 | GitHub Web Agent | David | 25 min | Background autonomous PRs |
| 5.3 | Copilot CLI | Jordan | 20 min | Terminal/infrastructure tasks |
| 5.4 | The Convergence | All | 15 min | Merge parallel work streams |
| 5.5 | Checkpoints | Sarah | 15 min | Safety net for agent work |
| 5.6 | Debug View | David | 15 min | Understanding AI behavior |

**Artifacts Created**:
- Parallel agent workflows
- Sprint retrospective and celebration

**Key Insight**: Parallel agents multiply productivity. Checkpoints and debug view keep you in control.

---

## 📎 Appendices (Optional)

### Appendix A: Copilot on the Web

**Time**: 45 minutes | **Tier**: 💼

> Use Copilot where code lives: PRs, issues, GitHub.com

| # | Exercise | Focus |
|---|----------|-------|
| A.1 | PR Description Generation | Auto-generate PR summaries |
| A.2 | Code Review with Copilot | Review assistance |
| A.3 | Issue Enhancement | Better issue descriptions |

---

### Appendix B: GitHub Copilot CLI

**Time**: 60-75 minutes | **Tier**: 💼 Pro / Pro+ / Business / Enterprise

> Agentic terminal workflows with the new `copilot` CLI

| # | Exercise | Focus |
|---|----------|-------|
| B.1 | CLI Installation & Setup | Installing and first interactive session |
| B.2 | Interactive Tasks | Agent-style task execution |
| B.3 | GitHub.com Integration | PRs, issues, and workflows from terminal |
| B.4 | Programmatic Mode | Scripted automation with `-p` |
| B.5 | Customization & MCP | Instructions, servers, and agents |
| B.6 | Security & Best Practices | Safe agentic workflows |

---

## 🎓 Learning Paths

### Full Workshop (7-8 hours)

Complete all 5 core modules in order. The narrative builds progressively.

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
| 2: Custom Prompts | 90 min | 3h 45min |
| 3: Custom Agents | 90 min | 5h 15min |
| 4: Custom Instructions | 90 min | 6h 45min |
| 5: Agentic SDLC + Ship | 90-120 min | 8h 45min |
| **Total** | **~7-8 hours** | |

### Exercises by Tier

| Tier | Count | Percentage |
|------|-------|------------|
| 🆓 Free | 21 | 88% |
| 💼 Business | 2 | 8% |
| 🏢 Enterprise | 1 | 4% |

### Artifacts Created

| Category | Count | Examples |
|----------|-------|----------|
| Documentation | 6 | ARCHITECTURE.md, RUNBOOK.md, LEARNINGS.md |
| Prompts | 3 | test-generation.md, spec-to-code.md |
| Agents | 2 | architecture-reviewer, devops-reviewer |
| Instructions | 4 | testing, api-routes, infrastructure, components |
| Code | 8+ | Search, analytics dashboard, components |

---

## 🔗 Quick Reference

### Key Files

| File | Purpose | Created In |
|------|---------|-----------|
| `.github/copilot-instructions.md` | Team patterns | Module 1 |
| `docs/ARCHITECTURE.md` | System design | Module 1 |
| `.github/prompts/*.md` | Reusable prompts | Module 2 |
| `agents/*/` | Custom agents | Module 3 |
| `.github/instructions/*.md` | File-scoped instructions | Module 4 |

### The Transformation Journey

| Stage | When | What Changes |
|-------|------|-------------|
| **Before** | Module 0 | Generic, confused suggestions |
| **Foundation** | Module 1 | Architecture-aware, pattern-following |
| **Automation** | Module 2-3 | Reusable prompts, autonomous agents |
| **Context-Aware** | Module 4 | File-scoped, pattern-matched instructions |
| **Complete** | Module 5 | All features compound, ship it |

---

## 🤝 Contributing

This workshop is open for contributions. Areas of opportunity:

- **Additional prompts** for the prompt library
- **More custom agents** for different domains
- **Alternative instruction patterns** as examples
- **Translations** to other languages

See [.github/copilot-instructions.md](.github/copilot-instructions.md) for content guidelines.
