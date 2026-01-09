# Module 9: GitHub Copilot CLI

> **Core Philosophy**: Clarity beats cleverness—even in the terminal. Clear intent gets clear results. Your terminal becomes an AI agent that can work on your behalf.

## 📖 Overview

GitHub Copilot CLI is a **powerful AI agent** that lives in your terminal. Unlike the deprecated `gh copilot` extension (which only suggested and explained commands), the new Copilot CLI can:

- **Have interactive conversations** — Start a session with `copilot` and work iteratively
- **Execute multi-step tasks** — Make code changes, create files, run tests
- **Work with GitHub.com** — Create PRs, manage issues, check CI status
- **Run shell commands** — With security controls and approval workflows
- **Use MCP servers** — Extend capabilities with Model Context Protocol
- **Support custom agents** — Configure specialized versions for different tasks

This module covers installing, configuring, and using the new Copilot CLI for agentic terminal workflows.

**Why CLI?** Even developers who live in VS Code spend significant time in the terminal. The new Copilot CLI brings the full power of an AI agent to your command line—not just command suggestions, but actual task execution.

## Prerequisites

- Copilot subscription (Pro, Pro+, Business, or Enterprise)
- Completed Module 8: Copilot Web (recommended)
- A terminal you're comfortable using
- Linux, macOS, or Windows (WSL recommended; native Windows is experimental)

## Estimated Time

- 90 minutes

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Install and configure GitHub Copilot CLI
- Use interactive mode to have conversations and complete tasks
- Use programmatic mode (`-p`) for scripting and automation
- Understand tool approval and security controls
- Customize Copilot CLI with instructions, MCP servers, and agents
- Work with GitHub.com directly from your terminal (PRs, issues, workflows)

---

## 📚 Content

### What is GitHub Copilot CLI?

GitHub Copilot CLI is a **full AI agent** that runs in your terminal. It can:

```bash
# Start an interactive session
copilot

# Or give it a task directly
copilot -p "Create a PR with the changes in this branch"
```

This is fundamentally different from the old `gh copilot` extension. Instead of just suggesting commands, Copilot CLI can **execute multi-step tasks on your behalf**.

### Two Modes of Use

| Mode | How to Start | Best For |
|------|--------------|----------|
| **Interactive** | `copilot` | Exploratory work, conversations, iterative tasks |
| **Programmatic** | `copilot -p "task"` | Scripts, automation, one-shot tasks |

### Interactive Mode

```bash
$ copilot

Welcome to GitHub Copilot CLI!

What would you like to do?
> 
```

In interactive mode, you have a **conversation** with Copilot. You can:
- Ask it to make code changes
- Request explanations
- Have it create PRs and issues
- Work iteratively on tasks

### Programmatic Mode

```bash
# One-shot task execution
copilot -p "Show me this week's commits and summarize them" --allow-tool 'shell(git)'
```

In programmatic mode, you give Copilot a task and let it work. Use `--allow-tool` options to control what Copilot can do without approval.

### The Agentic Difference

| Old `gh copilot` | New `copilot` CLI |
|-----------------|-------------------|
| Suggests commands | Executes tasks |
| Single-turn | Multi-turn conversations |
| Read-only | Can modify files, run commands |
| Commands only | Works with GitHub.com too |
| No customization | Custom agents, MCP servers, skills |

---

## 🔨 Exercises

### Exercise 1: CLI Installation & Setup — "Your Terminal Agent"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: Jordan (DevOps Expert)  
**Time**: 10-15 minutes

#### 📖 The Story

**Jordan** automates everything—if it can be scripted, it should be. He's heard about the new Copilot CLI that can actually execute tasks, not just suggest commands. "An AI agent in my terminal? That's either amazing or terrifying," he thinks.

Today he's setting up Copilot CLI to find out.

#### ❌ The "Before" — What Frustration Looks Like

Without Copilot CLI:
- Multi-step tasks require manual execution of each step
- Context-switching between terminal, browser, and editor
- Automation scripts take hours to write
- GitHub operations require learning gh CLI syntax

#### 🎯 Objective

Install and configure GitHub Copilot CLI, verifying it works with a test interaction.

#### 📋 Steps

1. **Install Copilot CLI**

   ```bash
   # macOS
   brew install github/copilot-cli/copilot
   
   # Windows (winget)
   winget install GitHub.CopilotCLI
   
   # Or download from: https://github.com/github/copilot-cli/releases
   ```

2. **Authenticate with GitHub**

   ```bash
   copilot auth login
   ```
   
   Follow the prompts to authenticate via browser.

