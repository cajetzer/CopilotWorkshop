# Module 4: Agents and Tools — Turning Context into Capability

## 📖 Overview

You’ve practiced great prompts. Now make them travel farther with agents and tools. In Copilot, agents (chat participants like @workspace, @vscode, and @terminal) bring the right context to the conversation, while tools (including MCP servers) let Copilot take grounded actions. This module shows you how to pick the right specialist, encode team conventions so answers match your standards, and plan safe extensions with custom tools.

## Prerequisites

- Completed Modules 1–3
- Visual Studio Code with Copilot Chat
- Basic familiarity with chat mentions (e.g., @workspace) and slash commands

## Estimated Time

- 30–40 minutes

---

## 🎯 Learning Objectives

By the end, you can:

- Choose the right chat participant for a task with confidence
- Use slash commands to accelerate common requests
- Encode project conventions so @workspace answers align with your standards
- Understand what MCP (Model Context Protocol) is and when to use it
- Design safe, auditable tools that extend Copilot without risking production

---

## 📚 Content

### Agents vs. Tools

- Agents: Domain-aware “specialists” you talk to in chat.
  - `@workspace`: Understands your repo’s files, symbols, and structure
  - `@vscode`: Knows editor features, settings, keybindings, extensions
  - `@terminal`: Helps with shell commands, scripts, CLI workflows
  - `@github` (where available): Works with issues/PRs and repo context
- Tools: Capabilities an agent can call (e.g., search, run, fetch, MCP servers). Tools add actions and data sources.

### Picking the Right Specialist

Use this quick decision tree:

```
Your question is about…
├─ This repository’s code, patterns, or architecture → @workspace
├─ VS Code configuration, features, or extensions → @vscode
├─ Shell commands, scripting, or CLIs → @terminal
├─ GitHub issues/PRs (Enterprise contexts) → @github
└─ General programming or ideas → plain chat
```

### Slash Commands (Fast Paths)

- `/explain`: Explain selected code (best with @workspace)
- `/fix`: Suggest fixes for issues
- `/tests`: Propose unit tests aligned to project patterns
- `/doc`: Generate documentation for the current file or symbol
- `/optimize`: Suggest performance or readability improvements
- `/new`: Scaffold new files following project conventions

See: https://code.visualstudio.com/docs/copilot/copilot-chat#_slash-commands

### Repository-Scoped Guidance (Teach @workspace your standards)

Copilot gets better when your conventions are explicit. Store lightweight guides in your repo and reference them in prompts.

Suggested files:

- `docs/ARCHITECTURE.md`: Layers, boundaries, cross-cutting concerns
- `docs/PATTERNS.md`: Error handling, logging, testing patterns
- `docs/CONVENTIONS.md`: Naming, folders, dependency rules
- `docs/API.md` (if relevant): Endpoints, contracts, error shapes

Optional “hints” file for your team:

```
.github/copilot-workspace-hints.md

# Workspace Hints for Copilot

When answering questions about this repo:
- Use docs/ARCHITECTURE.md for system/flow questions
- Prefer patterns in docs/PATTERNS.md
- Follow naming and folder rules in docs/CONVENTIONS.md
- For data access, focus on src/repositories/
- For auth, focus on src/middleware/auth/
```

### Extending with MCP (Model Context Protocol)

MCP lets you add custom, auditable tools (e.g., query a dev database, read internal docs, check deployment status). Treat these as product features: design the interface, set guardrails, and test in safe environments.

Good candidates:

- Read-only documentation fetchers (internal wikis, runbooks)
- Environment/status lookups (staging only)
- Ticket/incident lookup (limited fields)

Guardrails to require:

- Principle of least privilege (read-only first; no prod access)
- Clearly logged/observable actions
- Timeouts and safe fallbacks
- Versioned configs and reviews like any code change

Docs:

- Model Context Protocol: https://modelcontextprotocol.io/
- MCP in VS Code Copilot Chat: https://code.visualstudio.com/docs/copilot/chat/mcp-servers

---

## 🔨 Exercises

