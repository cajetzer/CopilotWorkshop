# Module 7: MCP Servers — Extending Copilot's Reach

## ⏰ Monday 5:00 PM — Giving Copilot Hands

> *"The validator skill knows our data FORMAT is correct, but it can't check if the character actually EXISTS in our database. Copilot is flying blind."*  
> — Elena, hitting the limits of knowledge without action

> *"And when I'm working on infrastructure, Copilot suggests changes without knowing our current deployment state. What if it suggests scaling up during a deployment?"*  
> — Jordan, worried about context-blind suggestions

---

## 🔍 Background: What Is MCP?

### The Problem: Copilot Can't See Beyond Your Editor

You've taught Copilot a lot:
- **Instructions** tell it your coding standards
- **Prompts** give it task templates
- **Agents** let it work autonomously
- **Skills** provide domain expertise

But there's a fundamental limitation: **Copilot can only read files in your editor.**

It can't:
- Query your database to verify a character exists
- Check your deployment status before suggesting infrastructure changes
- Pull metadata from external APIs
- Access your internal documentation systems
- Verify that a referenced ID is valid

**MCP (Model Context Protocol) solves this.**

### What Is MCP?

**MCP is an open standard** that connects AI models to external systems through a unified interface. Think of it like a USB-C port for AI—a standardized way to plug in external capabilities.

| Concept | Analogy |
|---------|---------|
| **MCP Server** | A plugin that provides tools, resources, or prompts |
| **MCP Tools** | Actions Copilot can take (query database, call API, read file) |
| **MCP Resources** | Data Copilot can access (tables, files, configs) |
| **MCP Prompts** | Pre-configured prompts the server provides |

### MCP in the Customization Hierarchy

MCP is different from other customization types—it's about **capabilities**, not knowledge:

| | What It Provides | Example |
|---|-----------------|---------|
| **Instructions** | Knowledge about standards | "Use async/await" |
| **Skills** | Knowledge about domain | "Characters need status field" |
| **MCP** | Ability to DO things | "Query the database and verify character #42 exists" |

Think of it this way:
- **Skills** = Copilot knows your validation rules
- **MCP** = Copilot can actually check the database

### How MCP Works

```
┌─────────────────────────────────────────────────────────────┐
│                    VS Code + Copilot                        │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  "Does character Walter White exist in our DB?"      │   │
│  └─────────────────────────────────────────────────────┘   │
│                           │                                 │
│                           ▼                                 │
│  ┌─────────────────────────────────────────────────────┐   │
│  │           MCP Server: SQLite Database                │   │
│  │  ┌────────────────────────────────────────────┐     │   │
│  │  │  Tool: query_database                       │     │   │
│  │  │  SELECT * FROM characters WHERE name LIKE   │     │   │
│  │  │  '%Walter White%'                           │     │   │
│  │  └────────────────────────────────────────────┘     │   │
│  └─────────────────────────────────────────────────────┘   │
│                           │                                 │
│                           ▼                                 │
│  ┌─────────────────────────────────────────────────────┐   │
│  │  Result: { id: 1, name: "Walter White",              │   │
│  │           status: "deceased", show_id: 1 }           │   │
│  └─────────────────────────────────────────────────────┘   │
└─────────────────────────────────────────────────────────────┘
```

1. You ask Copilot a question that needs external data
2. Copilot recognizes an MCP tool can help
3. Copilot calls the MCP server's tool
4. The MCP server executes the action (query, API call, etc.)
5. Results return to Copilot for its response

---

## 📖 The Story So Far

The FanHub team has built impressive AI collaboration:
- **Module 1**: Repository instructions for project context
- **Module 2**: Agent plan mode for systematic thinking
- **Module 3**: Custom prompts for reusable workflows
- **Module 4**: Custom agents for autonomous tasks
- **Module 5**: Custom instructions for file-scoped context
- **Module 6**: Agent Skills for domain expertise

**Elena** is proud of her TV Show Data Validator skill. It catches format errors, missing fields, and invalid enum values. But she's hitting a wall:

> *"The skill validates that a character object has the right STRUCTURE. But it can't verify that `show_id: 3` actually points to a real show in our database. It can't check if 'Walter White' is spelled correctly compared to our existing data."*

**Jordan** sees an even bigger pattern:

> *"This is true for everything we do. When I'm working on deployment configs, Copilot doesn't know our current cluster state. When David reviews architecture, Copilot can't see our actual database schema. We're giving Copilot knowledge, but not eyes or hands."*

**This module's mission**: Connect Copilot to external systems using MCP, transforming it from an assistant that *knows* things to one that can *verify* and *act* on real data.

---

💡 **Plan Mode Integration**: Use plan mode to design your MCP strategy—what systems to connect, what tools to expose, and how to secure access.

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Understand what MCP is and how it extends Copilot's capabilities
- Browse and install MCP servers from the GitHub registry
- Configure MCP servers in workspace `mcp.json` files
- Use MCP tools in Copilot chat and agent mode
- Connect to databases and external APIs via MCP
- Understand security considerations for MCP server trust
- Design an MCP strategy that balances capability with security

**Time**: ~75 minutes  
**Personas**: Jordan (Platform Engineer), Elena (Quality Champion), David (Security Review)

---

## 📚 Key Concepts

### MCP Server Types

**Stdio Servers** (most common):
- Run as local processes
- Communicate via standard input/output
- Example: SQLite, filesystem, local tools

**HTTP/SSE Servers**:
- Connect over network
- Can be remote services
- Example: External APIs, cloud services

### Configuration Locations

**Workspace Configuration** (`.vscode/mcp.json`):
- Specific to this project
- Shared with team via version control
- Best for: Project-specific servers (your database, your APIs)

**User Configuration** (VS Code settings):
- Available across all projects
- Personal to you
- Best for: General-purpose servers (GitHub, web search)

### MCP Server Trust

⚠️ **Security First**: MCP servers run code on your machine. Only install servers from trusted sources.

VS Code prompts you to confirm trust before starting any MCP server. Always:
1. Review the publisher
2. Understand what the server can access
3. Check the server configuration

---

## 🔨 Exercises

### Exercise 7.1: Understanding the MCP Ecosystem — "Jordan Maps the Landscape"

#### 📖 The Story

**Jordan** (Platform Engineer, 12 years) has been hearing about MCP but hasn't explored it systematically. Before connecting FanHub to external systems, he wants to understand what's available and how it works.

*"I never deploy tools I don't understand,"* Jordan explains. *"Let's see what MCP servers exist and how they work before we start plugging things in."*

#### ❌ The "Before" — What Frustration Looks Like

Without MCP, the team manually copies data between systems:

```
Elena: "Copilot, does character ID 42 exist?"
Copilot: "I can't query your database. You'll need to check manually."

*Elena opens database client, runs query, copies result back to chat*

Elena: "OK, it exists. Now validate this data against it."
```

Every verification requires context-switching and manual data transfer.

#### 🎯 Objective

Explore the MCP ecosystem, understand server types, and identify which servers could benefit FanHub.

#### 📋 Steps

1. **Enable MCP server gallery**
   
   Open VS Code settings and enable:
   ```json
   "chat.mcp.gallery.enabled": true
   ```

2. **Browse available MCP servers**
   
   - Open the Extensions view (`Ctrl+Shift+X` / `Cmd+Shift+X`)
   - Type `@mcp` in the search field
   - Browse the available servers from the GitHub MCP registry
   
   Note servers relevant to FanHub:
   - **SQLite** — Query our local database
   - **Filesystem** — Read/write files outside workspace
   - **GitHub** — Interact with our repository
   - **Fetch** — Make HTTP requests to external APIs