3. **Start your first interactive session**

   ```bash
   copilot
   ```
   
   You'll see a welcome message and be asked to confirm you trust the current directory.

4. **Ask Copilot something simple**

   In the interactive session:
   ```
   What files are in this directory?
   ```
   
   Copilot will ask permission to run `ls` or similar—this is the **tool approval** system.

5. **Try a slash command**

   ```
   /help
   ```
   
   See all available slash commands like `/model`, `/mcp`, `/feedback`.

6. **Exit the session**

   ```
   /exit
   ```
   
   Or press `Ctrl+C`.

#### ✅ Success Criteria

- [ ] Copilot CLI installed and authenticated
- [ ] Started an interactive session
- [ ] Experienced the tool approval workflow
- [ ] Used a slash command

#### ✨ The "After" — The Improved Experience

With Copilot CLI installed:
- Have conversations with an AI agent in your terminal
- Execute multi-step tasks with approval controls
- Stay in your terminal flow for complex operations
- Access GitHub.com without leaving the command line

#### 📚 Official Docs

- [Installing GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/set-up/install-copilot-cli)
- [About GitHub Copilot CLI](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli)
- [Using GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)

#### 💭 Jordan's Reaction

_"It asked for permission before running commands. That's not just AI assistance—that's a proper agent with guardrails. I can work with this."_

---

### Exercise 2: Interactive Tasks — "Agent in Action"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: Marcus (DevOps Developer)  
**Time**: 15-20 minutes

#### 📖 The Story

**Marcus** knows infrastructure, but application code changes always feel slow. Today he needs to make a simple change—update a version number in several files. With the old workflow, that's find, open, edit, save, repeat. 

With Copilot CLI, he can describe what he wants and let the agent do the work.

#### ❌ The "Before" — What Frustration Looks Like

Without agentic help:
- Manual file-by-file editing for repetitive changes
- Risk of missing files that need updates
- Testing each change individually
- 30 minutes for a "simple" version bump

#### 🎯 Objective

Use Copilot CLI in interactive mode to perform a multi-file edit task.

#### 📋 Steps

1. **Start an interactive session in a project directory**

   ```bash
   cd your-project
   copilot
   ```
   
   Trust the directory when prompted.

2. **Ask Copilot to analyze the project**

   ```
   What kind of project is this? What are the main files?
   ```
   
   Copilot will explore and summarize.

3. **Request a code change**

   Try something like:
   ```
   Find all files that reference version "1.0.0" and update them to "1.1.0"
   ```
   
   Watch as Copilot:
   - Searches for relevant files
   - Proposes changes
   - Asks for approval before modifying

4. **Review and approve**

   When Copilot wants to modify a file, you'll see options like:
   ```
   1. Yes
   2. Yes, and approve this tool for the session
   3. No, and tell Copilot what to do differently
   ```
   
   Choose based on your comfort level.

5. **Iterate if needed**

   If results aren't quite right:
   ```
   That changed too many files. Only update the version in package.json and README.md
   ```
   
   Copilot will adjust.

6. **Ask follow-up questions**

   ```
   Show me what changed
   ```
   
   Or:
   ```
   Did I miss any files that reference the old version?
   ```

#### ✅ Success Criteria

- [ ] Started an interactive session
- [ ] Had Copilot analyze your project
- [ ] Requested a code change
- [ ] Experienced the approval workflow
- [ ] Iterated on results

#### ✨ The "After" — The Improved Experience

With interactive mode:
- Describe changes in natural language
- Let Copilot find and modify files
- Approve each action for safety
- Iterate conversationally

#### 📚 Official Docs