Designed with our personas to build intuition and confidence.

### Exercise 1: “Pick the Right Expert” (Priya)

#### 📖 The Story

Priya sometimes asks plain chat about code navigation and asks @workspace about keybindings. Results feel inconsistent.

#### 🎯 Objective

Build the habit of routing questions to the agent that has the right context.

#### 📋 Steps

1. Open a small project (this repo is fine).
2. Ask each of these to different agents and compare answers:
   - `@workspace Where is our authentication logic organized?`
   - `@vscode What’s the shortcut to search all files and go to definition?`
   - `@terminal Show a one-liner to list all Markdown files and count lines.`
   - Plain chat: “How do I debounce a function in JavaScript?”
3. Ask the same question — “How do I debug X?” — to @workspace, @vscode, @terminal, and plain chat. Note how each perspective differs.

#### ✅ Success Criteria

- [ ] @workspace references real files/symbols in the repo
- [ ] @vscode answers with concrete editor steps/shortcuts
- [ ] @terminal produces commands that run in your shell
- [ ] You can articulate which agent fits which question type

#### 📚 Official Docs

- Chat participants: https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants

#### 💭 Priya’s Reaction

“Oh — each agent is a specialist. I get better answers when I ask the right expert.”

#### 🚀 Challenge Extension

Create `docs/agent-guide.md` with 6–10 examples of “Ask X to Y agent.” Share with your team.

---

### Exercise 2: “Teach @workspace Our Standards” (David)

#### 📖 The Story

David sees @workspace suggest generic patterns that don’t match the team’s conventions. He wants answers aligned to their architecture and error handling.

#### 🎯 Objective

Codify conventions so @workspace can ground answers in your repo’s standards.

#### 📋 Steps

1. Add or refine lightweight docs:
   - `docs/ARCHITECTURE.md` (layers, boundaries)
   - `docs/PATTERNS.md` (error handling, logging, testing styles)
   - `docs/CONVENTIONS.md` (naming, folders, dependency rules)
2. Create `.github/copilot-workspace-hints.md` (see example above) referencing those files.
3. Ask:
   - `@workspace Summarize our architecture and list the key layers with file links.`
   - `@workspace Generate tests for module X that follow our patterns in docs/PATTERNS.md.`
   - `@workspace Propose a new module skeleton that respects docs/CONVENTIONS.md.`

#### ✅ Success Criteria

- [ ] @workspace cites your docs and mirrors your conventions
- [ ] Generated proposals match naming and folder rules
- [ ] Test suggestions reflect your preferred frameworks/patterns

#### 📚 Official Docs

- Work with repository context: https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants

#### 💭 David’s Realization

“Copilot didn’t replace judgment — it amplified it once I made our standards explicit.”

#### 🚀 Challenge Extension

Add a short “How we evaluate Copilot answers” checklist to `docs/PATTERNS.md` (e.g., input validation, error types, logging, tests).

---

### Exercise 3: “Design a Safe Tool” (Marcus)

#### 📖 The Story

Marcus wants Copilot to answer “Is staging healthy?” without digging into dashboards. He’s tempted to wire production credentials, but knows that’s risky.

#### 🎯 Objective

Design a minimal, read-only MCP tool that answers a real question safely.

#### 📋 Steps

1. Identify a low-risk capability (read-only): e.g., fetch last deploy status from a staging endpoint, or retrieve service versions from a status JSON.
2. Define the tool contract (inputs/outputs):
   - Name: `stagingStatus.read`
   - Input: `{ service?: string }`
   - Output: `{ status: "healthy"|"degraded"|"down", version: string, checkedAt: string }`
3. Write guardrails:
   - Read-only, staging-only URL
   - 5s timeout, retries disabled
   - Log every call with timestamp and arguments
   - No secrets in output; redact or omit
4. Implementation plan (pseudocode or doc): how the MCP server fetches and returns the data.
5. Optional (advanced): Register the MCP server in VS Code per docs and test in a sandbox repo.

#### ✅ Success Criteria

