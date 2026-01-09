# Sarah's Path: Copilot CLI

## 🎯 Your Focus: Understanding the Security Model

Sarah, this module addresses your concerns about AI agents running commands on your machine. Before you trust any tool with execution capabilities, you need to understand the guardrails. Copilot CLI's security model is actually well thought out—let's examine it.

**Your exercise**: 6 (Security & Best Practices)  
**Time**: ~10 minutes  
**Theme**: From "this seems dangerous" to "the guardrails are solid"

---

## Your Journey in This Module

```
Sarah's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "An AI that runs shell commands? What stops it from rm -rf /?" │
│                         ↓                                       │
│  Examines trusted directories, tool approval, deny options      │
│                         ↓                                       │
│  "The trust model is well thought out. I can work with this."   │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 6: Security & Best Practices — "Safe Agentic Workflows"

### 📖 The Story

**Sarah** is intrigued by Copilot CLI's capabilities but wary of giving an AI agent the ability to run shell commands and modify files. 

*"What stops it from `rm -rf /`?"* she wonders.

Let's explore the security model.

### ❌ The "Before" — What Concern Looks Like

Without understanding security:
- Fear of AI running dangerous commands
- Uncertainty about what data is sent where
- No clear guardrails on agent behavior
- "I'll just not use it" avoidance

### 🎯 Objective

Understand Copilot CLI's security model and establish safe usage patterns.

### 📋 Steps

1. **Understand trusted directories**

   When you first start Copilot CLI in a directory, it asks:
   ```
   Do you trust the files in /path/to/project?
   1. Yes, for this session only
   2. Yes, for this and future sessions
   ```
   
   **Best practice**: Only choose option 2 for project directories you control.

2. **Review trusted directories**

   Check `~/.copilot/config.json`:
   ```json
   {
     "trusted_folders": [
       "/home/user/projects/my-app"
     ]
   }
   ```
   
   Remove any you don't want permanently trusted.

3. **Understand tool approval**

   By default, Copilot asks before:
   - Running shell commands
   - Modifying files
   - Using MCP server tools
   
   This is your checkpoint.

4. **Practice safe approval habits**

   When Copilot asks to run a command:
   1. **Read the command** — What will it actually do?
   2. **Consider scope** — Does it affect more than intended?
   3. **Session vs. one-time** — Do you want to allow this always?

5. **Use deny-tool for safety**

   Create an alias for safer interactive use:
   ```bash
   alias copilot-safe="copilot --deny-tool 'shell(rm)' --deny-tool 'shell(git push)'"
   ```
   
   This prevents accidental deletions and pushes.

6. **Understand the risk of --allow-all-tools**

   ```bash
   # ⚠️ This gives Copilot full access
   copilot -p "clean up this project" --allow-all-tools
   ```
   
   Only use in sandboxed environments or when you fully trust the prompt.

7. **Never run from home directory**

   ```bash
   # ❌ Don't do this
   cd ~
   copilot
   
   # ✅ Do this instead
   cd ~/projects/specific-project
   copilot
   ```
   
   Limiting scope limits risk.

### ✅ Success Criteria

- [ ] Understand the trusted directory system
- [ ] Know how tool approval works
- [ ] Created a safe alias or workflow
- [ ] Know when --allow-all-tools is appropriate
- [ ] Feel confident about Copilot CLI's security model

### ✨ The "After" — The Transformation

**Before understanding security**: "This seems dangerous, I won't use it"  
**After understanding security**: "The guardrails are solid, I can use this confidently"

### 📚 Official Docs

- [About GitHub Copilot CLI - Security considerations](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#security-considerations)
- [About GitHub Copilot CLI - Trusted directories](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#trusted-directories)
- [Responsible use of GitHub Copilot CLI](https://docs.github.com/en/enterprise-cloud@latest/copilot/responsible-use/copilot-cli)

### 💭 Sarah's Transformation

*"I was ready to dismiss this as a security nightmare. But the trust model is actually well thought out—you have to explicitly trust directories, approve commands, and can deny dangerous operations. It's not just 'let the AI do whatever.' The approval workflow means I review every action before it happens. That I can work with."*

---

## 🎯 Sarah's Module Summary

### Security Layers

| Layer | What It Does |
|-------|--------------|
| **Trusted directories** | You must explicitly trust each project |
| **Tool approval** | Every command requires approval by default |
| **--deny-tool** | Blocklist dangerous operations |
| **Scoped --allow-tool** | Allowlist only what's needed |
| **Session scope** | Trust expires at session end unless permanent |

### Your Transformation

| Before | After |
|--------|-------|
| "AI running commands is dangerous" | "The approval system is solid" |
| Avoid using it | Confident with guardrails |
| All-or-nothing thinking | Nuanced trust model |
| Fear of data exposure | Clear boundaries understood |

### The Skeptic's Win

You validated the security model:
- **Trust is explicit** — You choose what directories to trust
- **Approval is required** — Every action needs your OK
- **Deny options exist** — Block specific dangerous commands
- **Scope is limited** — Work in project directories, not home

### Safe Usage Pattern

```bash
# Create a safe alias
alias copilot-safe="copilot --deny-tool 'shell(rm)' --deny-tool 'shell(git push)'"

# Use it
cd ~/projects/my-project
copilot-safe

# Or for scripts, be explicit about what's allowed
copilot -p "task" --allow-tool 'shell(git log)' --allow-tool 'shell(grep)'
```

---

## ➡️ Continue Your Journey

**Next for Sarah**: [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) — See how all the security models work together across the development lifecycle.

**Also relevant**: [Module 8: Copilot Web](../08-copilot-web/README.md) — Your efficient PR review workflow complements CLI automation.