- [Using GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)
- [About GitHub Copilot CLI - Local tasks](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#local-tasks)

#### 💭 Marcus's Insight

_"I told it what I wanted in plain English, and it did the work. The approval prompts mean I'm never surprised by what it does. This is how I want to work with code."_

---

### Exercise 3: GitHub.com Integration — "PRs from the Terminal"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: Priya (Recent Graduate)  
**Time**: 15-20 minutes

#### 📖 The Story

**Priya** has been working on a feature branch all morning. Now it's time to create a pull request. The old way: switch to browser, navigate to GitHub, click through the PR form, write a description...

With Copilot CLI, she can do it all without leaving her terminal.

#### ❌ The "Before" — What Frustration Looks Like

Without GitHub integration:
- Context-switch to browser for every GitHub operation
- Manually write PR descriptions from scratch
- Check CI status by refreshing the page
- Miss issues assigned to you because you forgot to check

#### 🎯 Objective

Use Copilot CLI to interact with GitHub.com—creating PRs, listing issues, checking CI status.

#### 📋 Steps

1. **Start an interactive session**

   ```bash
   cd your-repo
   copilot
   ```

2. **Create a pull request**

   ```
   Create a pull request for my current branch with a description based on the commits
   ```
   
   Copilot will:
   - Check your current branch
   - Analyze commits
   - Generate a PR title and description
   - Create the PR on GitHub.com

3. **Check your work**

   ```
   List my open PRs
   ```
   
   Or for a specific repo:
   ```
   List all open PRs in octo-org/octo-repo
   ```

4. **Find issues to work on**

   ```
   Show issues assigned to me in this repo
   ```
   
   Or:
   ```
   Find good first issues in this repo for a new team member
   ```

5. **Start working on an issue**

   If you have an issue URL:
   ```
   I've been assigned https://github.com/org/repo/issues/123. Start working on this in a new branch.
   ```
   
   Copilot will create a branch and begin addressing the issue.

6. **Check CI status**

   ```
   What's the status of CI on my open PR?
   ```

7. **Review a PR**

   ```
   Check the changes in PR https://github.com/org/repo/pull/456 and report any problems
   ```

#### ✅ Success Criteria

- [ ] Created a PR from the terminal
- [ ] Listed PRs or issues
- [ ] Checked CI status
- [ ] Understand how Copilot CLI works with GitHub.com

#### ✨ The "After" — The Improved Experience

With GitHub integration:
- Create PRs with AI-generated descriptions
- Manage issues without leaving terminal
- Check CI status conversationally
- Stay in flow while doing GitHub operations

#### 📚 Official Docs

- [About GitHub Copilot CLI - Tasks involving GitHub.com](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#tasks-involving-githubcom)

#### 💭 Priya's Realization

_"I just created a PR by describing what I did. Copilot looked at my commits and wrote a better description than I would have. And I never left my terminal."_

---

### Exercise 4: Programmatic Mode — "Automating with AI"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: Jordan (DevOps Expert)  
**Time**: 15-20 minutes

#### 📖 The Story

**Jordan** has a daily standup ritual: check what the team committed yesterday, review any failed CI runs, and list PRs that need review. Each of these is a manual workflow. 

With Copilot CLI's programmatic mode, he can script these tasks.

#### ❌ The "Before" — What Frustration Looks Like

Without programmatic AI:
- Manual multi-step morning routines
- Scripts require precise command syntax
- Output parsing is tedious
- Each new task needs new tooling

#### 🎯 Objective

Use Copilot CLI's `-p` flag to create scripted, automated workflows.

#### 📋 Steps

1. **Understand programmatic mode**

   Instead of interactive sessions, you can pass a prompt directly:
   ```bash
   copilot -p "What time is it?"
   ```
   
   Copilot will answer and exit.

2. **Add tool approvals for automation**

   For scripts, you need to pre-approve tools:
   ```bash
   copilot -p "List all files modified today" --allow-tool 'shell(find)'
   ```
   
   Without `--allow-tool`, Copilot would wait for approval (blocking your script).

3. **Create a morning summary script**

   Create a file `morning-summary.sh`:
   ```bash
   #!/bin/bash
   
   echo "=== Yesterday's Commits ==="
   copilot -p "Show commits from the last 24 hours with author and summary" \
     --allow-tool 'shell(git)'
   
   echo ""
   echo "=== Open PRs Needing Review ==="
   copilot -p "List PRs in this repo that are open and I haven't reviewed" \
     --allow-tool 'shell(gh)'
   ```

4. **Understand tool approval options**

   | Option | Effect |
   |--------|--------|
   | `--allow-all-tools` | Allow everything (be careful!) |
   | `--allow-tool 'shell(git)'` | Allow only git commands |
   | `--allow-tool 'shell'` | Allow any shell command |
   | `--allow-tool 'write'` | Allow file modifications |
   | `--deny-tool 'shell(rm)'` | Block rm commands |

5. **Combine allow and deny**

   ```bash
   copilot -p "Clean up this project" \
     --allow-all-tools \
     --deny-tool 'shell(rm)' \
     --deny-tool 'shell(git push)'
   ```
   
   This allows most operations but prevents deletion and pushes.

6. **Pipe output for further processing**

   ```bash
   copilot -p "List all TODO comments in this codebase" \
     --allow-tool 'shell(grep)' | tee todos.txt
   ```

#### ✅ Success Criteria

- [ ] Ran a programmatic (`-p`) command
- [ ] Used `--allow-tool` to pre-approve operations
- [ ] Understand the security implications
- [ ] Created a simple automation script

#### ✨ The "After" — The Improved Experience

With programmatic mode:
- Script AI-powered workflows
- Pre-approve specific tools for automation
- Build morning routines, health checks, reports
- Combine AI with traditional shell scripting

#### 📚 Official Docs

- [About GitHub Copilot CLI - Modes of use](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#modes-of-use)
- [About GitHub Copilot CLI - Allowed tools](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#allowed-tools)

#### 💭 Jordan's Verdict

_"Interactive mode is great for exploration. Programmatic mode is great for automation. The tool approval system means I can give it enough rope to be useful without hanging myself."_

---

### Exercise 5: Customization & MCP Servers — "Your Personalized Agent"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: David (Seasoned Architect)  
**Time**: 15-20 minutes

#### 📖 The Story

**David** has been impressed by Copilot CLI's capabilities, but he notices it doesn't know about his team's specific conventions. When it creates PRs, they don't follow the template. When it suggests changes, it doesn't account for their architectural patterns.

Time to customize.

#### ❌ The "Before" — What Frustration Looks Like

Without customization:
- Generic suggestions that ignore team conventions
- AI doesn't know your preferred patterns
- Manual correction of every AI-generated artifact
- No access to internal tools or data sources

#### 🎯 Objective

Customize Copilot CLI with instructions, MCP servers, and custom agents.

#### 📋 Steps

1. **Add custom instructions**

   Copilot CLI reads the same `.github/copilot-instructions.md` file as VS Code:
   ```markdown
   # Copilot Instructions
   
   ## Code Style
   - Use TypeScript for all new files
   - Prefer functional patterns over classes
   - All PRs must reference an issue number
   
   ## PR Template
   When creating PRs, always include:
   - ## What
   - ## Why  
   - ## Testing
   - Closes #<issue>
   ```

2. **Verify instructions are loaded**

   In an interactive session:
   ```
   What are your instructions for this project?
   ```
   
   Copilot should summarize your custom instructions.

3. **Explore MCP servers**

   Use the `/mcp` slash command to see configured servers:
   ```
   /mcp
   ```
   
   MCP (Model Context Protocol) servers extend Copilot's capabilities.

4. **Add an MCP server** (optional, if you have one)

   Configuration goes in `~/.copilot/config.json`:
   ```json
   {
     "mcp_servers": {
       "my-server": {
         "command": "npx",
         "args": ["-y", "@my-org/mcp-server"]
       }
     }
   }
   ```

5. **Use custom agents**

   Custom agents are specialized Copilot configurations:
   ```
   /agent frontend
   ```
   
   This switches to a "frontend" agent (if configured) that might have specialized knowledge about React, CSS, etc.

6. **Understand the customization hierarchy**

   ```
   Default Copilot
        ↓
   + Custom Instructions (.github/copilot-instructions.md)
        ↓
   + MCP Servers (external tools & data)
        ↓
   + Custom Agents (specialized behaviors)
   ```

#### ✅ Success Criteria

- [ ] Created or verified custom instructions
- [ ] Used `/mcp` to explore servers
- [ ] Understand the customization options
- [ ] Copilot follows your team conventions

#### ✨ The "After" — The Improved Experience

With customization:
- Copilot knows your team's conventions
- PRs follow your templates automatically
- Access to internal tools via MCP
- Specialized agents for different tasks

#### 📚 Official Docs

- [About GitHub Copilot CLI - Customizing](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#customizing-github-copilot-cli)
- [Using GitHub Copilot CLI - Custom instructions](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli#use-custom-instructions)
- [About Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)

#### 💭 David's Realization

_"When I first saw Copilot CLI, I thought it was just another AI tool that wouldn't understand our architecture. But with custom instructions and the potential for MCP servers, it becomes an agent that actually knows how we work. That's the difference between a toy and a tool."_
---

### Exercise 6: Security & Best Practices — "Safe Agentic Workflows"

**Tier**: 💼 Pro / Pro+ / Business / Enterprise  
**Primary Persona**: Sarah (Skeptical Senior)  
**Time**: 10-15 minutes

#### 📖 The Story

**Sarah** is intrigued by Copilot CLI's capabilities but wary of giving an AI agent the ability to run shell commands and modify files. "What stops it from `rm -rf /`?" she wonders.

Let's explore the security model.

#### ❌ The "Before" — What Concern Looks Like

Without understanding security:
- Fear of AI running dangerous commands
- Uncertainty about what data is sent where
- No clear guardrails on agent behavior
- "I'll just not use it" avoidance

#### 🎯 Objective

Understand Copilot CLI's security model and establish safe usage patterns.

#### 📋 Steps

1. **Understand trusted directories**

   When you first start Copilot CLI in a directory, it asks you to trust it:
   
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
       "/home/user/projects/my-app",
       "/home/user/projects/another-app"
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
   
   Only use this in:
   - Sandboxed environments
   - CI/CD pipelines with limited scope
   - When you fully trust the prompt

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

#### ✅ Success Criteria

- [ ] Understand the trusted directory system
- [ ] Know how tool approval works
- [ ] Created a safe alias or workflow
- [ ] Know when --allow-all-tools is appropriate
- [ ] Feel confident about Copilot CLI's security model

#### ✨ The "After" — The Improved Experience

With security understanding:
- Use Copilot CLI with confidence
- Know the guardrails and how to strengthen them
- Trust but verify approach
- Powerful agentic workflows without recklessness

#### 📚 Official Docs

- [About GitHub Copilot CLI - Security considerations](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#security-considerations)
- [About GitHub Copilot CLI - Trusted directories](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#trusted-directories)
- [Responsible use of GitHub Copilot CLI](https://docs.github.com/en/enterprise-cloud@latest/copilot/responsible-use/copilot-cli)

#### 💭 Sarah's Verdict

_"I was ready to dismiss this as a security nightmare. But the trust model is actually well thought out—you have to explicitly trust directories, approve commands, and can deny dangerous operations. It's not just 'let the AI do whatever.' That I can work with."_

---

## 📝 Key Takeaways

### The New Copilot CLI Paradigm

```
┌─────────────────────────────────────────────────────────────────┐
│                    Old: gh copilot                              │
│  ┌─────────────┐      ┌─────────────┐                          │
│  │   suggest   │      │   explain   │     (single-turn, read)  │
│  └─────────────┘      └─────────────┘                          │
└─────────────────────────────────────────────────────────────────┘
                            ↓
┌─────────────────────────────────────────────────────────────────┐
│                    New: copilot CLI                             │
│  ┌─────────────────────────────────────────────────────────┐   │
│  │                  AI Agent in Terminal                    │   │
│  │  • Multi-turn conversations                             │   │
│  │  • Execute tasks (files, commands)                      │   │
│  │  • GitHub.com integration (PRs, issues)                 │   │
│  │  • MCP server extensibility                             │   │
│  │  • Custom agents and skills                             │   │
│  │  • Tool approval security model                         │   │
│  └─────────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────────┘
```

### Two Modes, Many Possibilities

| Mode | Start With | Use For |
|------|------------|---------|
| **Interactive** | `copilot` | Exploration, conversations, iterative work |
| **Programmatic** | `copilot -p "..."` | Scripts, automation, one-shot tasks |

### Security Model

| Layer | Protection |
|-------|------------|
| **Trusted directories** | Must explicitly trust each directory |
| **Tool approval** | Must approve commands before execution |
| **--deny-tool** | Block specific dangerous operations |
| **Scoped permissions** | `--allow-tool` limits what's pre-approved |

### When to Use Copilot CLI

| ✅ Great For | ❌ Consider Alternatives |
|--------------|-------------------------|
| Multi-step tasks | Simple known commands |
| GitHub.com operations | Offline environments |
| Code changes with context | Highly sensitive operations |
| Automation scripts | When you need GUI review |
| Learning and exploration | Emergency situations |

---

## ➡️ Next Steps

You've completed Module 9! You now have an AI agent in your terminal—not just suggestions, but actual task execution capability.

**To continue learning:**
- Return to [Module 00: Orientation](../00-orientation/README.md) for a refresher
- Explore [Module 8: Copilot on the Web](../08-copilot-web/README.md)
- Practice daily: start a `copilot` session for your morning workflow

**Build the habit:**
- Start `copilot` in your project directory at the beginning of each day
- Use interactive mode to create PRs and manage issues
- Build programmatic scripts for recurring tasks
- Customize with instructions as you learn your needs

---

## 🔗 Additional Resources

**GitHub Copilot CLI:**
- [About GitHub Copilot CLI](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli)
- [Installing GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/set-up/install-copilot-cli)
- [Using GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)
- [Responsible use of GitHub Copilot CLI](https://docs.github.com/en/enterprise-cloud@latest/copilot/responsible-use/copilot-cli)

**MCP (Model Context Protocol):**
- [About Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)
- [Model Context Protocol](https://modelcontextprotocol.io/)

**Related Topics:**
- [About GitHub Copilot coding agent](https://docs.github.com/en/copilot/concepts/agents/about-copilot-coding-agent)
- [Premium requests in GitHub Copilot](https://docs.github.com/en/copilot/managing-copilot/monitoring-usage-and-entitlements/about-premium-requests)