3. **Understand MCP capabilities**
   
   Open Copilot Chat and ask:
   ```
   I want to understand MCP (Model Context Protocol). Use plan mode to help me:
   
   1. Explain what MCP tools, resources, and prompts are
   2. Identify which MCP servers would help FanHub:
      - We have a SQLite database with shows, characters, and episodes
      - We want to validate data against the live database
      - We might want to enrich data from external APIs (TMDB, IMDB)
      - We need to check deployment status before infrastructure changes
   3. Create a prioritized list of MCP servers to install
   4. Identify security considerations for each
   ```

4. **Review the MCP architecture**
   
   Create a documentation file:
   ```
   Create fanhub/docs/MCP-STRATEGY.md with:
   - Overview of MCP and how it extends Copilot
   - List of MCP servers we plan to use
   - Security considerations for each
   - Implementation priority and timeline
   ```

#### ✅ Success Criteria

- [ ] MCP gallery is enabled in VS Code
- [ ] Browsed at least 10 MCP servers in the gallery
- [ ] Identified 3-5 servers relevant to FanHub
- [ ] Created MCP-STRATEGY.md with prioritized server list
- [ ] Can explain the difference between MCP tools, resources, and prompts

#### ✨ The "After" — The Improved Experience

Jordan now has a clear picture:
- **What MCP can do** — Connect Copilot to databases, APIs, and external systems
- **Which servers FanHub needs** — SQLite for database, GitHub for repo, possibly Fetch for external APIs
- **Security implications** — Trust model, what each server can access

**Key insight**: MCP transforms Copilot from "knows things" to "can do things."

#### 📚 Official Docs

