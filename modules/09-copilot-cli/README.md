# Module 9: GitHub Copilot CLI

> **Core Philosophy**: Clarity beats cleverness—even in the terminal. Your terminal becomes an AI agent that can work on your behalf.

## 📖 Overview

GitHub Copilot CLI is a **powerful AI agent** that lives in your terminal. Unlike the deprecated `gh copilot` extension (which only suggested commands), the new Copilot CLI can:

- **Have interactive conversations** — Start a session with `copilot` and work iteratively
- **Execute multi-step tasks** — Make code changes, create files, run tests
- **Work with GitHub.com** — Create PRs, manage issues, check CI status
- **Run shell commands** — With security controls and approval workflows

**Time**: ~60 minutes  
**Personas**: Jordan (DevOps automation), Marcus (interactive tasks), Sarah (security model)

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Install and configure GitHub Copilot CLI
- Use interactive mode for conversations and tasks
- Use programmatic mode (`-p`) for scripting
- Understand tool approval and security controls
- Customize Copilot CLI with instructions and MCP servers

---

## 📚 Key Concepts

### Two Modes of Use

| Mode | How to Start | Best For |
|------|--------------|----------|
| **Interactive** | `copilot` | Exploratory work, conversations, iterative tasks |
| **Programmatic** | `copilot -p "task"` | Scripts, automation, one-shot tasks |

### The Agentic Difference

| Old `gh copilot` | New `copilot` CLI |
|-----------------|-------------------|
| Suggests commands | Executes tasks |
| Single-turn | Multi-turn conversations |
| Read-only | Can modify files, run commands |
| Commands only | Works with GitHub.com too |

### Security Model

| Layer | Protection |
|-------|------------|
| **Trusted directories** | Must explicitly trust each directory |
| **Tool approval** | Must approve commands before execution |
| **--deny-tool** | Block specific dangerous operations |
| **Scoped permissions** | `--allow-tool` limits what's pre-approved |

---

## 🔨 Exercises

> 📂 **Full exercise content**: [EXERCISES.md](./EXERCISES.md)

### Exercise Overview

| Exercise | Persona | Focus | Time |
|----------|---------|-------|------|
| 1 | Jordan | Installation & Setup | 15 min |
| 2 | Marcus | Interactive Tasks | 15 min |
| 3 | Priya | GitHub.com Integration | 15 min |
| 4 | Jordan | Programmatic Mode | 15 min |
| 5 | David | Customization & MCP | 15 min |
| 6 | Sarah | Security & Best Practices | 10 min |

### Quick Links

- [Exercise 1: CLI Installation](./EXERCISES.md#exercise-1-cli-installation--setup--your-terminal-agent) — Jordan sets up the agent
- [Exercise 4: Programmatic Mode](./EXERCISES.md#exercise-4-programmatic-mode--automating-with-ai) — Jordan's automation scripts
- [Exercise 6: Security](./EXERCISES.md#exercise-6-security--best-practices--safe-agentic-workflows) — Sarah validates the guardrails

---

## 🧑‍💼 Choose Your Path

| Your Role | Recommended Focus | Start Here |
|-----------|------------------|------------|
| **DevOps/Platform** | Installation + Automation | [Jordan's Path](./personas/jordan.md) |
| **Developer** | Interactive tasks + GitHub | [Marcus's Path](./personas/marcus.md) |
| **Security-conscious** | Security model | [Sarah's Path](./personas/sarah.md) |

---

## 📝 Key Takeaways

### The New Paradigm

```
Old: gh copilot → Suggests commands (read-only)
New: copilot CLI → AI Agent (conversations, executes tasks, GitHub integration)
```

### When to Use Copilot CLI

| ✅ Great For | ❌ Consider Alternatives |
|--------------|-------------------------|
| Multi-step tasks | Simple known commands |
| GitHub.com operations | Offline environments |
| Code changes with context | Highly sensitive operations |
| Automation scripts | When you need GUI review |

---

## 📚 Quick Reference

### Installation

```bash
# macOS
brew install github/copilot-cli/copilot

# Windows
winget install GitHub.CopilotCLI

# Authenticate
copilot auth login
```

### Tool Approval Options

| Option | Effect |
|--------|--------|
| `--allow-all-tools` | Allow everything (be careful!) |
| `--allow-tool 'shell(git)'` | Allow only git commands |
| `--deny-tool 'shell(rm)'` | Block rm commands |

### Slash Commands

| Command | Purpose |
|---------|---------|
| `/help` | Show available commands |
| `/model` | Change AI model |
| `/mcp` | View MCP servers |
| `/exit` | End session |

### Official Documentation

- [About GitHub Copilot CLI](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli)
- [Installing GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/set-up/install-copilot-cli)
- [Using GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)

---

## ➡️ Next Steps

Continue to [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) to see how all these tools integrate into the full development lifecycle.

**Review if needed**: [Module 8: Copilot Web](../08-copilot-web/README.md) — Browser-based Copilot features
