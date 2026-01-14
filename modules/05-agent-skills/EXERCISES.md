# Module 5: Agent Skills

## ⏰ Monday 3:30 PM — Teaching Copilot Your Domain

> *"Custom instructions tell Copilot how to write tests, but they don't tell it what makes valid TV show data. How do I teach Copilot our business rules—not just code patterns, but domain knowledge?"*  
> — Elena, thinking ahead to Character Detail v2's data model

---

## 🔍 Background: Understanding Agent Skills

### Where Agent Skills Came From

**Agent Skills** is an **open standard** originally developed by Anthropic for their Claude AI assistant. The format proved so useful that it became a cross-tool standard, now documented at [agentskills.io](https://agentskills.io).

**Key terminology clarification:**

| Term | What It Means |
|------|---------------|
| **"Claude Skills"** | Anthropic's original implementation (you may see this term in older docs) |
| **"Agent Skills"** | The official open standard name (what we use in this training) |
| **"GitHub Skills"** | Not an official term—GitHub adopted the Agent Skills standard |

### GitHub Copilot's Adoption

GitHub Copilot now supports the Agent Skills standard across multiple tools:

- **VS Code** — Skills loaded in chat and agent mode
- **Copilot CLI** — Skills accessible in terminal workflows
- **Copilot coding agent** — Skills used during automated coding tasks

This means skills you create are **portable**—they work across all GitHub Copilot surfaces, not just VS Code.

> ⚠️ **Preview Status**: Agent Skills in VS Code is currently in preview. Enable the `chat.useAgentSkills` setting to use this feature. While the format is stable (it's an open standard), the VS Code integration continues to evolve.

### When to Use What: A Decision Guide

**The simple question**: *"What am I trying to teach Copilot?"*

| I want Copilot to... | Use | Example |
|---------------------|-----|---------|
| **Know our project basics** | Repo Instructions | "This is a React/Node app, use these patterns" |
| **Apply rules to specific files** | Custom Instructions | "For test files, use Jest with these conventions" |
| **Run a specific task I trigger** | Prompts | "Generate a React component with tests" |
| **Act as a specialist persona** | Agents | "Be a security reviewer with read-only access" |
| **Know our domain automatically** | Skills | "Validate TV show data against our schema" |

### The Five Types Compared

| | **Repo Instructions** | **Custom Instructions** | **Prompts** | **Agents** | **Skills** |
|---|----------------------|------------------------|-------------|------------|-----------|
| **File** | `copilot-instructions.md` | `*.instructions.md` | `*.prompt.md` | `*.agent.md` | `SKILL.md` |
| **Location** | `.github/` | `.github/instructions/` | `.github/prompts/` | `.github/agents/` | `.github/skills/*/` |
| **Think of it as** | Project README for AI | File-specific rules | Task template | Specialist persona | Domain expert |
| **When loaded** | Always, every request | By file pattern (`applyTo`) | When you invoke it | When you @ mention it | Automatically when relevant |
| **You trigger it by** | Nothing—always on | Opening matching files | Running `/prompt-name` | Typing `@agent-name` | Just asking—Copilot decides |
| **Scope** | Whole repository | Specific file types | Specific task | Role-based workflow | Specialized knowledge |
| **Best for** | Project context | File-type consistency | Repeatability | Autonomy | Expertise |
| **Module** | 1 | 4 | 3 | 7 | 5 |

### Real-World Analogy

Imagine onboarding a new developer:

- **Repo Instructions** = The project overview they read first ("Here's what this app does and our tech stack")
- **Custom Instructions** = Context-specific guidelines ("When working on tests, follow these patterns")
- **Prompts** = Checklists they follow for common tasks ("Use this template when creating a new API endpoint")
- **Agents** = Roles they can take on ("When doing security review, only read code—don't change it")
- **Skills** = Domain knowledge they acquire over time ("Our TV show data has specific validation rules")

### Quick Decision Flowchart

```
Do you want this applied AUTOMATICALLY?
├── YES → Is it project-wide context?
│         ├── YES → Use REPO INSTRUCTIONS (copilot-instructions.md)
│         └── NO → Should it apply to specific file types?
│                   ├── YES → Use CUSTOM INSTRUCTIONS (*.instructions.md)
│                   └── NO → Does it need scripts + domain knowledge?
│                             ├── YES → Use SKILLS
│                             └── NO → Use REPO INSTRUCTIONS
└── NO → Do you want a reusable task template?
          ├── YES → Use PROMPTS
          └── NO → Do you want a specialist persona?
                    ├── YES → Use AGENTS
                    └── NO → Just ask Copilot directly!
```

---

## 📖 The Story So Far

The FanHub team has built an impressive AI collaboration toolkit:

- **Module 1**: Repository instructions and architecture documentation
- **Module 2**: Agent plan mode for systematic thinking  
- **Module 3**: Custom prompts for reusable workflows
- **Module 4**: Custom instructions for file-specific expertise (tests, routes, components, infrastructure)

The team has created custom instructions for file-specific patterns. But Elena notices a gap.

*"Our testing instructions tell Copilot HOW to write tests,"* Elena explains. *"But they don't tell it WHAT makes valid TV show data. When the agent builds Character Detail v2 in Module 07, it'll know our code style—but will it know that related characters shouldn't have duplicates?"*

She opens the FanHub data schema. *"There are domain rules that aren't about code patterns at all:"*

- *"Characters can appear in multiple episodes, but never duplicated within the same show"*
- *"Quotes must reference valid episode IDs"*  
- *"Character biographies should not exceed 2000 characters"*

Rafael adds: *"And when stakeholders ask about the next feature—Episode Detail pages—I have to guess at effort. What if Copilot could estimate based on similar features?"*

**This module's mission**: Create specialized Agent Skills that encode **domain knowledge**—the business rules, data relationships, and validation patterns that Copilot needs to understand FanHub's TV show data model. These skills will activate by conversation topic, not file pattern.

---

💡 **Golden Thread Continuation**: In Module 04, you created custom instructions for *code patterns* (tests, Docker, React). In this module, you'll create skills for *domain patterns*—the TV show data rules that will make Character Detail v2's output semantically correct when we build it in Module 07.

---

💡 **Plan Mode Integration**: You'll use plan mode to design skill structures, identify domain patterns, and create systematic validation workflows before implementing skills.

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Understand what Agent Skills are and how they differ from instructions and prompts
- Create custom skills with YAML frontmatter and markdown instructions
- Include scripts and resources within skill directories
- See how Copilot automatically loads skills when relevant
- Build domain-specific validation skills for the FanHub data model
- Leverage community skills from existing repositories

**Time**: ~90 minutes  
**Personas**: Elena (Quality Champion), Rafael (Product Visionary)

---

## 🧠 Mindful Moment: The Right Tool for the Job

Think about the hierarchy of Copilot customization:

| Tool | Best For | Example |
|------|----------|---------|
| **Instructions** | General standards applied everywhere | "Use async/await, not promises" |
| **Prompts** | Reusable templates for common tasks | "Generate test suite for component" |
| **Agents** | Autonomous multi-step workflows | "Review architecture and suggest improvements" |
| **Skills** | Specialized domain knowledge Copilot loads when needed | "Validate TV show data follows our schema" |

Skills are perfect for domain-specific expertise that's too detailed for instructions but needs to be applied systematically.

---

## 📚 Key Concepts

### What Are Agent Skills?

**Agent Skills** are folders containing:
- `SKILL.md` file with instructions (YAML frontmatter + markdown)
- Optional scripts, examples, and resources
- Domain-specific knowledge Copilot loads when relevant

Skills are part of an [open standard](https://agentskills.io) supported by GitHub Copilot, Claude, Cursor, and other AI coding tools.

### How Copilot Loads Skills (Progressive Disclosure)

Skills use a three-level loading system to stay efficient:

1. **Level 1: Discovery** — Copilot always knows which skills exist by reading `name` and `description` from YAML frontmatter
2. **Level 2: Instructions** — When your request matches a skill, Copilot loads the full `SKILL.md` body
3. **Level 3: Resources** — Scripts and examples load only when Copilot references them

This means you can have many skills installed without bloating context—only relevant content loads.

### Where Skills Live

**Project Skills** (repository-specific):
- `.github/skills/` (recommended) or `.claude/skills/` (legacy) in your repository
- Shared with everyone working on the project
- Version controlled with your code

**Personal Skills** (across all projects):
- `~/.github/skills/` (recommended) or `~/.claude/skills/` (legacy) in your home directory
- Available in all your projects
- Your personal toolkit

### Skills vs Instructions vs Prompts

| Feature | Instructions | Prompts | Skills |
|---------|-------------|---------|--------|
| **Loaded** | Always | Manually invoked | Automatically when relevant |
| **Scope** | Broad standards | Specific templates | Specialized tasks |
| **Contains** | Guidelines | Structured queries | Instructions + scripts + examples |
| **Best for** | Team conventions | Repeatable workflows | Domain expertise |

### Community Skills

You don't have to build every skill from scratch. Leverage existing skills:

**Anthropic's Skills Repository**: [github.com/anthropics/skills](https://github.com/anthropics/skills)
- High-quality skills for common development tasks
- Examples: debugging, testing patterns, code review
- Well-documented, ready to use

**GitHub's Awesome Copilot Collection**: [github.com/github/awesome-copilot](https://github.com/github/awesome-copilot)
- Community-contributed skills and resources
- Domain-specific examples across different technologies
- Constantly growing with contributions

---

## 🔨 Exercises

### Exercise 5.1: Understand Skills Through Examples — "Elena Explores the Ecosystem"

#### 📖 The Story

**Elena** (Quality Champion, 8 years) has been exploring how other teams use Agent Skills. She's discovered that the community has already built skills for many common scenarios.

*"Before we build our own skills,"* Elena suggests, *"let's see what already exists. Understanding proven patterns will help us design better skills for FanHub."*

The team gathers to explore community skills and understand the anatomy of a well-designed skill.

#### ❌ The "Before" — What Frustration Looks Like

Without skills, Elena has to repeatedly explain bug reproduction testing patterns:

```
@workspace When a bug report comes in, help me write a failing test:

1. Set up the specific database state that triggers the bug
2. Perform the action that causes the issue
3. Assert the bug occurs (test should FAIL initially)
4. Include the bug report number and expected vs. actual behavior
5. Follow our test structure with describe/it blocks
```

Every time a bug report arrives, she re-explains the same testing workflow. And Copilot doesn't automatically know FanHub's testing conventions.

#### 🎯 Objective

Explore community skills to understand skill structure and identify patterns that apply to FanHub validation needs.

#### 📋 Steps

1. **Explore the Anthropic Skills Repository**
   
   Open your browser and navigate to the Anthropic skills collection:
   ```
   https://github.com/anthropics/skills
   ```
   
   Browse through different skills and notice:
   - How `SKILL.md` files are structured
   - What goes in YAML frontmatter vs. markdown body
   - How skills include examples and guidelines
   - When skills reference external scripts or resources

2. **Explore the Awesome Copilot Collection**
   
   Check out the community-curated collection:
   ```
   https://github.com/github/awesome-copilot
   ```
   
   Look for:
   - Domain-specific skills (testing, DevOps, security)
   - Skills that include validation logic
   - Skills that reference external tools or resources

3. **Use plan mode to analyze skill patterns**
   
   Open Copilot Chat and use plan mode to synthesize what you learned:
   
   ```
   @agent I've explored the Anthropic skills repo and the Awesome Copilot collection. 
   Help me create a framework for designing effective Agent Skills for our FanHub project.
   
   Based on the patterns I observed, help me plan:
   
   1. Anatomy of a good SKILL.md file
      - What makes a clear skill name and description?
      - How detailed should instructions be?
      - When to include examples vs. just guidelines?
   
   2. Skills we might need for FanHub
      - TV show data validation
      - API endpoint consistency checking
      - Test coverage requirements
      - Deployment readiness verification
   
   3. Structure for our first skill: "Bug Reproduction Test Generator"
      - What should be in the frontmatter?
      - What testing patterns to include?
      - How to structure failing tests that demonstrate bugs?
   
   Create a planning document for our FanHub skills library.
   ```

4. **Save your planning results**
   
   Create a documentation file for your skill design planning:
   
   ```
   Create fanhub/docs/SKILLS-DESIGN-PLAN.md with the complete planning framework 
   we developed, including:
   - Skill anatomy best practices
   - List of potential FanHub skills
   - Detailed plan for Bug Reproduction Test Generator skill
   - Guidelines for future skill creation
   ```

5. **Examine a skill structure locally**
   
   Look at the directory structure you'll create:
   ```
   .github/skills/
   └── bug-reproduction-test-generator/
       ├── SKILL.md                    (instructions + frontmatter)
       ├── test-examples/              (example bug reproduction tests)
       └── common-bug-patterns.md      (catalog of typical bugs)
   ```

#### ✅ Success Criteria

- [ ] Explored at least 3 skills from the Anthropic repository
- [ ] Reviewed at least 5 skills from the Awesome Copilot collection
- [ ] Used plan mode to create a skill design framework
- [ ] Documented planning results in `SKILLS-DESIGN-PLAN.md`
- [ ] Can articulate the difference between skills, instructions, and prompts
- [ ] Have a clear plan for the Bug Reproduction Test Generator skill

#### ✨ The "After" — The Improved Experience

Elena now understands:
- **Skill anatomy** and what makes them effective
- **Community resources** she can leverage
- **Design patterns** for creating domain-specific skills
- **Planning approach** for systematic skill development

**Key insight**: Community skills provide proven patterns. Don't reinvent the wheel—learn from what works.

#### 📚 Official Docs

- [VS Code Docs: Use Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Agent Skills Open Standard](https://agentskills.io)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [GitHub Awesome Copilot Collection](https://github.com/github/awesome-copilot)

#### 💭 Elena's Realization

*"Skills are like test fixtures for AI—they provide consistent, repeatable knowledge. The community has already solved common problems. Now we can focus on our domain-specific needs."*

---

### Exercise 5.2: Create Your First Skill — "The Bug Reproduction Test Generator"

#### 📖 The Story

**Elena** is ready to build the team's first custom skill. Based on her research, she's designing a skill that helps write failing tests from bug reports.

**Rafael** joins in: *"This is perfect. Our testing patterns can live in a skill. Then when a user reports 'character page shows duplicate data,' Copilot will know how to write a test that demonstrates the issue."*

Together, they'll create a skill that systematizes bug reproduction.

#### ❌ The "Before" — What Frustration Looks Like

A bug report comes in: *"User sees duplicate 'Jesse Pinkman' entries on the Breaking Bad character page."*

Without a skill, Elena has to manually guide Copilot through the testing pattern:

```
@workspace Write a test that:
1. Seeds the database with character relationships that create duplicates
2. Calls GET /api/characters/:id/related (the Character Detail v2 endpoint)
3. Asserts we get duplicate entries (test should FAIL)
4. Uses describe/it structure
5. Includes setup and teardown
6. References Bug #142
```

This takes 5-10 minutes of back-and-forth every time a bug comes in. And Elena has to re-explain the *domain context*—that related characters should never have duplicates from the same show.

#### 🎯 Objective

Create a Bug Reproduction Test Generator skill that teaches Copilot how to write effective failing tests from bug reports—starting with Bug #142 from Character Detail v2.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/bug-reproduction-test-generator
   ```

2. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create the SKILL.md file for our Bug Reproduction Test Generator skill.
   
   The skill should help write failing tests that reproduce reported bugs. Include:
   
   1. Bug reproduction test structure:
      - describe() blocks with bug context and issue number
      - it() statements describing expected behavior
      - Arrange/Act/Assert pattern
      - Setup and teardown for database state
   
   2. Common bug categories:
      - Data integrity issues (duplicates, orphaned FKs)
      - Null reference errors (deleted records, missing data)
      - Incorrect query results (wrong filtering, missing records)
      - Business logic errors (invalid states allowed)
   
   3. FanHub schema knowledge for test data:
      - Character fields: name, show_id, actor_name, status, bio
      - Episode fields: title, show_id, season_id, episode_number
      - Quote fields: quote_text, show_id, character_id, episode_id
   
   4. Test patterns to include:
      - How to seed problematic test data
      - How to structure assertions that should FAIL
      - How to document expected vs. actual behavior
      - How to reference bug report numbers
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter (name, description)
   - Clear instructions for Copilot
   - Examples of bug reproduction tests
   - Guidelines for different bug categories
   ```

3. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/bug-reproduction-test-generator/SKILL.md
   ```
   
   Review the completed skill in the examples folder:
   ```
   examples/completed-config/skills/bug-reproduction-test-generator/SKILL.md
   ```
   
   Notice how it includes:
   - Test structure patterns with describe/it blocks
   - Examples of data integrity bugs (duplicates, orphaned FKs)
   - Null reference error patterns
   - Query result issues
   - Business logic validation failures
   
   Each pattern shows:
   - How to set up the bug condition
   - How to trigger the issue
   - How to assert the failure (test should FAIL initially)
   - How to document expected vs. actual behavior

4. **Test the skill with Bug #142 from Character Detail v2**
   
   Now give Copilot the actual bug report and see the skill in action:
   
   ```
   @workspace Bug #142: "The Breaking Bad character page shows duplicate 'Jesse Pinkman' 
   entries in the related characters section."
   
   Write a failing test that reproduces this bug. The test should:
   - Call GET /api/characters/:id/related (the Character Detail v2 endpoint)
   - Assert that each related character appears only once
   - Include Bug #142 reference
   ```
   
   **Expected**: Copilot should automatically:
   - Use describe/it structure from the skill
   - Set up test data that creates duplicate relationships
   - Write assertions that FAIL (catching the bug)
   - Include the Arrange/Act/Assert pattern
   - Reference Bug #142 in comments

5. **Verify the skill is being used**
   
   Check that Copilot recognizes your skill:
   
   ```
   @workspace What skills do you have for testing and bug reproduction?
   ```
   
   Copilot should mention the bug-reproduction-test-generator skill.

6. **Test with Bug #147 — a different bug category**
   
   Try the other Character Detail v2 bug to see skill versatility:
   
   ```
   @workspace Bug #147: "Clicking a quote on the Character Detail page shows 
   'Episode not found' even though the episode exists in the database."
   
   Write a failing test that reproduces this bug.
   ```
   
   The skill should guide Copilot to create a test for the broken quote-to-episode relationship.

#### ✅ Success Criteria

- [ ] Created `.github/skills/bug-reproduction-test-generator/` directory
- [ ] Created properly formatted `SKILL.md` with frontmatter and instructions
- [ ] Included test patterns for different bug categories
- [ ] Documented testing structure and assertion patterns clearly
- [ ] Tested skill with a real bug report (duplicate characters)
- [ ] Verified Copilot uses the skill automatically when reproducing bugs
- [ ] Skill generates failing tests that demonstrate the issue

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/bug-reproduction-test-generator/SKILL.md`](../../examples/completed-config/skills/bug-reproduction-test-generator/SKILL.md) for a reference implementation.

#### ✨ The "After" — The Improved Experience

Now when a bug report comes in:
- **Automatic test structure** following FanHub conventions
- **Consistent Arrange/Act/Assert** pattern
- **Proper test data setup** that triggers the bug
- **Clear documentation** of expected vs. actual behavior
- **Bug references** included automatically

**Before the skill**: 5-10 minutes per bug to write a failing test  
**After the skill**: 30 seconds to describe the bug, Copilot writes the test

**Value unlocked**: Elena can reproduce bugs 10x faster, spending her expertise on test strategy rather than boilerplate.

#### 📚 Official Docs

- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Agent Skills Open Standard](https://agentskills.io)
- [GitHub Docs: Creating agent skills](https://docs.github.com/en/copilot/customizing-copilot/using-agent-skills-for-github-copilot)

#### 💭 Elena's Transformation

*"This is what I've been missing! The skill captures our testing workflow—how to structure tests, what to assert, how to reference bugs. Now when a user reports 'page shows wrong data,' I just describe the issue and Copilot writes a failing test that proves the bug exists. My 8 years of testing experience is encoded in this skill."*

---

### Exercise 5.2A: Docker Build Debugger Skill — "Marcus Stops Googling Build Errors"

> 🧵 **The Golden Thread**: Marcus handles deployment, but cryptic Docker build errors slow him down. He'll create a skill that diagnoses build failures—teaching Copilot his DevOps expertise.

#### 📖 The Story

**Marcus** (DevOps Developer, 5 years) is comfortable with Docker—until something breaks. Then he's stuck googling error messages like "failed to compute cache key" or "executor failed running [/bin/sh -c npm install]."

**His frustration**: *"I know these are common issues—layer caching, COPY order, context size—but I waste time searching Stack Overflow every time. Why can't Copilot just know Docker build patterns?"*

Today, Marcus will encode his Docker expertise into a skill that diagnoses build failures automatically.

#### ❌ The "Before" — What Frustration Looks Like

Marcus updates the FanHub backend Dockerfile to add a new dependency. The build fails:

```
ERROR [backend 4/7] RUN npm install
------
 > [backend 4/7] RUN npm install:
#8 2.489 npm ERR! code ENOENT
#8 2.490 npm ERR! syscall open
#8 2.490 npm ERR! path /app/package.json
#8 2.491 npm ERR! errno -2
```

**Marcus's process WITHOUT the skill:**
1. Copy error message → Google → Stack Overflow (8 minutes)
2. Find answer: "COPY package.json before RUN npm install"
3. Fix Dockerfile, rebuild (3 minutes)
4. New error: "COPY failed: no source files were specified"
5. Google again → realize COPY path is wrong (6 minutes)
6. Fix, rebuild, finally succeeds

**Total time wasted**: ~20 minutes on a simple Dockerfile ordering issue.

**What Marcus is thinking**: *"I've fixed this exact issue before. Why do I keep forgetting the COPY order pattern?"*

#### 🎯 Objective

Create a Docker Build Debugger skill that teaches Copilot common Docker build patterns, failure modes, and diagnostic approaches—so Marcus can debug builds in seconds instead of minutes.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/docker-build-debugger
   ```

2. **Create a diagnostic script**
   
   First, create a helper script that validates Dockerfiles:
   
   ```bash
   touch .github/skills/docker-build-debugger/analyze-dockerfile.js
   ```
   
   Add this content (or use plan mode to generate it):
   
   ```javascript
   #!/usr/bin/env node
   
   // Docker Build Analyzer
   // Checks Dockerfile for common issues
   
   const fs = require('fs');
   const path = require('path');
   
   function analyzeDockerfile(dockerfilePath) {
     const content = fs.readFileSync(dockerfilePath, 'utf8');
     const lines = content.split('\n');
     const issues = [];
     
     let foundCopyPackageJson = false;
     let foundRunNpmInstall = false;
     let copyBeforeRun = false;
     
     lines.forEach((line, idx) => {
       const trimmed = line.trim();
       
       // Check COPY package.json comes before RUN npm install
       if (trimmed.match(/^COPY.*package\.json/i)) {
         foundCopyPackageJson = true;
         if (!foundRunNpmInstall) copyBeforeRun = true;
       }
       if (trimmed.match(/^RUN.*npm install/i)) {
         foundRunNpmInstall = true;
         if (!copyBeforeRun) {
           issues.push({
             line: idx + 1,
             severity: 'error',
             message: 'RUN npm install before COPY package.json - will fail with ENOENT',
             fix: 'Move COPY package*.json ./ before RUN npm install'
           });
         }
       }
       
       // Check for missing WORKDIR
       if (trimmed.match(/^COPY|^RUN/) && !content.match(/^WORKDIR/m)) {
         if (!issues.some(i => i.message.includes('WORKDIR'))) {
           issues.push({
             line: idx + 1,
             severity: 'warning',
             message: 'No WORKDIR set - COPY/RUN paths may be ambiguous',
             fix: 'Add WORKDIR /app before COPY commands'
           });
         }
       }
       
       // Check for COPY . . before npm install (slow rebuilds)
       if (trimmed === 'COPY . .' && !foundRunNpmInstall) {
         issues.push({
           line: idx + 1,
           severity: 'warning',
           message: 'COPY . . before dependencies - breaks layer caching',
           fix: 'Copy package*.json first, RUN npm install, then COPY . .'
         });
       }
     });
     
     return {
       file: dockerfilePath,
       issues,
       summary: issues.length === 0 
         ? 'No common issues detected' 
         : `Found ${issues.length} potential issue(s)`
     };
   }
   
   // CLI usage
   if (require.main === module) {
     const dockerfilePath = process.argv[2] || './Dockerfile';
     const result = analyzeDockerfile(dockerfilePath);
     console.log(JSON.stringify(result, null, 2));
   }
   
   module.exports = { analyzeDockerfile };
   ```
   
   Make it executable:
   ```bash
   chmod +x .github/skills/docker-build-debugger/analyze-dockerfile.js
   ```

3. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create the SKILL.md file for our Docker Build Debugger skill.
   
   This skill should help diagnose Docker build failures for our FanHub Node.js app.
   
   Include these sections:
   
   1. Common Docker Build Failure Patterns:
      - ENOENT errors (missing package.json) → COPY order wrong
      - "no source files" → COPY path issues
      - "executor failed" → Invalid RUN commands
      - Slow rebuilds → Layer caching problems
      - Context too large → .dockerignore missing
   
   2. Best Practices for Node.js Dockerfiles:
      - WORKDIR /app for clear paths
      - COPY package*.json first (for caching)
      - RUN npm ci (not npm install in prod)
      - COPY . . last (after dependencies)
      - Multi-stage builds for smaller images
   
   3. Diagnostic Approach:
      - Read error message carefully
      - Check COPY/RUN command order
      - Verify paths are relative to context
      - Check .dockerignore for context bloat
      - Test layer caching with --no-cache
   
   4. Script Integration:
      - Reference the analyze-dockerfile.js script
      - Explain when to run it (before debugging)
      - Show how to interpret its output
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter (name, description, scripts section)
   - Clear instructions organized by failure type
   - Examples from FanHub's frontend/backend Dockerfiles
   - Links to script output interpretation
   ```

4. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/docker-build-debugger/SKILL.md
   ```
   
   Review the completed skill in the examples folder:
   ```
   examples/completed-config/skills/docker-build-debugger/SKILL.md
   ```
   
   Notice the YAML frontmatter includes:
   ```yaml
   scripts:
     - name: analyze-dockerfile
       command: node .github/skills/docker-build-debugger/analyze-dockerfile.js
       description: Validates Dockerfile for common issues
   ```

5. **Test the skill with a broken Dockerfile**
   
   Temporarily break the backend Dockerfile to test the skill:
   
   ```dockerfile
   # Break it: put RUN before COPY
   FROM node:18-alpine
   RUN npm install
   COPY package*.json ./
   COPY . .
   CMD ["node", "src/index.js"]
   ```
   
   Now ask Copilot:
   
   ```
   @workspace Why does my backend Dockerfile build fail with "ENOENT package.json"?
   
   The error says:
   npm ERR! code ENOENT
   npm ERR! syscall open
   npm ERR! path /app/package.json
   ```
   
   **Expected**: Copilot should use the skill to diagnose:
   - "RUN npm install appears before COPY package.json"
   - "Move COPY package*.json ./ before RUN npm install"
   - Optionally: "Run the analyze-dockerfile script to check for other issues"

6. **Verify the script integration**
   
   Ask Copilot to run the diagnostic script:
   
   ```
   @workspace Run the Docker build analyzer on backend/Dockerfile
   ```
   
   Copilot should recognize the script from the skill's frontmatter and execute it.

7. **Test with a caching issue**
   
   Now test with a more subtle problem:
   
   ```
   @workspace My Docker builds are really slow—every code change rebuilds npm install. 
   Here's my Dockerfile:
   
   FROM node:18-alpine
   WORKDIR /app
   COPY . .
   RUN npm ci
   CMD ["node", "src/index.js"]
   
   What's wrong?
   ```
   
   **Expected**: Copilot should identify the layer caching issue and suggest:
   - Copy package*.json first
   - RUN npm ci (caches this layer)
   - COPY . . last (only this layer rebuilds on code changes)

#### ✅ Success Criteria

- [ ] Created `.github/skills/docker-build-debugger/` directory
- [ ] Created `analyze-dockerfile.js` script that validates Dockerfile patterns
- [ ] Created `SKILL.md` with frontmatter including `scripts` section
- [ ] Documented common failure patterns (ENOENT, layer caching, context size)
- [ ] Included Node.js-specific best practices
- [ ] Tested skill with COPY order error—Copilot diagnosed correctly
- [ ] Tested script integration—Copilot can run the analyzer
- [ ] Tested with layer caching issue—Copilot suggested proper COPY order

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/docker-build-debugger/`](../../examples/completed-config/skills/docker-build-debugger/) for reference implementation (both SKILL.md and analyze-dockerfile.js).

#### ✨ The "After" — The Improved Experience

Now when a Docker build fails:
- **Instant diagnosis** — Copilot recognizes error patterns
- **Script validation** — Automated Dockerfile checking
- **Actionable fixes** — Specific line changes, not vague advice
- **Layer caching awareness** — Prevents slow rebuild cycles

**Before the skill:**
- Time per build error: ~15-20 minutes (Google → Stack Overflow → trial/error)
- Errors before success: 2-3 attempts
- Frustration level: High (same issues keep recurring)

**After the skill:**
- Time per build error: ~2 minutes (ask Copilot → get fix)
- Errors before success: 1 attempt (fix is correct first time)
- Frustration level: Low (systematic diagnosis)

**Value unlocked**: Marcus debugs Docker builds 8x faster. His DevOps expertise is now encoded and accessible to the whole team.

#### 📚 Official Docs

- [VS Code: Agent Skills with Scripts](https://code.visualstudio.com/docs/copilot/customization/agent-skills#script-integration)
- [Docker: Best Practices for Node.js](https://docs.docker.com/language/nodejs/build-images/)
- [Docker: Layer Caching](https://docs.docker.com/build/cache/)

#### 💭 Marcus's Transformation

*"This is exactly what I needed! I've debugged hundreds of Dockerfile issues—COPY order, layer caching, context size. Now that knowledge is in a skill. When someone on the team hits a build error, Copilot diagnoses it using my patterns. And the script catches issues before we even run docker build. My 5 years of DevOps experience just became the team's Docker expert."*

#### 🚀 Challenge Extension

**For advanced users**: Extend the script to check for:
- Security issues (running as root, outdated base images)
- Multi-stage build opportunities (dev dependencies in final image)
- .dockerignore validation (node_modules, .git being copied)

---

### Exercise 5.2b: Architectural Data Flow Skill — "David Documents System Boundaries"

> 🧵 **The Golden Thread**: When the agent builds Character Detail v2 in Module 07, it needs to understand FanHub's architectural constraints—not just code patterns, but how data flows through the system.

#### 📖 The Story

**David** (Staff Engineer, 20 years) opens the ARCHITECTURE.md from Module 01. It documents the system architecture, but it's static documentation. Developers read it once, then forget it when building features.

*"Character Detail v2 will touch multiple layers,"* David explains. *"Frontend components fetch from API routes, which query the database, which has relationships between shows, characters, episodes, and quotes. If developers don't understand these boundaries, they'll create layering violations."*

**Sarah** asks: *"Like what?"*

*"Like a React component directly importing from the database layer,"* David says. *"Or an API route mixing business logic with data access. Or circular dependencies between character and show services. I catch these in code review, but by then the PR is written."*

Elena realizes: *"Your architectural review prompt from Module 03 catches violations after code is written. Custom instructions from Module 04 apply patterns when specific files are edited. But what if Copilot understood the architecture **before** generating code?"*

That's what architectural skills do: They encode system boundaries, data flow rules, and layer relationships—so when someone asks to "add character favorites," Copilot knows the correct layers to touch.

**Supporting Cast**: Sarah learns architectural patterns by seeing them explained in real-time as she builds features.

#### ❌ The "Before" — Architectural Violations

Without architectural domain knowledge, developers (and AI) create layering violations:

```javascript
// Frontend component violating layering (BAD)
import { db } from '../../backend/src/database';  // ❌ Frontend → Database direct

function CharacterDetail({ id }) {
  const character = await db.getCharacter(id);  // ❌ No service layer
  return <div>{character.name}</div>;
}
```

```javascript
// API route mixing concerns (BAD)
router.get('/characters/:id', async (req, res) => {
  // ❌ Business logic + data access + validation all mixed
  const char = await db.query('SELECT * FROM characters WHERE id = ?', req.params.id);
  if (!char) return res.status(404).json({ error: 'Not found' });
  
  // ❌ Fetching related data manually instead of using relationships
  const quotes = await db.query('SELECT * FROM quotes WHERE character_id = ?', char.id);
  const episodes = await db.query('SELECT * FROM episodes WHERE show_id = ?', char.show_id);
  
  res.json({ ...char, quotes, episodes });
});
```

**Architectural problems:**
- Frontend bypasses service layer
- No separation between business logic and data access
- Relationships queried manually instead of using defined patterns
- Circular dependency risks (character → show → character)

#### 🎯 Objective

Create an Agent Skill that encodes FanHub's architectural patterns—so Copilot understands system boundaries before generating code.

#### 📋 Steps

1. **Create the architectural skill**
   
   Create `skills/architectural-patterns.md`:
   
   ````markdown
   ---
   activation: ["architecture", "data flow", "layer", "service", "API", "component structure", "system design"]
   ---
   
   # FanHub Architectural Patterns
   
   This skill encodes the FanHub system architecture and data flow rules documented in `docs/ARCHITECTURE.md`. Activate when discussing features, endpoints, or components that touch multiple system layers.
   
   ## System Architecture Overview
   
   FanHub follows a layered architecture:
   
   ```
   Frontend (React)
     ↓ HTTP requests only
   API Routes (Express)
     ↓ Function calls only
   Services (Business Logic)
     ↓ Function calls only
   Database Access (Queries)
     ↓ SQL/ORM only
   SQLite Database
   ```
   
   **Critical Rule**: Each layer can ONLY communicate with the layer directly below it. No skipping layers.
   
   ## Layer Responsibilities
   
   ### Frontend Layer (`frontend/src/`)
   - **Can**: Make HTTP requests to `/api/*` endpoints
   - **Cannot**: Import backend code, access database, contain business logic
   - **Pattern**: Components → API Service → HTTP → Backend
   
   Example correct pattern:
   ```javascript
   // frontend/src/services/characterService.js
   export async function getCharacter(id) {
     const res = await fetch(`/api/characters/${id}`);
     return res.json();
   }
   
   // frontend/src/components/CharacterDetail.jsx
   import { getCharacter } from '../services/characterService';
   ```
   
   ### API Routes Layer (`backend/src/routes/`)
   - **Can**: Call service layer functions, validate input, format responses
   - **Cannot**: Contain business logic, access database directly
   - **Pattern**: Route → Service function → Return formatted response
   
   Example correct pattern:
   ```javascript
   // backend/src/routes/characters.js
   router.get('/:id', async (req, res) => {
     const character = await characterService.getCharacterWithDetails(req.params.id);
     res.json({ success: true, data: character });
   });
   ```
   
   ### Services Layer (`backend/src/services/`)
   - **Can**: Implement business logic, orchestrate database queries
   - **Cannot**: Access HTTP request/response, know about routes
   - **Pattern**: Pure business logic functions that call database layer
   
   ### Database Layer (`backend/src/database/`)
   - **Can**: Execute queries, manage transactions
   - **Cannot**: Contain business logic, know about services
   - **Pattern**: Simple query functions, no logic
   
   ## Data Model Relationships
   
   ### Core Entities
   - **Shows** — TV shows in the system
   - **Characters** — Characters from shows
   - **Episodes** — Episodes of shows
   - **Quotes** — Memorable quotes from episodes
   
   ### Relationships
   ```
   Show (1) ←→ (Many) Characters
   Show (1) ←→ (Many) Episodes
   Episode (1) ←→ (Many) Quotes
   Character (1) ←→ (Many) Quotes
   Character (Many) ←→ (Many) Characters (related_characters, self-referential)
   ```
   
   ### Critical Rules
   1. **Characters belong to one show** — `characters.show_id` is required
   2. **Episodes belong to one show** — `episodes.show_id` is required
   3. **Quotes reference both character and episode** — Both foreign keys required
   4. **Related characters must be from same show** — No cross-show relationships
   
   ## Common Feature Patterns
   
   ### Adding a "Detail Page" Feature
   
   When building detail pages (Character, Episode, Show), follow this flow:
   
   1. **Database layer**: Add query function
      ```javascript
      // database/queries.js
      getCharacterWithDetails(id) {
        // JOIN to get show, episodes, quotes
      }
      ```
   
   2. **Service layer**: Add business logic
      ```javascript
      // services/characterService.js
      async getCharacterWithDetails(id) {
        const char = await db.getCharacterWithDetails(id);
        if (!char) throw new NotFoundError();
        return char;
      }
      ```
   
   3. **API route**: Add endpoint
      ```javascript
      // routes/characters.js
      router.get('/:id', async (req, res) => {
        const char = await characterService.getCharacterWithDetails(req.params.id);
        res.json({ success: true, data: char });
      });
      ```
   
   4. **Frontend service**: Add API call
      ```javascript
      // frontend/src/services/characterService.js
      export async function getCharacter(id) {
        const res = await fetch(`/api/characters/${id}`);
        return res.json();
      }
      ```
   
   5. **Frontend component**: Use service
      ```javascript
      // frontend/src/pages/CharacterDetail.jsx
      import { getCharacter } from '../services/characterService';
      ```
   
   ## When This Skill Activates
   
   This skill automatically provides context when you:
   - Mention building features that touch multiple layers
   - Ask about data relationships ("How do characters relate to shows?")
   - Discuss API endpoints or components
   - Reference ARCHITECTURE.md patterns
   
   ## Examples
   
   **Good**: "Create an endpoint to get character with all their quotes and episodes"  
   → Copilot knows: Create database query → service function → API route → frontend service
   
   **Good**: "Add favorites feature to Character Detail page"  
   → Copilot knows: Touch all layers, add favorites table with character_id foreign key
   
   **Bad (that this prevents)**: "Add character data to this component"  
   → Without skill: Might import database directly  
   → With skill: Uses service layer correctly
   ````

2. **Test architectural understanding**
   
   Ask Copilot (with the skill loaded):
   
   ```
   I need to add a "favorite quotes" feature where users can save quotes. 
   What layers of the architecture do I need to modify?
   ```
   
   Copilot should respond with the correct layered approach, referencing the skill.

3. **Verify layering enforcement**
   
   Ask Copilot to generate code for a feature and verify it respects layer boundaries:
   
   ```
   Create a new endpoint GET /api/characters/:id/quotes that returns 
   all quotes for a character with episode information.
   ```
   
   The generated code should:
   - Create a database query function
   - Create a service function
   - Create an API route that calls the service
   - NOT mix layers or skip the service layer

4. **Check relationship understanding**
   
   Test that Copilot understands data relationships:
   
   ```
   Can a character have quotes from episodes of different shows?
   ```
   
   Copilot should say NO and explain why (characters belong to one show, quotes reference episodes of that show).

#### ✅ Success Criteria

- [ ] Created `skills/architectural-patterns.md` with FanHub architecture
- [ ] Skill includes layer responsibilities and boundaries
- [ ] Skill documents data model relationships
- [ ] Skill provides feature implementation patterns
- [ ] Copilot correctly identifies required layers for new features
- [ ] Copilot generates code that respects layer boundaries
- [ ] Copilot understands data relationship constraints

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/architectural-patterns.md`](../../examples/completed-config/skills/architectural-patterns.md) for a reference example.

#### ✨ The "After" — The Improved Experience

**Before (Module 05)**: Copilot generates code that violates architecture, David catches in review  
**After**: Copilot understands architecture upfront, generates layered code correctly

**Architectural violations per feature**: From 3-5 to 0-1  
**Code review time**: From 30 minutes to 10 minutes  
**Rework required**: From 2-3 rounds to 1 round

**Developer quote after using the skill:**
> *"I asked Copilot to add the favorites feature. It outlined all four layers I needed to touch—database, service, API route, frontend—and generated code that followed the patterns from ARCHITECTURE.md. First try, no violations. David approved the PR in 10 minutes."*

#### 📚 Official Docs

- [Agent Skills: Activation Patterns](https://agentskills.io/docs/activation)
- [VS Code: Domain-Specific Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills#domain-knowledge)

#### 💭 David's Insight

*"For 20 years, I've caught architectural violations in code review: 'This skips the service layer.' 'This creates a circular dependency.' 'This mixes business logic with data access.' The problem is developers don't see ARCHITECTURE.md when they're coding—they're focused on the feature. Now my architectural knowledge is encoded as a skill that activates when they mention features or layers. Copilot explains the architecture as it generates code. My expertise isn't just available in review—it's available at creation time. That's not just faster code—that's better-architected code from the start."*

#### 🚀 Challenge Extension

Extend the skill to include:
- **Security boundaries** — What layers handle authentication/authorization
- **Performance patterns** — Where caching happens, query optimization rules
- **Testing strategy** — What to test at each layer (unit vs integration)

---

### Exercise 5.3: Create Domain-Specific Skills — "What Character Detail v2 Will Need"

> 🧵 **The Golden Thread**: When the agent builds Character Detail v2 in Module 07, it should follow FanHub's product standards. Rafael creates a skill that ensures features get error boundaries, loading states, and analytics automatically.

#### 📖 The Story

**Rafael** (Product Visionary, 10 years) is thinking ahead to Character Detail v2. He knows what good features need—and wants to make sure the agent gets it right.

*"When we build Character Detail v2,"* Rafael says, *"it needs to follow our product standards. Error boundaries. Skeleton screens instead of basic spinners. Analytics tracking. Toast notifications on favorites."*

Elena nods: *"My testing instructions in Module 04 apply when you're editing test files. But product requirements should apply based on **what you're building**, not what file you're in."*

Rafael realizes the gap: *"Custom instructions trigger on file patterns—`*.test.js` or `Dockerfile`. But product requirements should apply when someone asks to 'add a feature' or 'build a new page.' When someone mentions features, Copilot should automatically remember our product standards."*

That's exactly what skills do: they activate based on **conversation topic**, not file patterns.

*"With this skill,"* Rafael says, *"Character Detail v2 will ship with all our product standards built in from the start."*

#### ❌ The "Before" — What We Want to Prevent

Without a feature requirements skill, an agent would generate:

```jsx
// Basic feature without product standards (what we want to prevent)
function CharacterDetail({ characterId }) {
  const [character, setCharacter] = useState(null);
  const [loading, setLoading] = useState(true);  // Just a boolean
  
  if (loading) return <div>Loading...</div>;  // ❌ Basic spinner, not skeleton
  // ❌ No error boundary wrapping this component
  // ❌ No analytics tracking on page view
  // ❌ No toast on favorite/unfavorite
  
  return (
    <div>
      <h1>{character.name}</h1>
      {/* Feature works, but misses product standards */}
    </div>
  );
}
```

Rafael's product requirements say:
- "All public pages must include error boundaries"
- "Loading states should show skeleton screens, not spinners"
- "User actions must include success/error toast notifications"
- "Analytics tracking on all user interactions"

But developers don't remember these, and they don't appear until code review—wasting time and causing rework.

#### 🎯 Objective

Create a Feature Requirements Skill that encodes product standards Copilot applies **automatically** when building features—so the next feature gets what Character Detail v2 missed.

Create a Feature Requirements Skill that encodes product standards Copilot applies when building new features.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/feature-requirements
   ```

2. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create a Feature Requirements skill that ensures all FanHub 
   features meet our product standards.
   
   The skill should capture product requirements for:
   
   1. Error Handling
      - Error boundaries for public pages
      - Try-catch for async operations
      - User-friendly error messages
      - Error logging in development
   
   2. User Feedback
      - Loading states (skeleton screens preferred)
      - Success/error toast notifications
      - Confirmation dialogs for destructive actions
   
   3. Analytics & Tracking
      - Page view tracking on component mount
      - User event tracking (clicks, form submissions)
      - Consistent naming convention: fanhub_[page]_[action]
   
   4. Accessibility
      - Semantic HTML elements
      - ARIA labels where needed
      - Keyboard navigation support
      - Focus management
   
   5. Responsive Design
      - Mobile-first approach
      - Standard breakpoints (640px, 768px, 1024px)
      - Touch-friendly targets (min 44px)
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter (name, description)
   - Clear instructions for each category
   - Code examples where helpful
   - "When to Apply" guidance
   ```

3. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/feature-requirements/SKILL.md
   ```
   
   Review the completed skill in the examples folder:
   ```
   examples/completed-config/skills/feature-requirements/SKILL.md
   ```
   
   Notice how it includes:
   - All 5 product requirement categories
   - Specific guidelines for each (error boundaries, skeleton screens, etc.)
   - Code examples for error handling and analytics
   - Clear "When to Apply" section
   
   The skill bridges Rafael's product vision with implementation details developers need.

4. **Test the skill with a real feature**
   
   Now Rafael describes a feature in **product language** (user needs, not technical specs):
   
   ```
   @workspace Users want to discover episodes from their favorite shows. Create a 
   page component where they can browse episodes, filter by season, and click through 
   to see episode details. This should feel polished and professional.
   ```
   
   **Watch the skill bridge product to engineering** - Copilot should automatically add:
   - ✅ Error boundaries (Rafael never mentioned this)
   - ✅ Skeleton loading states while fetching data (Rafael said "polished")
   - ✅ Toast notifications for errors (Rafael said "professional")
   - ✅ Analytics tracking for page views and episode clicks (auto-applied)
   - ✅ Semantic HTML with ARIA labels for screen readers (auto-applied)
   - ✅ Responsive layout that works on mobile (auto-applied)
   - ✅ Keyboard navigation support (auto-applied)
   
   **This is the value**: Rafael speaks business language ("users want to discover"), 
   the skill translates to engineering standards automatically.

5. **Compare with and without the skill**
   
   To see the difference, temporarily rename the skill folder:
   
   ```bash
   mv .github/skills/feature-requirements .github/skills/feature-requirements-disabled
   ```
   
   Reload VS Code, then ask the same question. Notice:
   - No error boundaries mentioned
   - Basic loading spinner instead of skeleton screens
   - No analytics tracking
   - Missing accessibility features
   
   Rename it back and reload:
   
   ```bash
   mv .github/skills/feature-requirements-disabled .github/skills/feature-requirements
   ```
   
   **This demonstrates**: The skill encodes Rafael's product standards as automatic behavior.

6. **Verify the skill is being used**
   
   Check that Copilot recognizes your skill:
   
   ```
   @workspace What skills do you have for building features and components?
   ```
   
   Copilot should mention the feature-requirements skill.

7. **Document the skill in your team standards**
   
   Update your `copilot-instructions.md` to reference the skill:
   
   ```markdown
   ## Product Standards
   
   All features must meet requirements documented in the `feature-requirements` skill.
   Copilot will automatically apply these when creating new components and pages.
   ```

#### ✅ Success Criteria

- [ ] Created `.github/skills/feature-requirements/` directory
- [ ] Used plan mode to design the skill structure
- [ ] Created properly formatted `SKILL.md` with all 5 requirement categories
- [ ] Included examples for error handling and analytics
- [ ] Tested skill using product language (no technical specs mentioned)
- [ ] Verified Copilot auto-applies technical standards from product descriptions
- [ ] Compared behavior with skill enabled vs. disabled
- [ ] Updated team instructions to reference the skill

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/feature-requirements/SKILL.md`](../../examples/completed-config/skills/feature-requirements/SKILL.md) for a reference implementation.

#### ✨ The "After" — The Improved Experience

Rafael's product requirements are now:
- **Automatically applied** when building features
- **Version controlled** with the codebase
- **Consistently enforced** by AI assistance
- **Living documentation** that evolves with the product

**Before the skill**: 
- Rafael: "Users want to browse episodes"
- Developer: "Should I add error boundaries? Analytics? Loading states?"
- Rafael: *checks PRD* "Uh, yes... let me find the standards doc..."

**After the skill**: 
- Rafael: "Users want to browse episodes"
- Copilot: *Automatically adds error boundaries, skeleton screens, analytics, a11y, responsive design*
- Developer: ✅ Ships polished feature matching product standards

**Value unlocked**: Product standards become executable. Rafael speaks user needs, the skill ensures technical excellence. No more "forgot to add analytics" in code review.

#### 📚 Official Docs

- [Agent Skills Open Standard](https://agentskills.io)
- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [GitHub Docs: Using agent skills](https://docs.github.com/en/copilot/customizing-copilot/using-agent-skills-for-github-copilot)

#### 💭 Rafael's Transformation

*"This changes everything. Requirements aren't just documents developers read once—they're living knowledge that Copilot applies every time. The gap between product and engineering just got a lot smaller."*

---

### Exercise 5.3A: Dependency Conflict Resolver Skill — "Marcus Fixes npm Hell"

> 🧵 **The Golden Thread**: Marcus updates a dependency and `npm install` explodes with peer dependency errors. He'll create a skill that diagnoses conflicts systematically.

#### 📖 The Story

**Marcus** needs to update `react-router-dom` in the FanHub frontend. He changes the version in package.json, runs `npm install`, and hits this:

```
npm ERR! code ERESOLVE
npm ERR! ERESOLVE could not resolve
npm ERR! 
npm ERR! While resolving: react-router-dom@6.20.0
npm ERR! Found: react@17.0.2
npm ERR! 
npm ERR! Could not resolve dependency:
npm ERR! peer react@"^18.0.0" from react-router-dom@6.20.0
```

**Marcus's frustration**: *"I know what this means—react-router v6 needs React 18, but we're on React 17. But which packages will break if I upgrade React? And do I need to update other packages too?"*

He spends 30 minutes checking package compatibility, reading changelogs, and testing. There has to be a better way.

#### ❌ The "Before" — What Frustration Looks Like

Marcus wants to add a new feature that requires `react-router-dom@6.20.0`. Here's his painful process:

1. **Update package.json** — Change react-router-dom version (2 minutes)
2. **Run npm install** — Immediate ERESOLVE error (30 seconds)
3. **Google the error** — Find discussions about React 18 requirement (5 minutes)
4. **Check React breaking changes** — Read React 18 migration docs (10 minutes)
5. **Find dependent packages** — Manually grep package.json for react-* packages (3 minutes)
6. **Check each package** — Visit npm to see which versions support React 18 (8 minutes)
7. **Update multiple packages** — React, react-dom, react-scripts, testing-library (4 minutes)
8. **Run npm install again** — New conflict with testing-library (30 seconds)
9. **Repeat process** — Another 10 minutes of research and updates

**Total time**: ~45 minutes
**Result**: Finally works, but Marcus isn't confident he didn't miss something
**Frustration level**: Maximum — *"There has to be a systematic way to do this!"*

#### 🎯 Objective

Create a Dependency Conflict Resolver skill that teaches Copilot how to diagnose npm/yarn dependency conflicts, identify cascading updates needed, and suggest safe upgrade paths.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/dependency-conflict-resolver
   ```

2. **Create a dependency analyzer script**
   
   Create a script that checks for common dependency issues:
   
   ```bash
   touch .github/skills/dependency-conflict-resolver/analyze-dependencies.js
   ```
   
   Add this content:
   
   ```javascript
   #!/usr/bin/env node
   
   // Dependency Conflict Analyzer
   // Checks package.json for compatibility issues
   
   const fs = require('fs');
   const path = require('path');
   
   function analyzeDependencies(packageJsonPath) {
     const pkgJson = JSON.parse(fs.readFileSync(packageJsonPath, 'utf8'));
     const deps = { ...pkgJson.dependencies, ...pkgJson.devDependencies };
     const issues = [];
     
     // Check React ecosystem versions
     const reactVersion = deps['react'];
     const reactDomVersion = deps['react-dom'];
     const reactRouterVersion = deps['react-router-dom'];
     
     if (reactVersion && reactDomVersion) {
       const reactMajor = extractMajorVersion(reactVersion);
       const reactDomMajor = extractMajorVersion(reactDomVersion);
       
       if (reactMajor !== reactDomMajor) {
         issues.push({
           severity: 'error',
           package: 'react/react-dom',
           message: `Version mismatch: react@${reactVersion} but react-dom@${reactDomVersion}`,
           fix: 'Both packages must be on same major version',
           category: 'version-mismatch'
         });
       }
     }
     
     // Check React Router compatibility with React
     if (reactVersion && reactRouterVersion) {
       const reactMajor = extractMajorVersion(reactVersion);
       const routerMajor = extractMajorVersion(reactRouterVersion);
       
       if (routerMajor >= 6 && reactMajor < 18) {
         issues.push({
           severity: 'error',
           package: 'react-router-dom',
           message: `react-router-dom@${routerMajor} requires React 18+, but found React ${reactMajor}`,
           fix: 'Upgrade react and react-dom to ^18.0.0, or downgrade react-router-dom to ^5.3.0',
           category: 'peer-dependency'
         });
       }
     }
     
     // Check for caret vs exact versions (potential lock issues)
     const exactVersions = Object.entries(deps)
       .filter(([_, version]) => !version.match(/^[\^~]/))
       .map(([pkg]) => pkg);
     
     if (exactVersions.length > 3) {
       issues.push({
         severity: 'warning',
         package: exactVersions.join(', '),
         message: `${exactVersions.length} packages use exact versions (no ^ or ~)`,
         fix: 'Consider using ^ for minor version updates: "^1.2.3" allows 1.x.x updates',
         category: 'versioning-strategy'
       });
     }
     
     // Check for very old packages (security risk)
     const oldPackages = [];
     for (const [pkg, version] of Object.entries(deps)) {
       const major = extractMajorVersion(version);
       // Flag React < 17, Node packages with major version 0
       if ((pkg === 'react' && major < 17) || (major === 0 && !pkg.includes('eslint'))) {
         oldPackages.push(`${pkg}@${version}`);
       }
     }
     
     if (oldPackages.length > 0) {
       issues.push({
         severity: 'warning',
         package: oldPackages.join(', '),
         message: 'Old package versions detected (potential security/compatibility issues)',
         fix: 'Review changelogs and consider upgrading to latest stable versions',
         category: 'outdated'
       });
     }
     
     return {
       file: packageJsonPath,
       totalDependencies: Object.keys(deps).length,
       issues,
       summary: issues.length === 0 
         ? 'No obvious compatibility issues detected' 
         : `Found ${issues.length} potential issue(s)`
     };
   }
   
   function extractMajorVersion(versionString) {
     const match = versionString.match(/(\d+)\./);
     return match ? parseInt(match[1], 10) : 0;
   }
   
   // CLI usage
   if (require.main === module) {
     const packageJsonPath = process.argv[2] || './package.json';
     const result = analyzeDependencies(packageJsonPath);
     console.log(JSON.stringify(result, null, 2));
   }
   
   module.exports = { analyzeDependencies };
   ```
   
   Make it executable:
   ```bash
   chmod +x .github/skills/dependency-conflict-resolver/analyze-dependencies.js
   ```

3. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create the SKILL.md file for our Dependency Conflict Resolver skill.
   
   This skill should help diagnose and resolve npm dependency conflicts for FanHub's 
   React/Node.js stack.
   
   Include these sections:
   
   1. Common Dependency Conflict Patterns:
      - ERESOLVE errors → peer dependency version mismatches
      - Version conflicts in React ecosystem (react, react-dom, react-router)
      - Cascading updates (upgrading one package requires others)
      - Lock file desync (package-lock.json vs package.json)
   
   2. Diagnostic Approach:
      - Read the error message for specific package names
      - Identify which package is requesting the peer dependency
      - Check current versions of all related packages
      - Find compatible version ranges
      - Plan update order (dependencies before dependents)
   
   3. FanHub-Specific Rules:
      - Frontend uses React 17+ (considering React 18 migration)
      - Backend uses Node 18+ LTS
      - Testing with Jest + React Testing Library
      - Router: react-router-dom (v5 currently, v6 planned)
   
   4. Safe Upgrade Strategies:
      - Check breaking changes in CHANGELOGs
      - Update package.json versions together
      - Use npm list to verify resolution
      - Run tests after updates
      - Commit dependency updates separately from features
   
   5. Script Integration:
      - Reference the analyze-dependencies.js script
      - Explain when to run it (before major updates)
      - Show how to interpret conflict categories
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter with scripts section
   - Clear diagnostic flowchart
   - Examples of common React ecosystem conflicts
   - Safe resolution steps
   ```

4. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/dependency-conflict-resolver/SKILL.md
   ```
   
   Review the completed skill in the examples folder:
   ```
   examples/completed-config/skills/dependency-conflict-resolver/SKILL.md
   ```

5. **Test the skill with a React Router upgrade scenario**
   
   Ask Copilot to diagnose the conflict:
   
   ```
   @workspace I'm trying to upgrade react-router-dom from 5.3.0 to 6.20.0 but getting:
   
   npm ERR! ERESOLVE could not resolve
   npm ERR! peer react@"^18.0.0" from react-router-dom@6.20.0
   npm ERR! Found: react@17.0.2
   
   What do I need to update and in what order?
   ```
   
   **Expected**: Copilot should use the skill to provide:
   - Root cause: "react-router-dom@6 requires React 18+"
   - Packages to update: react, react-dom, @testing-library/react
   - Update order: Update all together to avoid intermediate conflicts
   - Breaking changes warning: "Check React 18 migration guide"

6. **Test the analyzer script**
   
   Ask Copilot to run the dependency analyzer:
   
   ```
   @workspace Run the dependency analyzer on frontend/package.json
   ```
   
   The script should detect:
   - Any React/React-DOM version mismatches
   - react-router compatibility with current React version
   - Outdated packages or exact versions

7. **Test with a complex cascading scenario**
   
   Present a more complex situation:
   
   ```
   @workspace I updated React to 18.2.0, but now I'm getting errors from:
   - react-scripts (incompatible with React 18)
   - @testing-library/react (needs newer version)
   - react-router-dom (still on v5)
   
   What's the safe upgrade path?
   ```
   
   **Expected**: Copilot should provide a systematic upgrade plan:
   1. Check react-scripts compatibility → may need v5+
   2. Update @testing-library/react to ^13.0.0
   3. Consider react-router-dom v6 (but can stay on v5 if needed)
   4. Update all at once, then run tests

#### ✅ Success Criteria

- [ ] Created `.github/skills/dependency-conflict-resolver/` directory
- [ ] Created `analyze-dependencies.js` script that detects compatibility issues
- [ ] Created `SKILL.md` with frontmatter including scripts section
- [ ] Documented common npm conflict patterns (ERESOLVE, peer deps)
- [ ] Included FanHub-specific dependency rules (React version, Node version)
- [ ] Tested with React Router upgrade—Copilot identified cascading updates needed
- [ ] Tested script integration—Copilot ran analyzer and interpreted results
- [ ] Tested complex scenario—Copilot provided systematic upgrade order

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/dependency-conflict-resolver/`](../../examples/completed-config/skills/dependency-conflict-resolver/) for reference implementation.

#### ✨ The "After" — The Improved Experience

Now when Marcus hits a dependency conflict:
- **Instant diagnosis** — Copilot identifies root cause (peer dependency mismatch)
- **Cascading updates identified** — All affected packages listed upfront
- **Safe upgrade order** — No trial-and-error, systematic plan
- **Breaking changes flagged** — Reminded to check migration guides

**Before the skill:**
- Time per dependency conflict: ~30-45 minutes (research + trial/error)
- Failed install attempts: 3-5 before success
- Confidence level: Low (worried about missed dependencies)
- Broken tests: Often discovered after "successful" install

**After the skill:**
- Time per dependency conflict: ~5 minutes (ask + execute plan)
- Failed install attempts: 0-1 (plan works first time)
- Confidence level: High (systematic approach)
- Broken tests: Rare (breaking changes anticipated)

**Value unlocked**: Marcus resolves dependency conflicts 8x faster and with zero guesswork. The skill captures his hard-won knowledge of the React ecosystem.

#### 📚 Official Docs

- [npm: Peer Dependencies](https://docs.npmjs.com/cli/v9/configuring-npm/package-json#peerdependencies)
- [React: Upgrading to React 18](https://react.dev/blog/2022/03/08/react-18-upgrade-guide)
- [React Router: Upgrading to v6](https://reactrouter.com/en/main/upgrading/v5)

#### 💭 Marcus's Transformation

*"Dependency conflicts used to be my nightmare—30 minutes of googling, trial and error, broken builds. Now the skill does the analysis in seconds. It knows React Router v6 needs React 18, which packages cascade, what order to update them. My experience dealing with npm hell is now encoded knowledge that helps the whole team avoid these time sinks."*

#### 🚀 Challenge Extension

**For advanced users**: Extend the script to:
- Check for known security vulnerabilities (`npm audit` integration)
- Suggest package-lock.json regeneration when needed
- Detect transitive dependency conflicts
- Recommend compatible version ranges using npm registry API

---

### Exercise 5.4: Effort Estimator Skill — "What's Next After Character Detail?"

> 🧵 **The Golden Thread**: Character Detail v2 shipped. Users love it. Now stakeholders want Episode Detail pages. But how long will that take? Rafael doesn't want to guess again.

#### 📖 The Story

**Rafael** just left a stakeholder meeting. The success of Character Detail v2 has everyone excited. Now they want more:

- *"Episode Detail pages would be amazing!"*
- *"Can we add show recommendations?"*
- *"What about user reviews?"*

Rafael's boss asks: *"Character Detail v2 took a sprint. Episode Detail should be similar, right? Can we commit to next sprint?"*

**Marcus** (sitting beside him) winces: *"Episode Detail is actually more complex. Episodes have transcripts, multiple characters per episode, air dates, streaming links... Character Detail had one character with related data. Episodes have many-to-many relationships."*

**Rafael's face falls**: *"I almost promised stakeholders we'd ship Episode Detail in one sprint, just like Character Detail..."*

Later, Rafael reflects: *"I need AI to help me understand technical complexity BEFORE I commit to stakeholders. Character Detail v2 taught me features aren't as simple as they look."*

**Supporting Cast**: Marcus helps Rafael understand what makes features complex from an engineering perspective.

#### ❌ The "Before" — What Frustration Looks Like

Rafael's post-Character-Detail backlog:

1. "Episode Detail pages" → Rafael thinks: *Similar to Character Detail, one sprint*
2. "Show recommendations based on favorites" → Rafael thinks: *Just suggest similar shows, 1 week?*
3. "User reviews and ratings" → Rafael thinks: *A form and some stars, maybe a week*
4. "Full-text search across everything" → Rafael thinks: *A search box, 3-4 days?*

Rafael prioritizes based on business value alone:
- **P0**: Episode Detail (natural next step after Character Detail)
- **P1**: Search (most requested)
- **P2**: Reviews (user engagement)
- **P3**: Recommendations

**Reality check from Marcus**:
- Episode Detail: 2 sprints (many-to-many relationships, transcripts, streaming links)
- Search: 2-3 weeks (indexing, relevance, autocomplete)
- Reviews: 2-3 weeks (moderation, spam prevention, authentication)
- Recommendations: 1-2 sprints (algorithm, data pipeline, ML integration)

Rafael's estimate: "3 weeks total"  
Actual effort: "8-10 weeks total"

**The stakeholder call next week**: "Why isn't search done? You said it was simple!"

#### 🎯 Objective

Create an Effort Estimator skill that analyzes feature descriptions and provides technical effort estimates, helping Rafael make informed prioritization decisions based on value AND cost.

#### 📋 Steps

1. **Use plan mode to design the effort estimator**
   
   ```
   @agent Help me design an Agent Skill for FanHub that estimates technical effort for feature requests.
   
   The skill should:
   1. Analyze a feature description (written in product language)
   2. Reference our ARCHITECTURE.md to understand our tech stack
   3. Identify technical components needed:
      - Database changes (new tables, migrations, schema updates)
      - Backend changes (new routes, services, business logic)
      - Frontend changes (new pages, components, state management)
      - Testing requirements (unit, integration, e2e)
      - Infrastructure needs (new services, scaling considerations)
   4. Categorize effort as:
      - **Small**: < 3 days (1-5 story points)
      - **Medium**: 3-7 days (8-13 story points)
      - **Large**: 1-2 weeks (21+ story points)
      - **Extra Large**: > 2 weeks (requires breakdown)
   5. Flag risks and complexity factors:
      - Performance implications
      - Security concerns
      - Breaking changes
      - External dependencies
      - Unknown unknowns
   
   Output should be:
   - Effort estimate with confidence level
   - Breakdown by discipline (backend, frontend, testing, etc.)
   - Risks and dependencies
   - Recommendations for breaking down large features
   
   Create a planning document for this skill structure.
   ```

2. **Create the skill directory and SKILL.md**
   
   Using Agent mode or manually:
   ```bash
   mkdir -p fanhub/.github/skills/effort-estimator
   ```
   
   Then ask Copilot:
   ```
   @agent Create .github/skills/effort-estimator/SKILL.md based on our planning document.
   
   The skill should:
   - Have YAML frontmatter with name, description, and level: 2
   - Include sections for: effort categories, complexity factors, estimation framework
   - Provide examples of Small, Medium, and Large features from FanHub domain
   - Reference ARCHITECTURE.md for tech stack context
   - Output a structured estimation report format
   ```

3. **Add example feature breakdowns**
   
   The skill should include examples like:
   
   **Example: "Add full-text search"**
   - Backend: Search endpoint, query optimization, indexing strategy (Medium)
   - Frontend: Search bar component, results page, autocomplete (Medium)
   - Testing: Search relevance tests, performance tests (Small)
   - Infrastructure: Consider search indexing service (Risk: scaling)
   - **Total**: Large (2-3 weeks)
   - **Risks**: Performance at scale, relevance tuning, indexing strategy
   
   **Example: "Add social media share buttons"**
   - Backend: No changes needed (Small)
   - Frontend: Share button component, social meta tags (Small)
   - Testing: Share link validation (Small)
   - **Total**: Small (2-3 days)
   - **Risks**: Minimal

4. **Test the skill with Episode Detail — the next feature after Character Detail v2**
   
   With the skill installed, ask Copilot:
   ```
   Estimate the technical effort for Episode Detail pages.
   
   The feature should:
   - Show episode information (title, air date, synopsis, runtime)
   - Display all characters appearing in that episode (many-to-many)
   - Show memorable quotes from the episode
   - Link to streaming services where available
   - Include previous/next episode navigation
   
   We already built Character Detail v2 (single character with episodes, quotes, related characters).
   Compare this to Episode Detail complexity and estimate effort.
   ```
   
   Copilot should automatically use the Effort Estimator skill and provide:
   - Size estimate with reasoning ("Larger than Character Detail because...")
   - Technical breakdown by layer
   - Risk assessment (many-to-many relationships, external streaming APIs)
   - Comparison to Character Detail v2

5. **Create a prioritization matrix for post-Character Detail features**
   
   Ask Copilot to help Rafael prioritize:
   ```
   Using the effort estimates, help me create a prioritization matrix for our 
   post-Character Detail v2 backlog.
   
   Business Value (Rafael's input):
   - Episode Detail: High (natural next step, users asking for it)
   - Search: High (most requested feature)
   - Reviews: Medium (user engagement, but moderation concerns)
   - Recommendations: Low (nice-to-have, requires ML)
   
   Create a 2x2 matrix: Business Value vs. Technical Effort
   Recommend which to build first for a 4-week sprint.
   ```

#### ✅ Success Criteria

- [ ] Created `.github/skills/effort-estimator/SKILL.md`
- [ ] Skill includes effort categories (Small/Medium/Large/XL)
- [ ] Skill references ARCHITECTURE.md for tech stack context
- [ ] Skill provides structured output with effort breakdown
- [ ] Tested with 4+ feature descriptions
- [ ] Copilot automatically applies the skill when estimating effort
- [ ] Generated a prioritization matrix based on value + effort
- [ ] Compared Rafael's initial guesses vs. skill-informed estimates

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/effort-estimator/SKILL.md`](../../examples/completed-config/skills/effort-estimator/SKILL.md) for a reference implementation.

#### ✨ The "After" — The Improved Experience

Rafael's new stakeholder meeting workflow:

**Before the skill:**
- Stakeholder: "How long will Episode Detail take? Character Detail was one sprint."
- Rafael: "Uh... probably the same? One sprint?"
- Marcus: *facepalm* "Episode Detail has many-to-many relationships..."

**After the skill:**
- Stakeholder: "How long will Episode Detail take?"
- Rafael: *Asks Copilot with effort estimator skill*
- Rafael: "Episode Detail is larger than Character Detail—2 sprints. Character Detail had one-to-many relationships; Episode Detail has many-to-many (multiple characters per episode). However, if we scope down to basic episode info without streaming links, we could ship MVP in one sprint."
- Stakeholder: "MVP sounds good. Let's do that."
- Rafael: *Confident, informed, credible*

**Value unlocked:**
- **Fewer broken promises** — Rafael commits based on real estimates
- **Better prioritization** — Value AND effort inform decisions
- **Credibility with stakeholders** — Rafael speaks with technical understanding
- **Smarter roadmaps** — Quick wins vs. strategic bets, consciously chosen

#### 📚 Official Docs

- [Agent Skills: Skill Structure](https://agentskills.io/docs/skill-structure)
- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/agent-skills)
- [GitHub Docs: Skills in Copilot](https://docs.github.com/en/copilot/customizing-copilot/using-agent-skills)

#### 💭 Rafael's Breakthrough

*"For years, I've felt like I'm guessing when I commit to timelines. Developers would roll their eyes when I said 'this seems simple.' Now I can ask Copilot to estimate effort using our actual architecture, and I show up to stakeholder meetings with informed, credible estimates. I'm not just a requirements writer anymore—I'm a strategic planner who understands the technical landscape."*

#### 🚀 Challenge Extension

Enhance the effort estimator to:
- Compare similar features you've built ("Episode Detail has parallels to Character Detail, which took X days")
- Factor in team capacity ("With 2 frontend developers, estimate delivery date")
- Suggest MVP vs. full-featured versions ("Ship basic Episode Detail in 1 sprint, add streaming links later")
- Track actual vs. estimated effort to improve future estimates
- Flag when estimates diverge significantly from similar past work

---

### Exercise 5.4A: Build Pipeline Analyzer Skill — "Marcus and Sarah Debug CI/CD Failures"

> 🧵 **The Golden Thread**: FanHub's GitHub Actions pipeline fails. Marcus and Sarah spend 20 minutes digging through logs. They'll create a skill that diagnoses build failures systematically. *This connects to Module 8 (Copilot Web) and Module 9 (CLI), where pipeline automation continues.*

#### 📖 The Story

**Marcus** (DevOps Developer, 5 years) gets a Slack notification: "Build failed on main branch." He opens GitHub Actions, finds a 500-line log, and starts scrolling:

```
npm ERR! code ELIFECYCLE
npm ERR! errno 1
npm ERR! fanhub-frontend@1.0.0 test: `react-scripts test --coverage`
npm ERR! Exit status 1
```

**Sarah** (Senior Developer, 15 years) joins: *"What failed this time?"*

Marcus: *"Tests... I think? The log is huge."*

Sarah: *"Let me look... yeah, tests are timing out. But why? This worked yesterday."*

They spend 20 minutes analyzing:
- Was it an environment issue? (check Node version)
- A flaky test? (check previous runs)
- A new commit that broke something? (check diff)
- Resource exhaustion? (check runner memory)

**The problem**: Every build failure requires manual log forensics. There's no systematic diagnostic approach.

#### ❌ The "Before" — What Frustration Looks Like

**Scenario**: The FanHub backend build fails on pull request #47. Here's Marcus and Sarah's painful process:

1. **Get notified** — Slack: "CI failed" (instant)
2. **Open GitHub Actions** — Navigate to workflow run (30 seconds)
3. **Expand log groups** — Click through 8 steps to find failure (2 minutes)
4. **Find error message** — Scroll through 500 lines of npm output (3 minutes)
5. **Identify error type** — "Ah, it's a test failure" (30 seconds)
6. **Find which test** — Search for "FAIL" in logs (2 minutes)
7. **Understand context** — Read test output, stack trace (5 minutes)
8. **Check if known issue** — Search similar failures, check Slack (4 minutes)
9. **Identify root cause** — Database connection timeout in test (2 minutes)
10. **Fix** — Increase timeout in test config (1 minute)
11. **Push fix and wait** — Commit + re-run CI (5 minutes)

**Total time**: ~25 minutes per CI failure
**Frustration**: High — *"We spend more time debugging CI than writing features"*
**Bus factor**: Only Marcus and Sarah know how to read these logs effectively

#### 🎯 Objective

Create a Build Pipeline Analyzer skill that teaches Copilot how to diagnose common CI/CD failure patterns, extract key errors from verbose logs, and suggest fixes based on FanHub's pipeline configuration.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/build-pipeline-analyzer
   ```

2. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create the SKILL.md file for our Build Pipeline Analyzer skill.
   
   This skill should help diagnose GitHub Actions workflow failures for FanHub's CI/CD pipeline.
   
   Include these sections:
   
   1. Common CI/CD Failure Patterns:
      - Test failures (timeout, assertion, setup issues)
      - Build failures (dependency install, compilation errors)
      - Linting failures (ESLint, Prettier violations)
      - Docker build failures (in CI context)
      - Environment issues (Node version, missing secrets)
   
   2. Log Analysis Approach:
      - Identify which workflow step failed
      - Extract the actual error message (not just exit code)
      - Distinguish root cause from cascading errors
      - Check if failure is intermittent (flaky test)
      - Compare to previous successful runs
   
   3. FanHub Pipeline Structure:
      - Frontend workflow: install → lint → test → build
      - Backend workflow: install → lint → test → docker-build
      - Runs on: ubuntu-latest, Node 18
      - Test coverage requirements (80% minimum)
      - Docker builds use multi-stage Dockerfile
   
   4. Diagnostic Questions to Ask:
      - Which step failed? (install, lint, test, build)
      - What's the error message? (extract from logs)
      - Did this pass on previous commit? (regression vs. existing issue)
      - Is it environment-specific? (works locally but not in CI)
      - Are secrets/env vars configured? (for backend tests)
   
   5. Common Fixes:
      - Test timeouts → Increase test timeout or fix slow test
      - Dependency install fails → Check package-lock.json committed
      - Lint errors → Run locally with --fix flag
      - Docker build fails → Check COPY paths relative to workflow
      - Flaky tests → Add retry logic or improve test isolation
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter (name, description)
   - Flowchart for triaging failures
   - Examples of real FanHub CI errors
   - Quick fixes for each failure type
   ```

3. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/build-pipeline-analyzer/SKILL.md
   ```
   
   Review the completed skill in the examples folder:
   ```
   examples/completed-config/skills/build-pipeline-analyzer/SKILL.md
   ```

4. **Test the skill with a test failure scenario**
   
   Give Copilot a real build failure log excerpt:
   
   ```
   @workspace Our GitHub Actions build failed with this output:
   
   Run npm test -- --coverage
     FAIL src/components/CharacterCard.test.js
       ● CharacterCard › renders character name
         
         Timeout - Async callback was not invoked within the 5000ms timeout 
         specified by jest.setTimeout.
         
       at ../node_modules/jsdom/lib/jsdom/living/helpers/runtime-script-errors.js:62:11
   
   npm ERR! Test failed. See above for more details.
   
   What's wrong and how do I fix it?
   ```
   
   **Expected**: Copilot should use the skill to diagnose:
   - **Failure type**: Test timeout (async operation exceeded 5000ms)
   - **Affected test**: CharacterCard › renders character name
   - **Root cause**: Likely an API call or async operation not completing
   - **Fixes**: 
     1. Increase jest timeout: `jest.setTimeout(10000)`
     2. Check for missing mocks (API calls)
     3. Ensure async operations resolve/reject properly

5. **Test with a Docker build failure in CI**
   
   Present a Docker-specific CI failure:
   
   ```
   @workspace The backend Docker build step failed in GitHub Actions:
   
   Step 4/7 : COPY package*.json ./
   COPY failed: file not found in build context or excluded by .dockerignore: 
   stat package.json: file does not exist
   
   But the Docker build works fine locally. What's different in CI?
   ```
   
   **Expected**: Copilot should identify:
   - **Issue**: COPY path is relative to Docker build context
   - **CI vs Local difference**: GitHub Actions runs from repo root, context might be wrong
   - **Check**: Workflow sets correct context: `docker build -f backend/Dockerfile ./backend`
   - **Fix**: Ensure workflow specifies context directory, or adjust COPY paths

6. **Test with a flaky test scenario**
   
   ```
   @workspace This test passes locally but fails randomly in CI (about 30% of the time):
   
   FAIL src/api/characters.test.js
     ● GET /api/characters/:id › returns character with related data
       
       Expected: 200
       Received: 500
       
       Database connection timeout
   
   How do I diagnose if this is a flaky test or a real issue?
   ```
   
   **Expected**: Copilot should suggest:
   - **Diagnosis**: Connection timeout suggests race condition or resource exhaustion
   - **Check past runs**: Is this consistently flaky or a new issue?
   - **CI-specific factors**: Shared runners may have variable performance
   - **Fixes**:
     1. Increase database connection timeout
     2. Add test isolation (reset DB state between tests)
     3. Use test retries for known-flaky tests
     4. Check if CI runner has database properly configured

7. **Test cross-skill integration (with Docker Build Debugger)**
   
   Ask about a Docker build issue that could use both skills:
   
   ```
   @workspace The CI pipeline fails during the Docker build step. Locally, my Dockerfile works.
   What should I check first?
   ```
   
   **Expected**: Copilot might reference BOTH skills:
   - Build Pipeline Analyzer: Check CI context path, workflow docker build command
   - Docker Build Debugger: Validate Dockerfile structure, COPY order, .dockerignore
   
   This shows skills working together!

#### ✅ Success Criteria

- [ ] Created `.github/skills/build-pipeline-analyzer/` directory
- [ ] Created `SKILL.md` with pipeline failure patterns
- [ ] Documented FanHub's CI/CD workflow structure (frontend/backend steps)
- [ ] Included diagnostic flowchart (which step failed → what to check)
- [ ] Tested with test timeout—Copilot identified root cause and fixes
- [ ] Tested with Docker CI failure—Copilot distinguished CI vs local context
- [ ] Tested with flaky test—Copilot suggested isolation and retry strategies
- [ ] Verified cross-skill integration (works with Docker Build Debugger skill)

> 📂 **Compare Your Work**: See [`examples/completed-config/skills/build-pipeline-analyzer/SKILL.md`](../../examples/completed-config/skills/build-pipeline-analyzer/SKILL.md) for reference implementation.

#### ✨ The "After" — The Improved Experience

Now when CI fails:
- **Instant triage** — Copilot identifies failure type (test/build/lint/docker)
- **Root cause extraction** — Finds actual error in verbose logs
- **Context awareness** — Understands CI vs local differences
- **Actionable fixes** — Specific steps, not generic advice

**Before the skill:**
- Time per CI failure: ~20-25 minutes (log forensics + diagnosis)
- False starts: 2-3 (wrong diagnosis, try again)
- Team dependency: Only Marcus/Sarah can diagnose efficiently
- Documentation: Ad-hoc Slack threads

**After the skill:**
- Time per CI failure: ~3-5 minutes (describe failure, get diagnosis)
- False starts: 0-1 (correct diagnosis first time)
- Team dependency: Anyone can ask Copilot for help
- Documentation: Skill encodes Marcus/Sarah's expertise

**Value unlocked**: 
- 5x faster CI debugging
- Entire team can diagnose pipeline failures
- Marcus and Sarah's knowledge is democratized
- Connects to Module 8 (GitHub Actions automation) and Module 9 (CLI workflows)

#### 📚 Official Docs

- [GitHub Docs: GitHub Actions workflow syntax](https://docs.github.com/en/actions/using-workflows/workflow-syntax-for-github-actions)
- [GitHub Docs: Debugging workflows](https://docs.github.com/en/actions/monitoring-and-troubleshooting-workflows/using-workflow-run-logs)
- [Jest: Timeout configuration](https://jestjs.io/docs/jest-object#jestsettimeouttimeout)

#### 💭 Marcus and Sarah's Transformation

**Marcus**: *"I've debugged hundreds of CI failures—test timeouts, Docker context issues, flaky tests. Now that knowledge is in a skill. When someone's PR fails, they don't wait for me—they ask Copilot and get my diagnosis instantly."*

**Sarah**: *"This is automation at the next level. We automated the builds; now we're automating the debugging. The skill captures our 20 combined years of CI/CD experience. And it connects perfectly to our GitHub Actions work in Module 8."*

#### 🚀 Challenge Extension

**For advanced users**: 
- Add skill content for deployment failures (rollback strategies)
- Include cost optimization patterns (cache usage, matrix strategy)
- Create a companion script that fetches GitHub Actions logs via API
- Integrate with Module 8's GitHub Actions automation

---

### Exercise 5.5: Skills Library Strategy — "Building Your Team's Skill Ecosystem"

#### 📖 The Story

The FanHub team now has two powerful skills:
- **Bug Reproduction Test Generator** (Elena's testing expertise)
- **Feature Requirements** (Rafael's product standards)

Sarah brings the team together: *"We're starting to build a skills library. Let's be systematic about this—what other skills do we need? How do we organize them? How do we keep them maintained?"*

This is the team's opportunity to plan their complete skills ecosystem.

#### 🎯 Objective

Create a comprehensive strategy for FanHub's skills library, including additional skills to build and maintenance practices.

#### 📋 Steps

1. **Use plan mode to design your skills ecosystem**
   
   ```
   @agent Help create a comprehensive skills strategy for the FanHub team.
   
   We currently have:
   - bug-reproduction-test-generator (test-driven debugging)
   - feature-requirements (product standards)
   
   Plan our complete skills library:
   
   1. Identify additional skills we need:
      - What other domain knowledge should be encoded?
      - What repetitive validation or checking tasks occur?
      - What team standards aren't captured yet?
   
   2. Organize our skills:
      - How should skills be categorized?
      - Which should be project skills vs. personal skills?
      - How do skills relate to our instructions and prompts?
   
   3. Maintenance strategy:
      - How do we keep skills up to date?
      - Who owns which skills?
      - How do we test that skills work correctly?
      - When do we deprecate or refactor skills?
   
   4. Community integration:
      - Which community skills should we adopt?
      - How do we customize community skills for our needs?
      - Should we contribute our skills back?
   
   Create a complete Skills Library Strategy document.
   ```

2. **Identify candidate skills for FanHub**
   
   Brainstorm additional skills the team might need:
   
   - **API Endpoint Design Skill**: Consistent REST conventions
   - **Test Coverage Checker**: Ensure adequate test coverage
   - **Deployment Readiness**: Pre-deploy validation checklist
   - **Database Migration Skill**: Safe schema changes
   - **Security Review Skill**: Common vulnerability checks
   - **Performance Optimization Skill**: Best practices for React/Node

3. **Create your skills library documentation**
   
   ```
   Create fanhub/docs/SKILLS-LIBRARY-STRATEGY.md documenting:
   - Complete list of planned skills (current + future)
   - Skill ownership and maintenance responsibilities
   - Guidelines for when to create new skills
   - Testing and validation approach
   - Integration with instructions and prompts
   - Community skills we're adopting
   - Contribution guidelines for new skills
   ```

4. **Set up personal skills**
   
   Team members can create personal skills for their own workflow:
   
   ```bash
   # Elena might create personal testing skills
   mkdir -p ~/.copilot/skills/comprehensive-test-generator
   
   # Marcus might create personal DevOps skills
   mkdir -p ~/.copilot/skills/infrastructure-review
   ```

5. **Adopt a community skill**
   
   Pick one skill from the Anthropic or Awesome Copilot repos to adopt:
   
   ```bash
   # Example: Adopt a debugging skill
   cp -r /path/to/community/skill .github/skills/debugging-workflow
   # Customize it for FanHub's needs
   ```

6. **Create skill discovery documentation**
   
   Add to your README or docs:
   
   ```markdown
   ## Available Skills
   
   FanHub uses Agent Skills to provide domain-specific expertise:
   
   ### Project Skills (.github/skills/)
   - **bug-reproduction-test-generator**: Generates failing tests from bug reports
   - **feature-requirements**: Ensures features meet product standards
   - **[your additional skills]**
   
   ### Community Skills We Use
   - Link to adopted community skills
   
   ### How to Add New Skills
   - Guidelines for team members to contribute skills
   ```

#### ✅ Success Criteria

- [ ] Created comprehensive Skills Library Strategy document
- [ ] Identified 4-6 additional skills to build
- [ ] Documented skill ownership and maintenance approach
- [ ] Set up at least one personal skill
- [ ] Adopted at least one community skill
- [ ] Created skill discovery documentation for the team

#### ✨ The "After" — The Complete Ecosystem

The FanHub team now has:
- **Systematic approach** to encoding expertise
- **Clear ownership** of different skills
- **Integration plan** between skills, instructions, and prompts
- **Maintenance strategy** for keeping skills current
- **Community connection** leveraging and contributing skills

**Key insight**: Skills are most powerful when part of a systematic strategy, not ad-hoc additions.

#### 📚 Official Docs

- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [Agent Skills Open Standard](https://agentskills.io)

#### 💭 Team Reflection

- **Sarah**: *"Skills are the missing piece. They scale expertise across the team."*
- **Elena**: *"My domain knowledge is now executable, not just documentation."*
- **Rafael**: *"Product requirements become code assistance, not just PRD documents."*
- **David**: *"This is how we preserve institutional knowledge as AI-accessible."*

---

## 🎯 Module Summary

### 🧵 The Golden Thread: Building Toward Module 07

| Module | What We Built | Pattern Type |
|--------|--------------|--------------|
| **Module 01** | `copilot-instructions.md` | Repository-wide context |
| **Module 03** | `*.prompt.md` files | Reusable task templates |
| **Module 04** | `*.instructions.md` | File-pattern code rules |
| **Module 05** | `SKILL.md` in `.github/skills/` | **Domain knowledge** |
| **Module 06** | MCP connections | External system access |
| **Module 07** | **Character Detail v2** | THE PAYOFF—full-context agent |

**The key insight**: Module 04's custom instructions activate by *file pattern* (`.test.js` → testing rules). Module 05's skills activate by *conversation topic* (asking about "character data" → data validation patterns).

**When the agent builds Character Detail v2 in Module 07, it will have:**
- **Code patterns** from custom instructions (Module 04)
- **Domain knowledge** from skills (Module 05)
- **External data access** from MCP (Module 06)

### Key Takeaways

1. **Skills encode domain expertise** that's too specific for instructions but needs systematic application
2. **Community skills** provide proven patterns you can adopt and customize
3. **Skills + Instructions + Prompts** form a complete customization strategy
4. **Plan mode helps design skills** systematically before implementation
5. **Skills libraries scale knowledge** across entire teams

### Practices Mastered

| Practice | Key Insight |
|----------|-------------|
| 🎯 **Domain Knowledge as Code** | Skills make expertise executable and version-controlled |
| 📚 **Community Leverage** | Don't build everything—adopt and customize proven skills |
| 🔄 **Systematic Design** | Use plan mode to design skill structure before implementation |
| 🏗️ **Skills Ecosystem** | Think libraries, not individual skills—systematic approach wins |

### The Customization Hierarchy (Complete)

```
┌─────────────────────────────────────┐
│  Instructions (.github/)            │  ← Always loaded, broad standards
├─────────────────────────────────────┤
│  Custom Instructions (Module 04)    │  ← File-pattern code rules
├─────────────────────────────────────┤
│  Skills (Module 05)                 │  ← Topic-based domain expertise
├─────────────────────────────────────┤
│  Prompts (Module 03)                │  ← Manually invoked, specific templates
├─────────────────────────────────────┤
│  Agents (Module 07)                 │  ← THE PAYOFF: full-context automation
└─────────────────────────────────────┘
```

### What's Next

In **Module 7: MCP Servers**, you'll learn how to connect Copilot to external systems—databases, APIs, and deployment infrastructure. Elena's bug reproduction skill knows the TESTING PATTERNS, but MCP gives it access to query the ACTUAL DATABASE to understand what data is causing bugs. Marcus shows the team how MCP (Model Context Protocol) supercharges skills with real-time data access.

**💡 Plan Mode Tip for Next Module**: Before adding MCP servers, use plan mode to identify which external systems Copilot should connect to and what security constraints apply.

---

## ⏱️ Time Check

**Expected Duration**: 90 minutes
- Exercise 5.1: Explore Community Skills (20 minutes)
- Exercise 5.2: Bug Reproduction Test Generator (25 minutes)
- Exercise 5.3: Feature Requirements Skill (25 minutes)
- Exercise 5.4: Skills Library Strategy (20 minutes)

**If running ahead**: Create additional domain-specific skills for your project  
**If running behind**: Focus on Exercise 5.2 (Data Validation) and 5.4 (Strategy), skim the others

---

## ➡️ Next Up

**[Module 6: MCP Servers](../06-mcp-servers/README.md)** (Monday 4:30 PM)

Skills encode knowledge, but what if Copilot could query your actual database to validate data? MCP (Model Context Protocol) connects Copilot to external systems—databases, APIs, and deployment infrastructure.

When the agent builds Character Detail v2 in Module 07, it will have:
- ✅ Custom instructions (code patterns)
- ✅ Agent skills (domain knowledge)
- 🔜 MCP connections (live data access)

---

## 🔗 Quick Reference

### Skill File Structure

```
.github/skills/
└── skill-name/
    ├── SKILL.md           (required: frontmatter + instructions)
    ├── examples/          (optional: example files)
    ├── scripts/           (optional: helper scripts)
    └── resources/         (optional: supporting files)
```

### SKILL.md Template

```markdown
---
name: skill-name-in-lowercase
description: What this skill does and when Copilot should use it
license: MIT (optional)
---

# Skill Title

Instructions for Copilot in markdown format.

Include:
- Clear guidelines
- Examples (valid and invalid)
- Edge cases to handle
- When to apply this skill
```

### Resources

- **Official Docs**: [VS Code: Use Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- **Open Standard**: [agentskills.io](https://agentskills.io)
- **Community Skills**: [anthropics/skills](https://github.com/anthropics/skills)
- **Curated Collection**: [github/awesome-copilot](https://github.com/github/awesome-copilot)

---

*"Skills transform domain expertise into AI-accessible knowledge. Your team's collective wisdom becomes Copilot's automatic guidance."*