- [VS Code Docs: MCP Servers](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)
- [Model Context Protocol Introduction](https://modelcontextprotocol.io/introduction)
- [GitHub MCP Server Registry](https://github.com/mcp)
- [MCP Server Repository](https://github.com/modelcontextprotocol/servers)

#### 💭 Jordan's Realization

*"MCP is like giving Copilot actual hands. Instructions tell it what to do, skills tell it what to know, but MCP lets it actually interact with our systems. That's powerful—and we need to be careful about what we connect."*

---

### Exercise 7.2: Install Your First MCP Server — "Connecting to FanHub's Database"

#### 📖 The Story

**Elena** is ready to stop manually verifying data. She wants Copilot to query the FanHub database directly when validating TV show data.

*"If Copilot can actually check whether character ID 42 exists,"* Elena explains, *"my validation workflows become so much more powerful. No more context-switching to the database client."*

**Jordan** helps her set it up safely.

#### ❌ The "Before" — What Frustration Looks Like

Elena asks Copilot to validate a character:

```javascript
const newCharacter = {
  name: "Jessie Pinkman",  // Typo! Should be "Jesse"
  show_id: 1,
  status: "alive"
};
```

Copilot: *"The structure looks valid. I can't verify if 'Jessie Pinkman' matches existing data or if show_id 1 exists."*

The typo slips through because Copilot can't check the real database.

#### 🎯 Objective

Install the SQLite MCP server and connect it to the FanHub database.

#### 📋 Steps

1. **Install the SQLite MCP server**
   
   From the Extensions view:
   - Search for `@mcp sqlite`
   - Click "Install in Workspace" to add it to FanHub
   
   Or add manually to `.vscode/mcp.json`:
   ```json
   {
     "servers": {
       "sqlite": {
         "type": "stdio",
         "command": "npx",
         "args": ["-y", "@anthropic/mcp-server-sqlite", "${workspaceFolder}/fanhub/backend/src/database/fanhub.db"]
       }
     }
   }
   ```

2. **Start the MCP server**
   
   - Open the Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`)
   - Run `MCP: List Servers`
   - Select the SQLite server and choose "Start Server"
   - Confirm trust when prompted

3. **Verify the connection**
   
   In Copilot Chat, ask:
   ```
   Using the SQLite MCP server, show me the tables in the FanHub database.
   ```
   
   Copilot should use the MCP tool to query the database schema.

4. **Test a real query**
   
   Ask Copilot:
   ```
   Query the FanHub database: How many characters do we have for each show?
   ```

5. **Use MCP with validation**
   
   Now ask Copilot to validate with real data:
   ```
   I want to add this character to FanHub:
   {
     "name": "Jessie Pinkman",
     "show_id": 1,
     "status": "alive"
   }
   
   Before I add it, use the database to:
   1. Check if show_id 1 exists and what show it is
   2. Check if a similar character name already exists (might be a typo)
   3. Validate the status value is appropriate
   ```

#### ✅ Success Criteria

- [ ] SQLite MCP server is installed in the workspace
- [ ] Server starts successfully and is trusted
- [ ] Can query the FanHub database schema via Copilot
- [ ] Successfully ran a query that returns real data
- [ ] Copilot caught the "Jessie" → "Jesse" typo by checking existing data

#### ✨ The "After" — The Improved Experience

With MCP connected:
- **Copilot verifies data** against the real database
- **Typos get caught** because Copilot can check existing records
- **Foreign keys validate** because Copilot can query related tables
- **No context-switching** — everything happens in the editor

Elena: *"This is what I've been waiting for. Copilot doesn't just know our rules—it can check our actual data."*

#### 📚 Official Docs

- [VS Code Docs: Add an MCP Server](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_add-an-mcp-server)
- [SQLite MCP Server](https://github.com/anthropics/mcp-server-sqlite)
- [MCP Configuration Format](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_configuration-format)

#### 💭 Elena's Realization

*"The validation skill tells Copilot WHAT to check. MCP gives it the ability to actually CHECK it. Together, they're incredibly powerful."*

#### 🚀 Challenge Extension

Create an agent that combines the TV Show Data Validator skill with the SQLite MCP server:

```markdown
# .github/agents/data-validator.agent.md
---
name: data-validator
description: Validates TV show data against both schema rules AND live database
tools:
  - sqlite
---

You are a data validation specialist for FanHub.

When validating data:
1. First check format against our schema rules (required fields, types, enums)
2. Then use the SQLite tool to verify against live data:
   - Foreign keys exist
   - No duplicate entries
   - Names match existing records (catch typos)
3. Report all issues found with specific recommendations
```

---

### Exercise 7.3: MCP for Deployment Awareness — "Jordan's Safety Net"

#### 📖 The Story

**Jordan** has a different concern. When working on infrastructure, Copilot suggests changes without knowing the current system state.

*"What if Copilot suggests scaling up pods when we're mid-deployment?"* Jordan worries. *"Or recommends a database migration when the DB is under heavy load? I need Copilot to see our actual deployment state."*

This exercise sets up MCP to give Copilot awareness of deployment status.

#### ❌ The "Before" — What Frustration Looks Like

Jordan asks Copilot for infrastructure help:

```
Copilot, I need to scale up the FanHub backend. What do you recommend?
```

Copilot: *"I recommend increasing replicas to 3. Here's the config change..."*

But Copilot doesn't know:
- A deployment is currently in progress
- The cluster is at 90% CPU
- There's an ongoing incident

#### 🎯 Objective

Set up MCP awareness for deployment and system status (using GitHub as a proxy for deployment state).

#### 📋 Steps

1. **Install the GitHub MCP server**
   
   Add to `.vscode/mcp.json`:
   ```json
   {
     "servers": {
       "sqlite": {
         // ... existing sqlite config
       },
       "github": {
         "type": "stdio",
         "command": "npx",
         "args": ["-y", "@anthropic/mcp-server-github"],
         "env": {
           "GITHUB_TOKEN": "${input:github-token}"
         }
       }
     },
     "inputs": [
       {
         "type": "promptString",
         "id": "github-token",
         "description": "GitHub Personal Access Token",
         "password": true
       }
     ]
   }
   ```

2. **Create a GitHub token**
   
   - Go to GitHub → Settings → Developer Settings → Personal Access Tokens
   - Create a token with `repo` scope
   - VS Code will prompt for this when starting the server

3. **Start the GitHub MCP server**
   
   - Run `MCP: List Servers`
   - Start the GitHub server
   - Enter your token when prompted

4. **Test deployment awareness**
   
   Ask Copilot:
   ```
   Before I make any infrastructure changes, use the GitHub MCP server to:
   1. Check if there are any open PRs for the fanhub repo
   2. Check if there are any open issues labeled "incident" or "deployment"
   3. Look at recent commits to see if a deployment might be in progress
   
   Then tell me if it's safe to make infrastructure changes.
   ```

5. **Create a pre-flight check prompt**
   
   Create `.github/prompts/infra-preflight.prompt.md`:
   ```markdown
   ---
   name: infra-preflight
   description: Pre-flight check before infrastructure changes
   tools:
     - github
     - sqlite
   ---
   
   Before making infrastructure changes to FanHub, perform these checks:
   
   ## GitHub Status
   - [ ] No open PRs with "deploy" or "infrastructure" labels
   - [ ] No open issues with "incident" labels
   - [ ] No deployments in progress (check recent commits/actions)
   
   ## Database Status
   - [ ] Database is accessible (run simple query)
   - [ ] No long-running transactions
   
   ## Recommendation
   Based on these checks, provide a GO/NO-GO recommendation for infrastructure changes.
   ```

#### ✅ Success Criteria

- [ ] GitHub MCP server is installed and configured
- [ ] Server starts and authenticates successfully
- [ ] Can query repository status via Copilot
- [ ] Created infra-preflight.prompt.md
- [ ] Pre-flight check returns meaningful status

#### ✨ The "After" — The Improved Experience

Now before any infrastructure change:
- **Copilot checks GitHub** for active PRs, incidents, deployments
- **Copilot queries the database** to verify it's healthy
- **Jordan gets a GO/NO-GO** recommendation based on actual system state

Jordan: *"This is exactly what I needed. Copilot doesn't just suggest changes—it checks if it's safe to make them."*

#### 📚 Official Docs

- [GitHub MCP Server](https://github.com/anthropics/mcp-server-github)
- [MCP Input Variables](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_input-variables-for-sensitive-data)
- [VS Code Docs: MCP Tools in Chat](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_use-mcp-tools-in-chat)

#### 💭 Jordan's Realization

*"MCP turns Copilot into a real deployment partner. It's not just generating configs—it's checking actual state before making recommendations. This is how AI should work in production environments."*

---

### Exercise 7.4: MCP Security and Governance — "David's Review"

#### 📖 The Story

**David** (Seasoned Architect, 20 years) has been watching the MCP setup with interest—and concern.

*"This is powerful,"* David admits. *"But you're giving an AI access to your database and GitHub. What are the security implications? What guardrails do we need?"*

Time for a security review.

#### ❌ The "Before" — What Risk Looks Like

Without governance:
- MCP servers could access sensitive data
- Tokens might be committed to version control
- Team members might install untrusted servers
- No audit trail of what MCP servers do

#### 🎯 Objective

Review MCP security, establish governance policies, and document best practices for FanHub.

#### 📋 Steps

1. **Audit current MCP configuration**
   
   Review `.vscode/mcp.json` and ask Copilot:
   ```
   Review our MCP configuration for security issues:
   
   1. Are any secrets hardcoded?
   2. What data can each server access?
   3. What's the blast radius if a server is compromised?
   4. Are we following least-privilege principles?
   
   Provide specific recommendations.
   ```

2. **Understand MCP trust model**
   
   Read the trust documentation and discuss:
   - When does VS Code prompt for trust?
   - What happens if you don't trust a server?
   - Can trust be reset?
   
   Test by running: `MCP: Reset Trust`

3. **Create MCP governance policy**
   
   Use plan mode to create a governance document:
   ```
   Create a governance policy for MCP servers at FanHub. Include:
   
   1. Approval process for new MCP servers
      - Who can approve?
      - What review is required?
   
   2. Security requirements
      - No hardcoded secrets
      - Least-privilege access
      - Audit logging requirements
   
   3. Allowed server sources
      - GitHub MCP registry (verified publishers)
      - Internal/trusted servers only
   
   4. Periodic review requirements
   
   Save to fanhub/docs/MCP-GOVERNANCE.md
   ```

4. **Implement secrets management**
   
   Review that all sensitive values use input variables:
   ```json
   {
     "inputs": [
       {
         "type": "promptString",
         "id": "github-token",
         "description": "GitHub Personal Access Token",
         "password": true
       },
       {
         "type": "promptString",
         "id": "db-password",
         "description": "Database password (if needed)",
         "password": true
       }
     ]
   }
   ```
   
   Ensure `.vscode/mcp.json` is in `.gitignore` if it contains any environment-specific values.

5. **Create an MCP server allowlist**
   
   Document approved servers in `MCP-GOVERNANCE.md`:
   ```markdown
   ## Approved MCP Servers
   
   | Server | Purpose | Approved By | Date |
   |--------|---------|-------------|------|
   | @anthropic/mcp-server-sqlite | FanHub database queries | Jordan | 2025-01-09 |
   | @anthropic/mcp-server-github | Repository status | Jordan | 2025-01-09 |
   
   ## Pending Review
   | Server | Purpose | Requested By | Status |
   |--------|---------|--------------|--------|
   ```

#### ✅ Success Criteria

- [ ] Audited current MCP configuration for security issues
- [ ] No hardcoded secrets in configuration
- [ ] Created MCP-GOVERNANCE.md with policies
- [ ] Documented approved servers with approval trail
- [ ] Team understands MCP trust model

#### ✨ The "After" — The Improved Experience

FanHub now has:
- **Clear governance** for MCP server approval
- **Secure configuration** with no hardcoded secrets
- **Audit trail** of what's approved and why
- **Team understanding** of MCP security implications

David: *"Now I'm comfortable. We have power, but we also have guardrails."*

#### 📚 Official Docs

- [VS Code Docs: MCP Server Trust](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_mcp-server-trust)
- [VS Code Security Documentation](https://code.visualstudio.com/docs/copilot/security)
- [Enterprise MCP Management](https://code.visualstudio.com/docs/setup/enterprise#_configure-mcp-server-access)

#### 💭 David's Realization

*"MCP is like giving someone keys to your house. Useful if it's the right person, dangerous if it's not. The technology is sound—what matters is the governance around it. Now we have both."*

---

### Exercise 7.5: Integrating MCP Into Your Workflow — "The Complete Picture"

#### 📖 The Story

The team has MCP servers running. Now they need to integrate MCP into their daily workflows, combining it with the customization tools they've learned.

*"We have instructions, prompts, agents, skills, AND MCP servers,"* Elena summarizes. *"How do we make them work together?"*

Time to see the complete picture.

#### 🎯 Objective

Create integrated workflows that combine multiple customization types with MCP capabilities.

#### 📋 Steps

1. **Create a data validation agent with MCP**
   
   Create `.github/agents/fanhub-validator.agent.md`:
   ```markdown
   ---
   name: fanhub-validator
   description: Validates FanHub data against schema AND database
   tools:
     - sqlite
   ---
   
   # FanHub Data Validator
   
   You are a data validation specialist. When asked to validate data:
   
   ## Step 1: Schema Validation
   Check the data structure against FanHub's requirements:
   - Characters need: name (string), status (alive|deceased|unknown), show_id (integer)
   - Episodes need: title, season, episode_number, show_id
   - Shows need: title, genre, status
   
   ## Step 2: Database Verification (use SQLite tool)
   - Verify foreign keys exist (show_id points to real show)
   - Check for duplicates or near-duplicates (typos)
   - Validate referential integrity
   
   ## Step 3: Report
   Provide a validation report with:
   - ✅ Passed checks
   - ⚠️ Warnings (possible issues)
   - ❌ Failed checks (must fix)
   
   Always explain WHY something failed and HOW to fix it.
   ```

2. **Create an infrastructure review prompt with MCP**
   
   Create `.github/prompts/infra-review.prompt.md`:
   ```markdown
   ---
   name: infra-review
   description: Review infrastructure changes with system awareness
   tools:
     - github
     - sqlite
   ---
   
   # Infrastructure Change Review
   
   Review the proposed infrastructure change with awareness of current system state.
   
   ## Pre-Flight Checks (use GitHub tool)
   - Any active deployments or PRs?
   - Any open incidents?
   - Recent merge activity?
   
   ## Database Health (use SQLite tool)
   - Is the database accessible?
   - Any obvious issues?
   
   ## Change Analysis
   - What's being changed?
   - What's the risk level?
   - What's the rollback plan?
   
   ## Recommendation
   GO / NO-GO / WAIT with specific reasoning.
   ```

3. **Test the integrated workflow**
   
   Test the data validator agent:
   ```
   @fanhub-validator Validate this new character data:
   {
     "name": "Gus Fring",
     "show_id": 1,
     "status": "deceased",
     "first_appearance": "S02E11"
   }
   ```
   
   The agent should:
   - Check schema (✅ required fields present)
   - Query database to verify show_id 1 exists
   - Check for existing "Gus Fring" entries
   - Report results

4. **Update the customization map**
   
   Add MCP to your mental model:
   ```
   Do you want this applied AUTOMATICALLY?
   ├── YES → Is it project-wide context?
   │         ├── YES → REPO INSTRUCTIONS
   │         └── NO → Should it apply to specific file types?
   │                   ├── YES → CUSTOM INSTRUCTIONS
   │                   └── NO → Does it need external system access?
   │                             ├── YES → MCP + SKILLS
   │                             └── NO → SKILLS alone
   └── NO → Do you want external system access?
             ├── YES → PROMPTS or AGENTS with MCP tools
             └── NO → PROMPTS or AGENTS without MCP
   ```

5. **Document the complete FanHub AI stack**
   
   Create `fanhub/docs/AI-STACK.md`:
   ```markdown
   # FanHub AI Collaboration Stack
   
   ## Customization Layers
   
   | Layer | Purpose | Files |
   |-------|---------|-------|
   | Repo Instructions | Project context | `.github/copilot-instructions.md` |
   | Custom Instructions | File-type rules | `.github/instructions/*.instructions.md` |
   | Prompts | Task templates | `.github/prompts/*.prompt.md` |
   | Agents | Specialist personas | `.github/agents/*.agent.md` |
   | Skills | Domain knowledge | `.github/skills/*/SKILL.md` |
   | MCP Servers | External system access | `.vscode/mcp.json` |
   
   ## Active MCP Servers
   
   | Server | Purpose | Tools Provided |
   |--------|---------|----------------|
   | SQLite | FanHub database | query, schema inspection |
   | GitHub | Repository status | issues, PRs, commits |
   
   ## Integrated Workflows
   
   | Workflow | Components | Use Case |
   |----------|------------|----------|
   | Data Validation | fanhub-validator agent + SQLite MCP | Validate data against live DB |
   | Infra Review | infra-review prompt + GitHub MCP | Safe infrastructure changes |
   ```

#### ✅ Success Criteria

- [ ] Created fanhub-validator agent with MCP tools
- [ ] Created infra-review prompt with MCP tools
- [ ] Successfully tested integrated validation workflow
- [ ] Created AI-STACK.md documenting the complete stack
- [ ] Team understands how all customization types work together

#### ✨ The "After" — The Improved Experience

The FanHub team now has:
- **Layered customization** from broad context to specific capabilities
- **External system access** through MCP servers
- **Integrated workflows** that combine knowledge (skills) with action (MCP)
- **Documentation** of the complete AI collaboration stack

**The complete picture:**
```
┌─────────────────────────────────────────────────────────────┐
│                     FanHub + Copilot                        │
├─────────────────────────────────────────────────────────────┤
│  KNOWLEDGE LAYER                                            │
│  ├── Repo Instructions (always-on project context)         │
│  ├── Custom Instructions (file-type specific rules)        │
│  └── Skills (domain expertise, loaded when relevant)       │
├─────────────────────────────────────────────────────────────┤
│  TASK LAYER                                                 │
│  ├── Prompts (reusable task templates)                     │
│  └── Agents (specialist personas with tool access)         │
├─────────────────────────────────────────────────────────────┤
│  CAPABILITY LAYER                                           │
│  └── MCP Servers (external system access)                  │
│       ├── SQLite (database queries)                        │
│       └── GitHub (repo status)                             │
└─────────────────────────────────────────────────────────────┘
```

#### 📚 Official Docs

- [VS Code Docs: Chat Tools](https://code.visualstudio.com/docs/copilot/chat/chat-tools)
- [VS Code Docs: Custom Agents with Tools](https://code.visualstudio.com/docs/copilot/customization/custom-agents)
- [VS Code Docs: MCP Tools in Chat](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_use-mcp-tools-in-chat)

#### 💭 Team Reflection

**Elena**: *"My validation workflows are finally complete. Copilot knows our rules AND can check our data."*

**Jordan**: *"Infrastructure changes are safer because Copilot sees actual system state."*

**David**: *"The governance is in place. Power with responsibility."*

**Sarah** (joining the conversation): *"OK, I'm impressed. This isn't just 'AI hype'—this is systematic AI collaboration with real capabilities."*

---

## 🧠 Key Takeaways

### What We Learned

1. **MCP extends Copilot's capabilities** — From knowing things to doing things
2. **MCP servers provide tools, resources, and prompts** — Standardized interface to external systems
3. **Security matters** — Only install trusted servers, use input variables for secrets
4. **MCP + Skills = Complete validation** — Knowledge plus verification
5. **Governance enables adoption** — Clear policies let teams use MCP confidently

### When to Use MCP

| Scenario | Use MCP? |
|----------|----------|
| Need to verify data against a database | ✅ Yes |
| Need to check deployment/system status | ✅ Yes |
| Need to call external APIs | ✅ Yes |
| Just need coding standards | ❌ No (use Instructions) |
| Just need domain knowledge | ❌ No (use Skills) |
| Need autonomous task execution | ⚠️ Maybe (Agent + MCP) |

### MCP in the Customization Hierarchy

```
┌─────────────────────────────────────────────────────────────┐
│  WHAT COPILOT KNOWS                                         │
│  ├── Repo Instructions → Project context                   │
│  ├── Custom Instructions → File-specific rules             │
│  └── Skills → Domain expertise                             │
├─────────────────────────────────────────────────────────────┤
│  WHAT COPILOT CAN DO                                        │
│  ├── Prompts → Task templates (you trigger)                │
│  ├── Agents → Autonomous workflows (persona + tools)       │
│  └── MCP → External system access (databases, APIs, etc.)  │
└─────────────────────────────────────────────────────────────┘
```

---

## 📚 Quick Reference

### MCP Configuration

**Workspace config** (`.vscode/mcp.json`):
```json
{
  "servers": {
    "serverName": {
      "type": "stdio",
      "command": "npx",
      "args": ["-y", "@publisher/mcp-server-name", "arg1"],
      "env": {
        "API_KEY": "${input:api-key}"
      }
    }
  },
  "inputs": [
    {
      "type": "promptString",
      "id": "api-key",
      "description": "API Key",
      "password": true
    }
  ]
}
```

### Useful Commands

| Command | Purpose |
|---------|---------|
| `MCP: List Servers` | View and manage MCP servers |
| `MCP: Browse Servers` | Browse GitHub MCP registry |
| `MCP: Reset Trust` | Reset server trust settings |
| `MCP: Reset Cached Tools` | Clear cached tool definitions |

### Resources

- **Official Docs**: [VS Code MCP Servers](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)
- **MCP Protocol**: [modelcontextprotocol.io](https://modelcontextprotocol.io/)
- **Server Registry**: [github.com/mcp](https://github.com/mcp)
- **Server Examples**: [github.com/modelcontextprotocol/servers](https://github.com/modelcontextprotocol/servers)

---

*"Instructions tell Copilot what to do. Skills tell it what to know. MCP lets it actually DO things. Together, they transform Copilot from an assistant into a true development partner."*
