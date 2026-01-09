# Build FanHub in 8 Hours: A GitHub Copilot Training Workshop

> **The Challenge**: A skeptical senior developer drops a half-finished fan site on your team and gives you by end of day to ship it. Pick your favorite TV show, make it production-ready, and prove that AI-assisted development is more than just hype.

---

## 🎯 What You'll Build

**FanHub** — A production-ready fan site for YOUR favorite TV show. Starting from a messy, undocumented codebase, you'll transform it into a polished application with:

- ✅ Full authentication and authorization
- ✅ Character, episode, and quote management
- ✅ Advanced search functionality
- ✅ Admin dashboard with CRUD operations
- ✅ Show-specific theming and branding
- ✅ Comprehensive test suite
- ✅ Production deployment pipeline

**The twist**: You'll do it in 8 hours using GitHub Copilot. But not "basic Copilot." You'll learn to configure, customize, and orchestrate AI assistance through:

- **Repository instructions** (`.github/copilot-instructions.md`) — Your team's standards, automatically applied
- **Custom prompts** (`.github/prompts/`) — Reusable templates for common tasks
- **Custom agents** — Specialized AI assistants trained on your domain
- **Custom instructions** (`.github/instructions/`) — File-scoped context via `applyTo` patterns

**The transformation**: Watch Copilot evolve from giving generic, confused suggestions to acting like a team member who understands your architecture, follows your standards, and even knows your show's characters by name.

---

## 📖 The Story: A Day with the TechCorp Team

**Monday, 9:00 AM**: Sarah (skeptical senior dev) throws down the challenge. The team looks at the starter code—it's rough. Generic content, inconsistent patterns, zero documentation. Copilot gives confused suggestions because it has nothing to work with.

**Monday, 9:00 AM - 6:00 PM**: Over the next 8 hours (your time, your pace), you'll follow the team as they:

1. **Configure Copilot** with team standards (watch suggestions improve instantly)
2. **Build a prompt library** for reusable workflows
3. **Create custom agents** that understand the architecture
4. **Add custom instructions** for context-aware code generation
5. **Implement complex features** with all tools working together
6. **Ship and reflect** on the transformation

Each module builds on the previous. Each customization compounds. By the end, you'll have a production app and a completely transformed understanding of AI-assisted development.

---

## 👥 Meet Your Team

Throughout this training, you'll work alongside seven personas representing real developers at different career stages:

- **Sarah** (15 years) — Skeptical senior who demands proof of value
- **Marcus** (5 years) — DevOps dev improving application skills
- **Priya** (1 year) — Recent grad eager to learn
- **David** (20 years) — Seasoned architect concerned about relevance
- **Elena** (8 years) — Quality champion ensuring comprehensive testing
- **Rafael** (10 years) — Product visionary bridging business and tech
- **Jordan** (12 years) — Platform engineer automation-first mindset

**Full personas**: [PERSONAS.md](modules/00-orientation/PERSONAS.md)

You'll see their fears, their breakthroughs, and their evolving perspectives as they discover that AI doesn't replace expertise—it amplifies it.

---

## 🏗️ About This Training

### The Philosophy: Syntax Wizards → Markdown Whisperers

This training embraces the fundamental shift in what makes developers excellent:

**Old metrics**:
- Syntax memorization
- Clever code only you understand
- Fast typing
- Being the "only expert"

**New metrics**:
- Clear articulation of intent
- Code anyone can maintain  
- Fast thinking and design
- Scaling knowledge across the team

**Why it matters**: In the age of AI assistance, the bottleneck isn't "can you write the code?"—it's "do you know what to build?" Clarity of thought beats knowledge of syntax.

### The Four Principles

Every module connects back to these core ideas:

| Principle | Core Message | Applied in FanHub |
|-----------|-------------|-------------------|
| 🔍 **Clarity Beats Cleverness** | Understandable code trumps clever code | Clear component structure anyone can maintain |
| 🎯 **Intent Over Implementation** | Describe WHAT, not HOW | "Add character search" vs "Create a WHERE clause" |
| 📚 **Documentation Is Leverage** | Write once, benefit infinitely | Architecture docs improve every AI interaction |
| ⚖️ **Human Judgment Is Non-Negotiable** | AI proposes, you decide | Elena catches edge cases AI misses |

---

## 📚 Workshop Structure

**Total Time**: 8 hours (self-paced)  
**Format**: 6 progressive modules + supporting materials  
**Style**: Story-driven with hands-on exercises

### Module 0: The Challenge (60 min)
**Monday 9:00 AM**

Meet the team. Get the challenge. Clone the messy FanHub starter. Choose your show. Experience Copilot struggling with an unconfigured codebase—the intentional "before" state that makes the transformation meaningful.

**You'll learn**: Why context and configuration matter

### Module 1: Repository Instructions (90 min)
**Monday 10:00 AM**

David documents the architecture. Marcus creates repository instructions (`.github/copilot-instructions.md`). Everything changes. Ask the same question from Module 0—watch Copilot give show-specific, architecture-aware suggestions.

**You'll learn**: Repository instructions, architecture documentation  
**The transformation**: Generic → Specific  
**Featured**: David, Marcus, Priya

### Module 2: Custom Prompts (90 min)
**Monday 11:30 AM**

Elena creates reusable test prompts. Rafael builds spec-to-code templates. The team starts using `.github/prompts/` for common workflows. Copilot now follows standards AND has templates for repeatable tasks.

**You'll learn**: Custom prompt files, context techniques  
**The transformation**: Manual → Automated  
**Featured**: Elena, Rafael

### Module 3: Custom Agents (90 min)
**Monday 1:00 PM**

David creates an "Architecture Reviewer" custom agent trained on the docs. Jordan builds a "DevOps Helper" agent. Background agents introduced—start a large refactor and work on something else while it runs.

**You'll learn**: Custom agents, background agents, MCP, CLI integration  
**The transformation**: Sequential → Parallel  
**Featured**: David, Jordan

### Module 4: Custom Instructions (90 min)
**Monday 2:30 PM**

Priya creates file-scoped instructions using `applyTo` patterns. Testing standards automatically apply to test files. API route conventions apply to API files. Infrastructure patterns apply to DevOps configs.

**You'll learn**: Custom instructions, `applyTo` patterns, file-scoped context  
**The transformation**: Generic → Context-aware  
**Featured**: Elena, Marcus, Jordan, Priya

### Module 5: Agentic SDLC + Ship (90 min)
**Monday 4:00 PM**

The team learns to run agents in parallel across VS Code, GitHub Web, and CLI. While Marcus builds search interactively in VS Code, David kicks off analytics endpoints via GitHub's Coding Agent, and Jordan handles infrastructure in the CLI—all simultaneously. The module concludes with shipping and reflecting on what worked.

**You'll learn**: Multi-interface agent orchestration, parallel development workflows  
**The transformation**: Sequential → Parallel → Ship it  
**Featured**: All personas

---

## 🚀 Getting Started

### Prerequisites

- **VS Code** with **GitHub Copilot** and **GitHub Copilot Chat**
- **Docker Desktop** (for running FanHub locally)
- **Node.js 18+**
- **GitHub account** with Copilot access (Individual, Business, or Enterprise)
- **8 hours** over a day or two (or pace it however you like)

### Installation

```bash
# 1. Fork this repository to your GitHub account
#    (Use the "Fork" button on GitHub)

# 2. Clone your fork
git clone https://github.com/YOUR_USERNAME/CopilotTraining.git
cd CopilotTraining

# 3. Start with Module 0
open modules/00-orientation/README.md
```

### Quick Start

