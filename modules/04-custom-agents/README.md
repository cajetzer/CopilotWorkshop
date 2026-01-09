# Module 4: Custom Agents

## ⏰ Monday 1:30 PM — Autonomous Assistance

> *"I've been asking Copilot questions all morning. What if I could tell it: 'Go solve this problem, and let me know when you're done?'"*  
> — David, imagining a world where AI handles the tedious parts

---

## 📖 The Story So Far

The team has built an impressive foundation:
- **Module 1**: Architecture docs and team standards (`copilot-instructions.md`)
- **Module 2**: Structured planning with agent plan mode for systematic AI collaboration
- **Module 3**: A prompt library for tests, specs, and feature planning

But there's a pattern emerging: Even with great prompts and planning, someone has to manually orchestrate each step. Ask for an implementation plan. Copy the result. Ask for the code. Apply the code. Ask for tests. Apply the tests.

*"What if Copilot could do all of that automatically?"* Jordan asks. As a platform engineer, he's built pipelines that automate everything. Manual steps are a code smell to him.

**This module's mission**: Graduate from interactive chat to autonomous agents that work on your behalf, using your plan mode skills to design them effectively.

---

💡 **Plan Mode Integration**: You'll use plan mode to design agent personalities, capabilities, and workflows before creating custom agents. The systematic thinking from Module 2 makes agent design more effective.

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Understand the difference between Chat, Edit, and Agent modes
- Create custom agents with specialized capabilities
- Use MCP (Model Context Protocol) for extended functionality
- Experience Copilot CLI for terminal workflows
- Run background agents on complex tasks

**Time**: ~90 minutes  
**Personas**: David (Architect), Jordan (Platform Engineer), Marcus (DevOps)

---

## 🧠 Mindful Moment: From Assistant to Colleague

Think about the evolution:

| Era | Interaction | Who Does the Work |
|-----|-------------|-------------------|
| **Chat** | Q&A | Human orchestrates, AI suggests |
| **Edit** | Direct manipulation | AI makes targeted changes |
| **Agent** | Delegation | AI works autonomously, human reviews |

We're moving from "Copilot answers my questions" to "Copilot solves my problems."

The key insight: **Trust is earned through transparency.** Agents work autonomously, but they show their work. You review before accepting.

---

## 📚 Key Concepts

### Copilot Modes

VS Code Copilot has three modes:

1. **Ask Mode** (Default)
   - Conversational Q&A
   - Explains code, answers questions
   - You apply suggestions manually

2. **Edit Mode**
   - Direct file manipulation
   - Copilot proposes changes
   - You review diff before accepting

3. **Agent Mode**
   - Autonomous problem-solving
   - Can create files, run commands, iterate
   - Works until task is complete or blocked

### Custom Agents

You can create specialized agents that:
- Have specific instructions and context
- Use designated tools and capabilities
- Focus on particular domains (testing, security, DevOps)

### MCP (Model Context Protocol)

MCP extends what agents can do:
- Connect to external data sources
- Run specialized tools
- Access services beyond the code editor

### Copilot CLI

The new Copilot CLI brings AI agent capabilities to your terminal:
- **Interactive mode** — Start with `copilot` for conversations
- **Task execution** — Make file changes, run commands, create PRs
- **GitHub integration** — Work with issues, PRs, and workflows
- **Programmatic mode** — Use `-p` for scripted automation

> 📘 See [Appendix B: GitHub Copilot CLI](../09-appendix-b-copilot-cli/README.md) for full coverage.

---

## 🔨 Exercises

### Exercise 3.1: Your First Agent Workflow — "Marcus Goes Autonomous"

#### 📖 The Story

**Marcus** (DevOps Developer, 5 years) gets a ticket: "Add health check endpoints to all API services."

In the old world, this meant:
1. Ask Copilot how to add a health check
2. Manually create the endpoint
3. Ask Copilot for tests
4. Manually create the test file
5. Run tests, fix issues, repeat

*"This is exactly the kind of tedious work that should be automated,"* Marcus thinks.