- [ ] Clear contract with minimal, necessary inputs
- [ ] Read-only behavior and staging-only scope
- [ ] Timeouts and logging defined
- [ ] No production credentials or mutable actions

#### 📚 Official Docs

- MCP overview: https://modelcontextprotocol.io/
- VS Code MCP: https://code.visualstudio.com/docs/copilot/chat/mcp-servers

#### 💭 Marcus’ Takeaway

“I can extend Copilot safely by starting small, read-only, and observable.”

#### 🚀 Challenge Extension

Add a “runbook” section: what to check if the tool returns `degraded` or times out.

---

## 🧠 Key Takeaways

- Pick the specialist: @workspace for repo code, @vscode for editor, @terminal for shell, @github for platform tasks.
- Encode your standards so Copilot can follow them consistently.
- Treat tools like product features: least privilege, logs, and reviews.
- Start simple with MCP: read-only helpers that answer focused questions.

---

## ➡️ Next Steps

Continue to Module 5 to explore Copilot on the web and across GitHub workflows: modules/05-copilot-web/README.md

# Module 4: Agents and Tools — Extending Copilot's Reach

## 📖 Overview

You've mastered prompts. Now you'll learn about **agents**—specialized assistants that extend Copilot's capabilities into specific domains. Agents know things that generic Copilot doesn't: your codebase structure, VS Code configuration, terminal commands, and soon—your custom tools.

This module teaches you to use built-in agents effectively, create agent configurations that travel with your repository, and understand how to extend Copilot with custom capabilities.

## Prerequisites

- Completed Modules 1–3
- Visual Studio Code with Copilot Chat
- Basic familiarity with @workspace, @vscode, and @terminal

## Estimated time

- 25–35 minutes

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Master the built-in chat participants (@workspace, @vscode, @terminal)
- Understand when to use each agent for maximum effectiveness
- Create agent configurations stored in your repository
- Use slash commands as agent shortcuts
- Configure custom tools and MCP servers
- Build an agent strategy for your team

---

## 📚 Content

### What Are Agents?

Agents (also called "chat participants") are specialized AI assistants with deep knowledge of specific domains. While generic Copilot Chat knows about programming in general, agents know about _your specific context_.

**Built-in Agents:**

| Agent        | Domain Expertise | What It Can Access                           |
| ------------ | ---------------- | -------------------------------------------- |
| `@workspace` | Your codebase    | All files, symbols, structure, documentation |
| `@vscode`    | VS Code editor   | Settings, extensions, keybindings, features  |
| `@terminal`  | Command line     | Shell commands, scripting, CLI tools         |
| `@github`    | GitHub platform  | Issues, PRs, Actions, repos (Enterprise)     |

**📖 Official Documentation:**

- [Chat participants](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants)

### Why Agents Matter

Generic question to Copilot:

```
How do I implement authentication?
```

_Result: Generic tutorial about authentication concepts_

Same question to @workspace:

```
2. **Test @workspace — The Codebase Expert**

   Open Copilot Chat and try these:

```

@workspace What error types are defined in this project?

```

_Expected: Lists ValidationError and NotFoundError with details_

```

@workspace How does UserService handle errors?

```

_Expected: Explains the throw pattern with file references_

```

@workspace Find all TODO comments in the codebase

```

_Expected: Lists the TODO in user-service.js_

```

@workspace What's the structure of this project?

```

_Expected: Describes the src/services, src/errors structure_

3. **Test @vscode — The Editor Expert**

```

@vscode How do I search across all files for "ValidationError"?

```

_Expected: Keyboard shortcuts for VS Code search_

```

@vscode What's the shortcut to go to definition?

```

_Expected: F12 or Ctrl/Cmd+Click_

```

@vscode How do I configure format on save for JavaScript?

```

_Expected: Settings JSON for formatOnSave_

```

@vscode How do I create a custom snippet for error handling?

```

_Expected: Instructions for creating user snippets_

4. **Test @terminal — The Command Line Expert**

```

@terminal How do I find all .js files that contain "async"?

