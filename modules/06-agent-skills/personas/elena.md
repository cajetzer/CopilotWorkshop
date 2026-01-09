# Elena's Path: Agent Skills

## 🎯 Your Focus: Encoding Testing Expertise into Executable Skills

Elena, this module transforms your 8 years of QA expertise into **executable domain knowledge**. You'll create skills that teach Copilot how to reproduce bugs systematically—instead of explaining your testing patterns every time, the skill does it automatically.

**Your exercises**: 6.1 (Explore Skills), 6.2 (Bug Reproduction Skill)  
**Time**: ~45 minutes  
**Theme**: From repetitive explanations to automatic expertise

---

## Your Journey in This Module

```
Elena's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "I spend half my time reproducing bugs before writing tests"   │
│                         ↓                                       │
│  Creates bug-reproduction-test-generator skill                  │
│                         ↓                                       │
│  "Describe the bug, Copilot writes the failing test."           │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 6.1: Understand Skills Through Examples

### 📖 The Story

**Elena** has been exploring how other teams use Agent Skills. She's discovered that the community has already built skills for many common scenarios.

*"Before we build our own skills,"* Elena suggests, *"let's see what already exists. Understanding proven patterns will help us design better skills for FanHub."*

### ❌ The "Before" — What Frustration Looks Like

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

### 🎯 Objective

Explore community skills to understand skill structure and identify patterns that apply to FanHub validation needs.

### 📋 Steps

1. **Explore the Anthropic Skills Repository**
   
   Navigate to: `https://github.com/anthropics/skills`
   
   Notice:
   - How `SKILL.md` files are structured
   - What goes in YAML frontmatter vs. markdown body
   - How skills include examples and guidelines

2. **Explore the Awesome Copilot Collection**
   
   Check out: `https://github.com/github/awesome-copilot`
   
   Look for:
   - Domain-specific skills (testing, DevOps, security)
   - Skills that include validation logic

3. **Use plan mode to analyze skill patterns**
   
   ```
   @agent Help me create a framework for designing effective Agent Skills 
   for our FanHub project based on the patterns I observed in community repos.
   ```

4. **Save your planning results**
   
   Create `fanhub/docs/SKILLS-DESIGN-PLAN.md` with your skill design framework.

### ✅ Success Criteria

- [ ] Explored at least 3 skills from the Anthropic repository
- [ ] Reviewed community skills from the Awesome Copilot collection
- [ ] Used plan mode to create a skill design framework
- [ ] Can articulate the difference between skills, instructions, and prompts

### 💭 Elena's Realization

*"Skills are like test fixtures for AI—they provide consistent, repeatable knowledge. The community has already solved common problems. Now we can focus on our domain-specific needs."*

---

## Exercise 6.2: Create Your First Skill — "The Bug Reproduction Test Generator"

### 📖 The Story

**Elena** is ready to build the team's first custom skill. Based on her research, she's designing a skill that helps write failing tests from bug reports.

**Rafael** joins in: *"This is perfect. Our testing patterns can live in a skill. Then when a user reports 'character page shows duplicate data,' Copilot will know how to write a test that demonstrates the issue."*

### ❌ The "Before" — What Frustration Looks Like

A bug report comes in: *"User sees duplicate 'Jesse Pinkman' entries on the Breaking Bad character page."*

Without a skill, Elena has to manually guide Copilot through the testing pattern:

```
@workspace Write a test that:
1. Seeds the database with duplicate character records
2. Calls GET /api/characters?show_id=1
3. Asserts we get duplicate entries (test should FAIL)
4. Uses describe/it structure
5. Includes setup and teardown
6. References bug report number
```

This takes 5-10 minutes of back-and-forth every time a bug comes in.

### 🎯 Objective

Create a Bug Reproduction Test Generator skill that teaches Copilot how to write effective failing tests from bug reports.

### 📋 Steps

1. **Create the skill directory structure**
   
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
   ```

3. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/bug-reproduction-test-generator/SKILL.md
   ```

4. **Test the skill with a realistic bug report**
   
   ```
   @workspace A user reports: "The Breaking Bad character page shows duplicate 
   'Jesse Pinkman' entries."
   
   Write a failing test that reproduces this bug.
   ```
   
   **Expected**: Copilot should automatically:
   - Use describe/it structure from the skill
   - Set up test data with duplicate Jesse Pinkman records
   - Write assertions that FAIL (catching the bug)
   - Include the Arrange/Act/Assert pattern

5. **Test with a different bug category**
   
   ```
   @workspace Write a test that reproduces this bug: "API crashes when fetching 
   quotes for a deleted character. Expected: Should return empty array. 
   Actual: 500 error."
   ```

### ✅ Success Criteria

- [ ] Created `.github/skills/bug-reproduction-test-generator/` directory
- [ ] Created properly formatted `SKILL.md` with frontmatter and instructions
- [ ] Included test patterns for different bug categories
- [ ] Tested skill with a real bug report (duplicate characters)
- [ ] Verified Copilot uses the skill automatically
- [ ] Skill generates failing tests that demonstrate the issue

### ✨ The "After" — The Improved Experience

Now when a bug report comes in:
- **Automatic test structure** following FanHub conventions
- **Consistent Arrange/Act/Assert** pattern
- **Proper test data setup** that triggers the bug
- **Clear documentation** of expected vs. actual behavior

**Before the skill**: 5-10 minutes per bug to write a failing test  
**After the skill**: 30 seconds to describe the bug, Copilot writes the test

### 📚 Official Docs

- [VS Code: Agent Skills](https://code.visualstudio.com/docs/copilot/customization/agent-skills)
- [Agent Skills Open Standard](https://agentskills.io)

### 💭 Elena's Transformation

*"This is what I've been missing! The skill captures our testing workflow—how to structure tests, what to assert, how to reference bugs. Now when a user reports 'page shows wrong data,' I just describe the issue and Copilot writes a failing test that proves the bug exists. My 8 years of testing experience is encoded in this skill."*

---

## 🎯 Elena's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| Explain testing patterns every bug report | Skill applies patterns automatically |
| 5-10 minutes per failing test | 30 seconds to describe, AI writes test |
| Testing conventions in your head | Testing conventions encoded in skill |
| Inconsistent bug reproduction | Consistent, systematic approach |

### Artifacts You Created

```
.github/skills/
└── bug-reproduction-test-generator/
    └── SKILL.md    # Your 8 years of QA expertise
```

### The Quality Champion's Win

Your testing expertise isn't locked in your head anymore—it's:
- **Executable**: Copilot applies it automatically
- **Version controlled**: Evolves with your codebase
- **Scalable**: Every developer benefits from your patterns
- **Teachable**: New team members learn by seeing AI follow your standards

---

## ➡️ Continue Your Journey

**Next for Elena**: [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) — See how your bug reproduction skill integrates into the full development lifecycle.

**Also relevant**: [Module 5: Custom Instructions](../05-custom-instructions/README.md) — Your `testing.instructions.md` works alongside this skill for comprehensive test coverage.