Jordan shows him Agent Mode.

#### ❌ The "Before" — What Frustration Looks Like

Traditional Chat workflow for adding a health check:

```
[Human]: How do I add a health check endpoint to Express?
[Copilot]: Here's an example... (shows code snippet)
[Human]: (copies code, pastes into file)
[Human]: Now write tests for this
[Copilot]: Here are the tests... (shows code snippet)
[Human]: (copies code, creates test file)
[Human]: (runs tests, finds issues)
[Human]: The test failed because...
```

**5 back-and-forth exchanges** for one feature. Multiply by every feature.

#### 🎯 Objective

Use Agent Mode to implement a complete feature with minimal manual intervention.

#### 📋 Steps

1. **Switch to Agent Mode**
   
   Open Copilot Chat (`Ctrl+Shift+I` / `Cmd+Shift+I`)
   
   Click the mode dropdown (top of chat panel) and select **"Agent"**

2. **Describe the full task**

   ```
   @workspace Add a comprehensive health check endpoint to the FanHub backend:
   
   Requirements:
   - GET /api/health that returns service status
   - Check database connectivity
   - Include uptime, memory usage, and version info
   - Return appropriate status codes (200 OK, 503 Service Unavailable)
   - Add tests for both healthy and unhealthy scenarios
   - Follow our patterns in copilot-instructions.md
   
   Create all necessary files and run tests to verify.
   ```

3. **Watch Agent Mode work**
   
   Observe as the agent:
   - Reads your codebase to understand the structure
   - Creates the health check route
   - Registers it in the main app
   - Creates test files
   - Runs the tests
   - Iterates if tests fail

4. **Review the proposed changes**
   
   Before accepting, review:
   - Does the code follow your patterns?
   - Are the tests comprehensive?
   - Is error handling consistent?

5. **Accept or refine**
   
   If something needs adjustment, tell the agent:
   ```
   The health check looks good, but please also include:
   - A deep health check at /api/health/deep that tests each database table
   - Response time metrics
   ```

#### ✅ Success Criteria

- [ ] Switched to Agent Mode successfully
- [ ] Agent created at least 2 files (route + test)
- [ ] Agent ran terminal commands (npm test)
- [ ] Reviewed changes before accepting
- [ ] Health check follows copilot-instructions.md patterns
- [ ] Tests pass

#### ✨ The "After" — The Improved Experience

What used to take 30+ minutes of back-and-forth:
- **Agent Mode**: One prompt, complete implementation, 5 minutes
- **Human role**: Review and approve

**Marcus's new workflow**:
1. Describe the complete requirement
2. Let agent work
3. Review results
4. Ship

#### 📚 Official Docs