```

_Expected: grep or find command_

```

@terminal What's the command to watch for file changes and run tests?

```

_Expected: Something like nodemon or jest --watch_

```

@terminal How do I see which process is using port 3000?

```

_Expected: lsof or netstat command_

```

@terminal Create a one-liner to count lines of code in this project

```

_Expected: find + wc command_

5. **Compare: Same question, different agents**

Ask each agent:

```

How do I debug the getUserById function?

````

Notice the different perspectives:

- @workspace: Focuses on the code, suggests breakpoint locations, explains the logic
- @vscode: Explains how to set up launch.json, use the debugger UI
- @terminal: Shows how to run with --inspect flag, use node debugger
- Plain chat: Generic debugging advice

#### ✅ Success Criteria

- [ ] @workspace answered codebase questions with file references
- [ ] @vscode answered editor questions with VS Code specifics
- [ ] @terminal provided shell commands that work
- [ ] You understand which agent to use for different questions

#### 📚 Official Docs

- [Chat participants in VS Code](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants)

#### 💭 Priya's Realization

_"Each agent is a specialist. I wouldn't ask a surgeon about legal advice. Now I ask the right expert for each question."_

#### 🚀 Challenge Extension

Create a cheat sheet file in your project:

`.github/docs/agent-guide.md`:

```markdown
# When to Use Each Agent

## @workspace

- "Where is X implemented?"
- "How does Y work in our code?"
- "Find all places that use Z"
- "What's our pattern for...?"

## @vscode

- "How do I configure...?"
- "What's the shortcut for...?"
- "How do I set up debugging?"
- "What extension does...?"

## @terminal

- "What command does...?"
- "How do I script...?"
- "How do I find/search/process...?"
- "What's running on port...?"
````

---

### Exercise 2: Configuring @workspace — "Teaching the Expert"

#### 📖 The Story

**David** has noticed that @workspace sometimes gives generic advice instead of following his team's patterns. It knows the code exists but doesn't always apply the team's conventions.

_"What if I could teach @workspace about our specific practices?"_ he wonders.

#### 🎯 Objective

Configure @workspace to give better answers by providing structured documentation it can reference.

#### 📋 Steps

1. **Create an agent context file**

   Create `.github/copilot-workspace-hints.md`:

   ````markdown
   # Workspace Context for Copilot

   ## Project Overview

   This is a Node.js e-commerce API with the following characteristics:

   - **Architecture**: Layered (Controller → Service → Repository)
   - **Language**: JavaScript ES6+ (not TypeScript)
   - **Framework**: Express.js
   - **Database**: PostgreSQL via node-postgres
   - **Testing**: Jest

   ## Key Directories

   | Directory           | Purpose              | Key Files                 |
   | ------------------- | -------------------- | ------------------------- |
   | `src/controllers/`  | HTTP handlers        | One file per resource     |
   | `src/services/`     | Business logic       | One file per domain       |
   | `src/repositories/` | Database access      | One file per table        |
   | `src/middleware/`   | Express middleware   | auth.js, error-handler.js |
   | `src/errors/`       | Custom error classes | index.js                  |

   ## Important Patterns

   ### Error Handling

   - Always throw errors, never return null for "not found"
   - Use custom error classes: ValidationError, NotFoundError, AuthorizationError
   - Errors bubble up to error-handling middleware

   ### Service Pattern

   - Services receive dependencies via constructor (DI)
   - All methods are async
   - Validate inputs at the start of each method

   ### Response Format

   All API responses follow:

   ```json
   { "success": true, "data": {} }
   { "success": false, "error": { "code": "", "message": "" } }
   ```
   ````

   ## Where to Find Things

   - **Authentication logic**: `src/middleware/auth.js`
   - **Database connection**: `src/config/database.js`
   - **API routes**: `src/routes/index.js`
   - **Validation schemas**: `src/validators/`
   - **Environment config**: `.env.example`

   ## Coding Standards

   - Use `const` by default, `let` when reassignment needed
   - Use async/await, never callbacks
   - Include JSDoc comments on public methods
   - File naming: kebab-case (user-service.js)
   - Class naming: PascalCase (UserService)

   ```

   ```

2. **Test improved @workspace responses**

   Ask:

   ```
   @workspace Where should I add a new payment feature?
   ```

   With the context file, it should reference your specific directories.

   Ask:

   ```
   @workspace How should I handle the case when a product isn't found?
   ```

   It should recommend throwing NotFoundError based on your patterns.

3. **Create domain-specific context files**

   Create `.github/contexts/authentication.md`:

   ````markdown
   # Authentication Context

   ## How Auth Works in This Project

   1. JWT tokens issued on login via `POST /auth/login`
   2. Token stored client-side (httpOnly cookie or Authorization header)
   3. `authMiddleware` in `src/middleware/auth.js` validates tokens
   4. User info attached to `req.user` after validation

   ## Key Files

   - `src/middleware/auth.js` - Token validation middleware
   - `src/services/auth-service.js` - Login, logout, token generation
   - `src/controllers/auth-controller.js` - HTTP handlers

   ## Environment Variables

   - `JWT_SECRET` - Secret for signing tokens
   - `JWT_EXPIRY` - Token expiration (default: 24h)

   ## Adding Protected Routes

   ```javascript
   router.get("/protected", authMiddleware, controller.protectedMethod);
   ```
   ````

   ## Common Patterns

   ### Check if user owns resource

   ```javascript
   if (resource.userId !== req.user.id) {
     throw new AuthorizationError("Not authorized to access this resource");
   }
   ```

   ### Role-based access

   ```javascript
   if (!req.user.roles.includes("admin")) {
     throw new AuthorizationError("Admin access required");
   }
   ```

   ```

   ```

4. **Test domain-specific queries**

   ```
   @workspace How do I protect a new API endpoint?
   ```

   ```
   @workspace How do I check if the current user is an admin?
   ```

5. **Create a troubleshooting context**

   Create `.github/contexts/troubleshooting.md`:

   ```markdown
   # Common Issues and Solutions

   ## "Cannot find module" errors

   - Check that the file exists at the path
   - Verify the require path is relative (./path) not absolute
   - Run `npm install` if it's a dependency

   ## Database connection failures

   - Verify PostgreSQL is running: `pg_isready`
   - Check DATABASE_URL in .env
   - Ensure database exists: `psql -l`

   ## Tests failing unexpectedly

   - Clear Jest cache: `jest --clearCache`
   - Check for async issues (missing await)
   - Verify mocks are reset in beforeEach

   ## Authentication issues

   - Check JWT_SECRET is set
   - Verify token hasn't expired
   - Ensure authMiddleware is applied to route
   ```

#### ✅ Success Criteria

- [ ] Created workspace hints file with project overview
- [ ] Created domain-specific context files
- [ ] @workspace references your documentation in answers
- [ ] Answers are more specific to your project's patterns

#### 📚 Official Docs

- [Chat participants in VS Code](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants)

#### 💭 David's Insight

_"@workspace was already smart. Now it's smart AND knows our specific way of doing things. It's like onboarding an engineer by giving them documentation—except the engineer is AI."_

#### 🚀 Challenge Extension

Create context files for:

- `.github/contexts/database.md` - Database patterns and queries
- `.github/contexts/testing.md` - Testing conventions
- `.github/contexts/deployment.md` - Deployment process

---

### Exercise 3: Slash Command Workflows — "The Power Combos"

#### 📖 The Story

**Sarah** has been using slash commands one at a time. Her junior colleague asks, _"Can you show me how to use these efficiently?"_

Sarah demonstrates a workflow: select code, /explain, understand it, /fix, apply fixes, /tests, generate tests. In minutes, she's improved and tested a function.

_"It's not about individual commands,"_ she explains. _"It's about chaining them into a workflow."_

#### 🎯 Objective

Master slash command combinations for efficient development workflows.

#### 📋 Steps

1. **The Understanding Workflow**

   Start with unfamiliar code. Create `src/utils/mystery.js`:

   ```javascript
   const m = (a, f) => a.reduce((p, c, i) => (f(c, i) ? [...p, c] : p), []);
   const r = (a, n = a.length) => {
     for (let i = n - 1; i > 0; i--) {
       const j = Math.floor(Math.random() * (i + 1));
       [a[i], a[j]] = [a[j], a[i]];
     }
     return a;
   };
   const g = (a, k) =>
     Object.entries(
       a.reduce((p, c) => ({ ...p, [c[k]]: [...(p[c[k]] || []), c] }), {})
     );
   module.exports = { m, r, g };
   ```

   **Step 1: Understand**

   - Select all the code
   - Type `/explain`
   - Read what each function does

   **Step 2: Improve names**

   - Select the code
   - Inline chat: "Rename these functions and variables to be descriptive"
   - Review and accept

   **Step 3: Document**

   - Select the improved code
   - Type `/doc`
   - Accept JSDoc comments

2. **The Fix Workflow**

   Create `src/utils/calculator.js` with intentional issues:

   ```javascript
   function calculate(operation, a, b) {
     if ((operation = "add")) return a + b;
     if ((operation = "subtract")) return a - b;
     if ((operation = "multiply")) return a * b;
     if ((operation = "divide")) return a / b;
     return null;
   }

   function processNumbers(numbers) {
     var total = 0;
     for (i = 0; i <= numbers.length; i++) {
       total = total + numbers[i];
     }
     return total;
   }
   ```

   **Step 1: Identify issues**

   - Select all code
   - Type `/fix`
   - Review the issues found (assignment vs comparison, var, off-by-one)

   **Step 2: Apply fixes**

   - Accept the suggested fixes
   - Or use inline chat for specific fixes

   **Step 3: Optimize**

   - Select the fixed code
   - Type `/optimize`
   - See modern JS improvements (arrow functions, reduce, etc.)

   **Step 4: Verify with tests**

   - Type `/tests`
   - Review generated tests
   - The tests should pass with fixed code

3. **The New Feature Workflow**

   Create a new feature from scratch using slash commands:

   **Step 1: Scaffold with /new**

   - In chat: `/new src/services/notification-service.js`
   - Let it create the file structure

   **Step 2: Generate implementation**

   - Type in the new file:

   ```javascript
   // Service for sending notifications via email, SMS, and push
   // Methods: sendEmail, sendSMS, sendPush, sendBulk
   ```

   - Let Copilot complete based on comments

   **Step 3: Document with /doc**

   - Select each method
   - Type `/doc` to add JSDoc

   **Step 4: Test with /tests**

   - Select the service
   - Type `/tests`
   - Review test coverage

4. **The Review Workflow**

   Create a code review workflow:

   **Step 1: Explain the code**

   - Open a file you want to review
   - Select a function
   - Type `/explain`

   **Step 2: Check for issues**

   - Type `/fix` to find potential bugs

   **Step 3: Suggest optimizations**

   - Type `/optimize` to find improvements

   **Step 4: Simplify if needed**

   - Type `/simplify` for complex logic

#### ✅ Success Criteria

- [ ] Used /explain to understand mystery code
- [ ] Used /fix to identify and fix bugs
- [ ] Used /optimize to modernize code
- [ ] Used /tests to generate test coverage
- [ ] Chained commands into efficient workflows

#### 📚 Official Docs

- [Slash commands reference](https://code.visualstudio.com/docs/copilot/copilot-chat#_slash-commands)

#### 💭 Sarah's Teaching

_"Slash commands are verbs. /explain, /fix, /test—they're actions. Chain them together and you have a workflow that transforms code from unknown to understood to improved to tested."_

#### 🚀 Challenge Extension

Create a personal workflow cheat sheet:

```markdown
# My Slash Command Workflows