1. **Read [Module 0: The Challenge](modules/00-orientation/README.md)** — Understand the philosophy and meet the team
2. **Clone FanHub** — Get the starter app running locally
3. **Choose your show** — The Office? Stranger Things? Breaking Bad?
4. **Experience the struggle** — Try using Copilot without configuration
5. **Follow the transformation** — Module by module, watch everything improve

---

## 📊 What Makes This Training Different

### ✅ Story-Driven
Not just features—a narrative arc with characters you'll relate to

### ✅ Progressive Complexity
Each module builds on previous work. Compounding value is explicit and demonstrable

### ✅ Real Project
Build something you can show off, not just follow tutorials

### ✅ Configuration-Focused
Goes beyond chat—teaches customization that scales across teams

### ✅ Mindset-Oriented
Addresses fears and hopes. Emphasizes the shift from syntax to clarity

### ✅ Persona-Grounded
Every exercise features someone dealing with realistic challenges

### ✅ "Before/After" Moments
Intentional struggles make transformations meaningful

---

## 🎓 Learning Outcomes

By completing this workshop, you will:

- **Build a production application** with AI assistance in 8 hours
- **Master 4 customization techniques**: repository instructions, custom prompts, custom agents, custom instructions
- **Understand compounding value**: how early configuration pays dividends on every later task
- **Transform your workflow**: from writing code to orchestrating AI
- **Measure success differently**: clarity, scalability, and judgment over syntax
- **Gain confidence**: that your expertise is amplified, not replaced

---

## 📚 Additional Resources

### Official Documentation

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Custom Instructions for Repositories](https://docs.github.com/en/copilot/how-tos/configure-custom-instructions/add-repository-instructions)
- [Custom Prompt Files](https://code.visualstudio.com/docs/copilot/customization/prompt-files)
- [Creating Custom Agents](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent/create-custom-agents)
- [Claude Skills](https://github.blog/changelog/2025-12-18-github-copilot-now-supports-agent-skills/)
- [Copilot CLI](https://docs.github.com/en/copilot/github-copilot-in-the-cli)

### Training Materials

- [PERSONAS.md](modules/00-orientation/PERSONAS.md) — Meet the seven team members
- [OUTLINE.md](OUTLINE.md) — Detailed module breakdown with time estimates
- [RESOURCES.md](RESOURCES.md) — Curated links to blogs, videos, and learning paths

---

## 🤝 For Instructors & Teams

This training works for:

- **Self-paced learning** — Work through at your own speed
- **Team workshops** — Facilitate with [Instructor Guide](docs/INSTRUCTOR-GUIDE.md)
- **Onboarding** — Get new developers productive with AI assistance quickly
- **Upskilling** — Help experienced developers embrace AI confidently

**Customization**: The FanHub project is designed to be themeable. Teams can fork and customize for different domains (sports, music, gaming, etc.).

---

## ❓ FAQ

**Q: Do I need to know React and Node.js?**  
A: Basic familiarity helps, but the focus is on AI assistance techniques that apply to any stack.

**Q: What if I don't have a Copilot subscription?**  
A: You'll need Individual, Business, or Enterprise to complete the exercises. Check with your organization or start a free trial.

**Q: Can I use a different show/theme?**  
A: Absolutely! Pick whatever you're passionate about. That's the point.

**Q: Is this only for VS Code?**  
A: Modules 0-7 focus on VS Code. Appendices cover web and CLI usage.

**Q: What if I get stuck?**  
A: Check [TROUBLESHOOTING.md](docs/TROUBLESHOOTING.md) (coming Phase 4) or open an issue.

**Q: Can I skip Module 0?**  
A: You could, but you'd miss the "why" that makes everything else meaningful. Start there.

---

## 📜 License

This training is open source under the MIT License. Feel free to use, adapt, and share.

---

## 🎬 Ready to Start?

**Your challenge awaits**: [Module 0: The Challenge](modules/00-orientation/README.md)


Monday, 9:00 AM. Sarah is waiting. Let's prove AI-assisted development is the real deal.

---

**Built with ❤️ by developers who believe clarity beats cleverness**