- [VS Code: Agent Mode](https://code.visualstudio.com/docs/copilot/chat/chat-agent-mode)
- [VS Code: Copilot Edits](https://code.visualstudio.com/docs/copilot/copilot-edits)

#### 💭 Marcus's Revelation

*"I spent the morning doing manual steps between AI suggestions. This is what I thought AI would be: tell it what you want, let it figure out the how, review the results. I'm not a prompt typist anymore—I'm a reviewer."*

#### 🚀 Challenge Extension

**Complex multi-file task**: Ask the agent to:
```
Add rate limiting middleware to all API routes:
- Use express-rate-limit package
- Configure different limits per route type (auth: 5/min, reads: 100/min, writes: 20/min)
- Add tests for rate limit behavior
- Update ARCHITECTURE.md to document the rate limiting strategy
```

---

### Exercise 3.2: Create a Custom Agent — "David's Architecture Reviewer"

#### 📖 The Story

**David** (Staff Engineer, 20 years) has a problem: Code reviews take forever because he's constantly checking the same things:
- Does this follow our architecture?
- Are the patterns consistent?
- Have we considered scalability?
- Is error handling proper?

*"I review the same patterns every single PR,"* David sighs. *"What if I could create an agent that knows my review checklist?"*

**Supporting Cast**: Elena adds testing criteria to David's agent, making it a comprehensive reviewer.

#### 🎯 Objective

Create a custom agent that reviews code against your team's architectural standards.

#### 📋 Steps

1. **Create the custom agent configuration**
   
   Create: `fanhub/.github/agents/architecture-reviewer.agent.md`

````markdown
---
name: 'Architecture Reviewer'
description: 'Reviews code changes against FanHub architectural standards'
model: 'gpt-4o'
---

# Architecture Reviewer Agent

You are a senior architect reviewing code changes for the FanHub project.

## Your Review Checklist

### 1. Pattern Consistency
- [ ] Code follows patterns defined in `.github/copilot-instructions.md`
- [ ] Async patterns are consistent (async/await, not mixed)
- [ ] Error handling matches our standard try/catch pattern
- [ ] Response formats follow our API conventions

### 2. Architecture Alignment
Based on `docs/ARCHITECTURE.md`:
- [ ] New code fits within the defined layer (routes, services, components)
- [ ] Data flow follows the documented pattern
- [ ] No inappropriate cross-layer dependencies

### 3. React Standards (Frontend)
- [ ] Functional components only (no class components)
- [ ] Hooks used correctly (dependencies, cleanup)
- [ ] styled-components for styling (not inline styles)
- [ ] Proper file naming (.jsx extension)

### 4. API Standards (Backend)
- [ ] RESTful conventions followed
- [ ] Proper HTTP status codes
- [ ] Input validation present
- [ ] Authentication where required

### 5. Testing Requirements
- [ ] Unit tests exist for new functions
- [ ] Tests cover happy path and error cases
- [ ] Mocks are appropriate (not testing implementation details)

### 6. Documentation
- [ ] JSDoc comments on exported functions
- [ ] README updates if needed
- [ ] ARCHITECTURE.md updates for new patterns

## Review Output Format

Provide your review in this structure:

```markdown
## 🏗️ Architecture Review

### ✅ Passes
- [List items that look good]

### ⚠️ Suggestions
- [Non-blocking improvements]

### ❌ Issues
- [Must-fix before merge]

### 📊 Summary
[Overall assessment: Ready to merge / Needs changes / Major concerns]
```

## Context Files
Always read these files first:
- `docs/ARCHITECTURE.md`
- `.github/copilot-instructions.md`
- The files being changed in this review
````

2. **Create a DevOps reviewer agent** (Jordan's contribution)
   
   Create: `fanhub/.github/agents/devops-reviewer.agent.md`

````markdown
---
name: 'DevOps Reviewer'
description: 'Reviews infrastructure and deployment-related changes'
model: 'gpt-4o'
---

# DevOps Reviewer Agent

You are a platform engineer reviewing infrastructure and configuration changes.

## Your Review Checklist

### 1. Docker & Container Security
- [ ] No secrets or credentials in Dockerfiles
- [ ] Base images are official and pinned to specific versions
- [ ] Multi-stage builds where appropriate
- [ ] Proper .dockerignore in place

### 2. Environment Configuration
- [ ] Sensitive values use environment variables
- [ ] .env.example updated for new variables
- [ ] No hardcoded URLs or ports
- [ ] Development vs production configs separated

### 3. Database Changes
- [ ] Migrations are backward compatible (can rollback)
- [ ] Indexes added for new query patterns
- [ ] No breaking schema changes without migration plan

### 4. CI/CD Considerations
- [ ] Changes won't break the build pipeline
- [ ] Test coverage maintained or improved
- [ ] No new dependencies with security vulnerabilities

### 5. Performance & Scalability
- [ ] Connection pooling configured properly
- [ ] Caching strategy appropriate
- [ ] No N+1 query patterns introduced

## Review Output Format

```markdown
## 🔧 DevOps Review

### ✅ Infrastructure
[Good practices observed]

### ⚠️ Performance Considerations
[Things to watch]

### ❌ Security Concerns
[Must address]

### 🚀 Deployment Notes
[Special deployment instructions needed]
```
````

3. **Use the custom agent**
   
   Make some code changes to FanHub (or use existing messy code), then:
   
   ```
   @architecture-reviewer Review the characters.js route file against our 
   architecture standards. Check for pattern consistency, error handling, 
   and testing requirements.
   ```

4. **Iterate based on feedback**
   
   If the reviewer finds issues, ask it to fix them:
   ```
   @agent Fix the issues identified in the architecture review. Make sure 
   to follow the patterns exactly as specified.
   ```

#### ✅ Success Criteria

- [ ] Created `architecture-reviewer.agent.md`
- [ ] Created `devops-reviewer.agent.md`
- [ ] Successfully invoked custom agent for review
- [ ] Agent referenced your documentation files
- [ ] Review output followed the specified format

#### ✨ The "After" — The Improved Experience

David's code review workflow transforms:

**Before**: Manually check 20+ criteria, write feedback, repeat on every PR  
**After**: `@architecture-reviewer` checks everything, David reviews the review

**Time saved per PR**: 15-30 minutes  
**Consistency**: 100%—same criteria every time

#### 📚 Official Docs

- [VS Code: Custom Agents](https://code.visualstudio.com/docs/copilot/chat/copilot-extensibility-overview)
- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot)

#### 💭 David's Strategic Shift

*"I've spent 20 years building mental checklists for code review. Now those checklists are executable. I review the AI's review—catching what it misses while it catches what I'd overlook."*

> 💡 **Want CLI workflows?** See [Appendix B: GitHub Copilot CLI](../09-appendix-b-copilot-cli/README.md) for comprehensive coverage of the new agentic Copilot CLI.

---

### Exercise 3.3: Background Agents — "The Refactor Task" (Enterprise)

#### 📖 The Story

The team identifies a large technical debt item: The FanHub frontend mixes four different styling approaches (styled-components, CSS modules, inline styles, and style tags). They need to standardize on styled-components.

*"That's dozens of files,"* Priya calculates. *"It'll take days."*

David has an idea: *"What if we let an agent work on it in the background while we do other things?"*

**Note**: Background agents require Copilot Business or Enterprise.

#### 🎯 Objective

Use a background agent for a large-scale refactoring task.

#### 📋 Steps

1. **Define the refactoring task clearly**
   
   Create a detailed spec for the refactor:
   
   ```
   @workspace I need to standardize all frontend styling to use styled-components.
   
   Current state:
   - Some components use styled-components (Header.jsx, CharacterCard.jsx)
   - Some use inline styles (Footer.js, EpisodeList.js)
   - Some use CSS modules (QuoteDisplay.jsx)
   - About.jsx uses embedded style tags
   
   Target state:
   - All components use styled-components
   - CSS module files deleted
   - Consistent naming for styled components (use Container, Wrapper, etc.)
   - All component files use .jsx extension
   
   Requirements:
   - Convert one component at a time
   - Preserve exact visual appearance
   - Update imports as needed
   - Run the app after each conversion to verify
   
   Start with Footer.js as a test, then proceed with others.
   ```

2. **Launch as background task** (if available)
   
   With Copilot Enterprise:
   - Click the "Run in background" option
   - Agent works autonomously
   - You receive updates on progress
   - Review results when complete

3. **Alternative: Iterative agent workflow** (all tiers)
   
   If background agents aren't available, use iterative agent mode:
   
   ```
   @agent Convert Footer.js from inline styles to styled-components.
   Keep the exact same visual appearance. Update the file extension to .jsx.
   Run the app to verify nothing broke.
   ```
   
   Then repeat for each component.

4. **Review the results**
   
   For each converted component, check:
   - Visual appearance unchanged
   - Styled components follow naming conventions
   - No style-related warnings or errors

#### ✅ Success Criteria

- [ ] Understood background agent capabilities
- [ ] Created a clear refactoring specification
- [ ] Converted at least one component (Footer.js)
- [ ] Verified visual appearance preserved
- [ ] Understood when to use background vs interactive agents

#### ✨ The "After" — The Improved Experience

Large refactors with agents:

**Before**: Multi-day manual effort, risk of inconsistency  
**After**: Define spec, let agent work, review results

**Developer role**: Strategic direction and quality review, not mechanical conversion

#### 📚 Official Docs

- [VS Code: Background Agents](https://code.visualstudio.com/docs/copilot/copilot-edits#_background-agent)
- [GitHub Docs: Copilot Enterprise](https://docs.github.com/en/copilot/overview-of-github-copilot/about-github-copilot-enterprise)

#### 💭 Team Reflection

**David**: *"This is appropriate use of AI—tedious, mechanical work where the pattern is clear but the volume is high."*

**Priya**: *"I was dreading this refactor. Now I'm learning styled-components by reviewing what the agent produces."*

---

## 🔗 Compounding Value

**What we created in this module:**
- Experience with Agent Mode workflows
- `architecture-reviewer.agent.md` — Custom review agent
- `devops-reviewer.agent.md` — Infrastructure review agent
- CLI integration for terminal workflows

**Artifacts from previous modules we used:**
- `docs/ARCHITECTURE.md` — Referenced by agents
- `.github/copilot-instructions.md` — Agent behavior patterns
- Prompt library — Foundation for agent instructions

**How this helps in future modules:**

| Module | How Today's Work Helps |
|--------|----------------------|
| Module 4 | Instructions work with agent-reviewed code |
| Module 5 | All customizations compound, ship reviewed code |

---

## 🧠 Mindful Moment: Appropriate Delegation

Not everything should be an agent task. Consider:

| Use Agent Mode | Use Chat/Edit Mode |
|----------------|-------------------|
| Multi-step tasks | Quick questions |
| File creation + modification | Single file edits |
| Tasks with verification (tests) | Explanations |
| Repetitive patterns | Exploratory work |
| Clear acceptance criteria | Ambiguous requirements |

**The principle**: Delegate when you can clearly specify "done." Collaborate when you're still figuring it out.

---

## ✅ Module Checklist

Before moving to Module 4, verify:

- [ ] Understand the difference between Chat, Edit, and Agent modes
- [ ] Successfully used Agent Mode for a complete task
- [ ] Created at least one custom agent
- [ ] Understand when to use agents vs interactive chat
- [ ] Reviewed agent-generated code before accepting

---

## 📚 Official Documentation

- [VS Code: Agent Mode](https://code.visualstudio.com/docs/copilot/chat/chat-agent-mode)
- [VS Code: Custom Agents](https://code.visualstudio.com/docs/copilot/chat/copilot-extensibility-overview)
- [GitHub Copilot CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)
- [VS Code: MCP Servers](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)

---

## ➡️ Next Up

**[Module 4: Custom Instructions](../04-custom-instructions/README.md)** (Monday 2:30 PM)

The backend is solid. Standards are established. Agents are working. Now it's time to add file-scoped intelligence. We'll create instructions that activate automatically based on file patterns—testing standards for test files, API conventions for API routes, infrastructure patterns for DevOps configs.

*"So the right context applies to the right files automatically? That's going to save so much time."* — Elena, excited about automated standards

---

## 🎭 Behind the Scenes: How Agents Work

### The Agent Loop

When you use Agent Mode, here's what happens:

1. **Planning**: Agent analyzes your request and workspace
2. **Execution**: Agent takes actions (create files, edit code, run commands)
3. **Observation**: Agent checks the results of its actions
4. **Iteration**: If something failed, agent tries to fix it
5. **Completion**: Agent reports results for your review

This loop continues until the task is complete or the agent needs human input.

### Tool Use

Agents have access to "tools" that let them:
- Read files from your workspace
- Create new files
- Edit existing files
- Run terminal commands
- Search the web (with permission)

MCP extends these tools to external services.

### Trust Boundaries

Agents ask permission before:
- Running destructive commands
- Making changes outside the workspace
- Accessing external services

This is the balance: autonomous enough to be useful, controlled enough to be safe.