## Understanding New Code

1. /explain → Understand what it does
2. Inline: "Add comments" → Document understanding
3. /simplify → If too complex

## Fixing Issues

1. /fix → Find problems
2. Apply fixes
3. /tests → Verify fixes work

## Adding Features

1. /new → Scaffold file
2. Comment-driven completion
3. /doc → Add documentation
4. /tests → Add tests

## Code Review

1. /explain → Understand intent
2. /fix → Find bugs
3. /optimize → Find improvements
```

---

### Exercise 4: Building an Agent Reference — "The Team Playbook"

#### 📖 The Story

**Marcus** has learned a lot about agents. But every time a new team member joins, they ask the same questions: _"When do I use @workspace?"_, _"What are all the slash commands?"_, _"How do I ask about our auth system?"_

He decides to create a comprehensive reference that lives in the repository—so new developers get this knowledge automatically.

#### 🎯 Objective

Create a team agent playbook stored in the repository.

#### 📋 Steps

1. **Create the agent playbook**

   Create `.github/docs/COPILOT_GUIDE.md`:

   ```markdown
   # GitHub Copilot Guide for This Project

   This guide helps you get the most out of Copilot in our codebase.

   ## Quick Reference

   ### Which Agent to Use

   | Question Type               | Agent        | Example                      |
   | --------------------------- | ------------ | ---------------------------- |
   | Where/what is in our code?  | `@workspace` | "Where is auth implemented?" |
   | How do I configure VS Code? | `@vscode`    | "How do I set up debugging?" |
   | What terminal command?      | `@terminal`  | "How do I run tests?"        |
   | General programming         | (none)       | "What is a closure?"         |

   ### Slash Command Cheat Sheet

   | Command     | Use When              | Example                 |
   | ----------- | --------------------- | ----------------------- |
   | `/explain`  | Don't understand code | Select code → /explain  |
   | `/fix`      | Code has issues       | Select code → /fix      |
   | `/tests`    | Need test coverage    | Select code → /tests    |
   | `/doc`      | Need documentation    | Select code → /doc      |
   | `/optimize` | Code is slow/outdated | Select code → /optimize |
   | `/simplify` | Code is too complex   | Select code → /simplify |

   ## Project-Specific Prompts

   ### Finding Things
   ```

   @workspace Where is the [feature] implemented?
   @workspace What files handle [domain]?
   @workspace Show me how [pattern] is used

   ```

   ### Creating Things
   ```

   @workspace Create a new service for [domain] following our patterns
   @workspace Add a new endpoint for [operation] on [resource]
   @workspace Write tests for [file/function]

   ```

   ### Understanding Things
   ```

   @workspace How does [feature] work?
   @workspace What's the flow when a user [action]?
   @workspace Why is [code] implemented this way?

   ```

   ## Our Custom Contexts

   We have context files that help Copilot understand our project:

   - `.github/copilot-instructions.md` - Global coding rules
   - `.github/copilot-workspace-hints.md` - Project structure
   - `.github/contexts/authentication.md` - Auth system details
   - `.github/contexts/troubleshooting.md` - Common issues

   ## Tips for This Codebase

   ### Authentication Questions
   ```

   @workspace How do I protect a route?
   @workspace What does req.user contain?
   @workspace How do I check user permissions?

   ```

   ### Database Questions
   ```

   @workspace How do I add a new table?
   @workspace Show me the pattern for database queries
   @workspace How do I handle transactions?

   ```

   ### Testing Questions
   ```

   @workspace What's our test file naming convention?
   @workspace How do I mock the database?
   @workspace Show me a test example for services

   ```

   ## Workflows

   ### I'm new and exploring the codebase
   1. `@workspace What's the architecture of this project?`
   2. `@workspace Where should I start reading?`
   3. Open key files, use `/explain` on complex parts

   ### I'm adding a new feature
   1. `@workspace How is a similar feature ([example]) implemented?`
   2. Use prompts from `.github/prompts/new-feature.prompt.md`
   3. `/tests` to generate tests
   4. `/doc` to add documentation

   ### I'm debugging an issue
   1. `@workspace Where is [feature] implemented?`
   2. `/explain` on the relevant code
   3. `/fix` if there's an obvious bug
   4. `@terminal How do I run tests for [file]?`

   ### I'm reviewing code
   1. `/explain` to understand the change
   2. `/fix` to spot potential issues
   3. `/optimize` for improvement suggestions
   ```

2. **Create quick-reference files**

   Create `.github/docs/QUICK_PROMPTS.md`:

   ```markdown
   # Quick Prompts for Common Tasks

   Copy-paste these prompts for common tasks.

   ## Creating a new Service
   ```

   @workspace Create a [Name]Service with:

   - Constructor receiving [dependencies]
   - Methods for: [list methods]
   - Follow our service pattern from docs/PATTERNS.md

   ```

   ## Creating a new Endpoint
   ```

   @workspace Add a [METHOD] /[path] endpoint that:

   - Validates input with Joi
   - Calls [service method]
   - Returns our standard response format

   ```

   ## Writing Tests
   ```

   @workspace Write tests for [file] covering:

   - Happy path
   - Validation errors
   - Not found cases
   - Edge cases: [list]

   ```

   ## Debugging
   ```

   @workspace The [function] is returning [wrong result].
   Expected: [expected]
   Actual: [actual]
   Help me find the bug.

   ```

   ## Refactoring
   ```

   @workspace Refactor [code] to:

   - [improvement 1]
   - [improvement 2]
   - Keep the same behavior
   - Maintain test compatibility

   ```

   ```

3. **Commit the agent playbook**

   ```bash
   git add .github/docs/
   git commit -m "Add Copilot guide and quick prompts for team"
   ```

#### ✅ Success Criteria

- [ ] Created comprehensive COPILOT_GUIDE.md
- [ ] Created QUICK_PROMPTS.md with copy-paste templates
- [ ] Documentation covers agents, commands, and project-specific usage
- [ ] Files are committed to the repository

#### 📚 Official Docs

- [VS Code Copilot Chat overview](https://code.visualstudio.com/docs/copilot/copilot-chat)

#### 💭 Marcus's Contribution

_"Now when someone new joins, they don't have to figure out Copilot on their own. The playbook travels with the code. Check out the repo, get the Copilot expertise."_

#### 🚀 Challenge Extension

Add to your playbook:

- Troubleshooting section for when Copilot gives bad answers
- Project-specific "gotchas" and how to prompt around them
- Links to official documentation for deep dives

---

## 📝 Key Takeaways

| Concept                     | What You Learned                                           |
| --------------------------- | ---------------------------------------------------------- |
| **Agent Selection**         | @workspace for code, @vscode for editor, @terminal for CLI |
| **Configuring @workspace**  | Context files make @workspace smarter about your project   |
| **Slash Command Workflows** | Chain commands: /explain → /fix → /optimize → /tests       |
| **Team Playbooks**          | Store agent knowledge in the repo for team sharing         |

### The Agent Philosophy

This module taught our developers to think about agents as specialists:

- **Priya** learned to ask the right expert for each question
- **David** taught @workspace about his team's specific patterns
- **Sarah** mastered slash command workflows for efficiency
- **Marcus** created documentation that helps the whole team

The common thread: **Agents are tools with specific purposes**. Choose the right one, configure it well, and document your learnings for the team.

---

## ➡️ Next Steps

Continue to [Module 5: Copilot on the Web](../05-copilot-web/README.md) to learn about using Copilot directly on GitHub.com.

---

## 🔗 Additional Resources

**Chat Participants:**

- [VS Code Chat Participants](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants)
- [Using @workspace](https://code.visualstudio.com/docs/copilot/workspace-context)

**Slash Commands:**

- [Slash commands reference](https://code.visualstudio.com/docs/copilot/copilot-chat#_slash-commands)

**Advanced:**

- [Model Context Protocol](https://modelcontextprotocol.io/)
- [VS Code MCP Integration](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)
- [Copilot Extensions](https://docs.github.com/en/copilot/github-copilot-chat/github-copilot-extensions/about-github-copilot-extensions)

**General:**

- [VS Code Copilot Overview](https://code.visualstudio.com/docs/copilot/overview)
- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
