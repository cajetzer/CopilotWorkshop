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

### Exercise 7.1: Your First Database Query — "Elena Catches a Typo"

#### 📖 The Story

**Elena** (Quality Champion, 8 years) has been manually checking the database every time she validates character data. It's tedious: copy data, open database client, run query, come back, continue validation.

Today she discovers Copilot can query the database directly.

*"Wait,"* Elena realizes, *"if Copilot can actually check the database for me, my TV Show Data Validator skill becomes SO much more powerful. Let me try this."*

#### ❌ The "Before" — What Frustration Looks Like

Elena asks Copilot to validate a character:

```javascript
const newCharacter = {
  name: "Jessie Pinkman",  // Typo! Should be "Jesse"
  show_id: 1,
  status: "alive"
};
```

Copilot (using only the TV Show Data Validator skill): *"✅ Format looks valid. All required fields present. Status 'alive' is a valid enum value."*

**The typo slips through** because the skill only knows FORMAT, not actual DATA.

Elena switches to her database client, manually queries, discovers the typo. *"There has to be a better way..."*

#### 🎯 Objective

Give Copilot database access using MCP, then watch it catch typos automatically by combining your skill with real data.

**Time**: ~10 minutes to first "wow" moment

#### 📋 Steps

1. **Create a development database**
   
   FanHub includes a setup script that creates a SQLite database with sample data:
   
   ```bash
   bash /workspaces/CopilotTraining/fanhub/backend/src/database/setup-dev-db.sh
   ```
   
   This creates `/workspaces/CopilotTraining/dev-data/fanhub-dev.db` with Breaking Bad, Better Call Saul, The Office, and Stranger Things data.

2. **Configure the SQLite MCP server**
   
   Create `.vscode/mcp.json` in workspace root:
   
   ```bash
   mkdir -p /workspaces/CopilotTraining/.vscode
   
   cat > /workspaces/CopilotTraining/.vscode/mcp.json << 'JSON'
   {
     "servers": {
       "sqlite": {
         "type": "stdio",
         "command": "npx",
         "args": [
           "-y",
           "@modelcontextprotocol/server-sqlite",
           "/workspaces/CopilotTraining/dev-data/fanhub-dev.db"
         ]
       }
     }
   }
   JSON
   ```

3. **Activate the MCP server**
   
   - Command Palette (`Ctrl+Shift+P` / `Cmd+Shift+P`) → `Developer: Reload Window`
   - After reload, open Command Palette again → `MCP: List Servers`
   - You should see **sqlite** in the list with status "Stopped"
   - Click on **sqlite** to view details, then click **"Start Server"**
   - When prompted for trust, click **"Trust"** to allow the SQLite MCP server
   - The server status should change to **"Running"**
   
   **What just happened?** You gave Copilot the ability to query your FanHub database.
   
   💡 **Troubleshooting**: If the server shows "Stopped" and won't start:
   - Check Output panel (View → Output → select "MCP Servers") for errors
   - Verify the database exists: `ls -la /workspaces/CopilotTraining/dev-data/fanhub-dev.db`
   - Try running manually: `npx -y @modelcontextprotocol/server-sqlite /workspaces/CopilotTraining/dev-data/fanhub-dev.db`

4. **Verify the server is running**
   
   Before testing queries, confirm the server is active:
   - Command Palette → `MCP: List Servers`
   - **sqlite** should show status: **Running** ✅
   
   If it's stopped, start it again from the MCP servers panel.

5. **Quick verification query**
   
   In Copilot Chat, ask:
   ```
   @workspace How many characters do we have for Breaking Bad?
   ```
   
   **Expected**: Copilot should query the database and return: **4 characters**
   
   **If Copilot says "I can't query the database"**: The MCP server isn't running. Go back to step 4 and start the server via `MCP: List Servers`.

6. **🎉 The Magic Moment: Watch the typo get caught**
   
   Now ask Copilot to validate the same data from before:
   
   ```
   @workspace Validate this character data for FanHub:
   
   {
     "name": "Jessie Pinkman",
     "show_id": 1,
     "actor_name": "Aaron Paul",
     "status": "alive"
   }
   ```
   
   **Watch what happens without you saying "check the database"**:
   - Copilot uses the TV Show Data Validator skill (format rules)
   - Copilot *automatically detects* the SQLite MCP server
   - Copilot **queries the database** to check existing characters
   - Copilot finds "Jesse Pinkman" (correct spelling) and alerts you!
   
   ```
   ⚠️ Potential issue found:
   
   ❌ Name typo detected: Found existing character 'Jesse Pinkman' 
      (character_id: 2) for show_id 1. Did you mean 'Jesse' not 'Jessie'?
   
   ✅ show_id 1 exists: 'Breaking Bad'
   ✅ Format validation passed
   ```

6. **Test a valid character**
   
   Now try one that should pass:
   ```
   @workspace Validate this character data:
   
   {
     "name": "Holly White",
     "show_id": 1,
     "actor_name": "Elanor Anne Wenrich",
     "status": "alive"
   }
   ```
   
   Copilot should verify: format valid ✅, show exists ✅, no duplicate ✅
   
   **⚠️ Still not working?** Check that the MCP server is running via `MCP: List Servers` - it should show **Running**, not **Stopped**.

#### ✅ Success Criteria

- [ ] SQLite MCP server installed, **started**, and **trusted**
- [ ] Server shows status "Running" in `MCP: List Servers`
- [ ] Copilot successfully queried the database (character count worked)
- [ ] **Copilot caught the "Jessie" → "Jesse" typo without being told to check**
- [ ] Validated a correct character successfully
- [ ] Understand that skills + MCP = automatic intelligence

#### ✨ The "After" — The Transformation

**Before MCP** (2 minutes of context-switching):
1. Copilot validates format ✅
2. Elena opens database client
3. Elena runs `SELECT * FROM characters WHERE show_id = 1`
4. Elena spots "Jesse Pinkman" exists
5. Elena returns to Copilot: "Actually there's a typo..."

**After MCP** (10 seconds):
1. Elena asks Copilot to validate
2. Copilot automatically checks format AND database
3. Copilot catches the typo immediately

**Elena's reaction:**
> "That was MAGIC! I didn't tell Copilot to query the database—it just figured out it should because MCP was available. My skill taught it WHAT to validate, MCP gave it the HOW. In 10 minutes I went from manual verification to automatic validation against real data. This is the future."

#### 📚 Official Docs

- [VS Code Docs: Add an MCP Server](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_add-an-mcp-server)
- [SQLite MCP Server](https://github.com/modelcontextprotocol/servers/tree/main/src/sqlite)
- [MCP Configuration Format](https://code.visualstudio.com/docs/copilot/chat/mcp-servers#_configuration-format)

#### 💭 Elena's Realization

*"The TV Show Data Validator skill tells Copilot WHAT to check. MCP gives it the ability to actually CHECK it. The orchestration is automatic—I just ask for validation and Copilot figures out how to use both. This doesn't replace my testing expertise, it amplifies it."*

#### 🚀 Challenge Extension

Try validating intentionally bad data to watch Copilot catch multiple issues:

```
@workspace Validate this character:

{
  "name": "New Character",
  "show_id": 999,
  "status": "unknown"
}
```

Watch Copilot catch: ❌ show_id doesn't exist, ❌ invalid status enum. All without you saying "check the database."

**Why this matters**: You're seeing AI that makes intelligent decisions about when to query data, combining domain knowledge (skill) with capability (MCP) automatically.

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
