# FanHub Workshop: Instructor Guide

> A comprehensive guide for instructors delivering the FanHub GitHub Copilot training workshop.

---

## 📋 Table of Contents

1. [Workshop Overview](#workshop-overview)
2. [Before the Workshop](#before-the-workshop)
3. [Module-by-Module Guide](#module-by-module-guide)
4. [Facilitation Tips](#facilitation-tips)
5. [Common Questions](#common-questions)
6. [Troubleshooting](#troubleshooting)
7. [Assessment & Feedback](#assessment--feedback)

---

## Workshop Overview

### What This Workshop Teaches

The FanHub workshop teaches developers to customize and optimize GitHub Copilot through four key features:

1. **Repository Instructions** (`.github/copilot-instructions.md`)
2. **Custom Prompts** (`.github/prompts/`)
3. **Custom Agents** (autonomous task specialists)
4. **Custom Instructions** (`.github/instructions/` with `applyTo` patterns)

### The Narrative

Participants follow a team of seven personas building a TV show fan site in an 8-hour sprint. The story creates emotional investment and demonstrates realistic scenarios.

**Key narrative beats:**
- **Module 0**: The challenge is set (Copilot struggles without context)
- **Module 1**: First "wow" moment (same question, better answer)
- **Module 3**: Agents unlock parallel work
- **Module 5**: All features compound, ship it, reflect

### Target Audience

| Audience | Time Investment | Focus |
|----------|----------------|-------|
| Individual developers | 7-8 hours | All modules |
| Team workshops | 4-6 hours | Modules 1-5 |
| Team leads | 3 hours | Modules 1, 2, 4 |
| Quick overview | 2 hours | Modules 1, 2 |

---

## Before the Workshop

### Prerequisites Checklist

Ensure participants have:

- [ ] VS Code installed (latest version)
- [ ] GitHub Copilot extension installed
- [ ] GitHub Copilot Chat extension installed
- [ ] Valid Copilot license (Individual, Business, or Enterprise)
- [ ] Docker Desktop installed and running
- [ ] Node.js 18+ installed
- [ ] Git configured with GitHub credentials
- [ ] Repository forked and cloned

### Setup Verification Script

Have participants run this to verify their setup:

```bash
# Check VS Code
code --version

# Check Node
node --version  # Should be 18+

# Check Docker
docker --version
docker compose version

# Check GitHub CLI (optional but helpful)
gh --version
gh auth status
```

### Room/Environment Setup

**For in-person workshops:**
- Projector for demonstrations
- Reliable internet (Copilot requires connection)
- Each participant needs their own machine
- Consider backup hotspots for internet issues

**For virtual workshops:**
- Screen sharing capability
- Breakout rooms for exercises (if using)
- Shared document for questions
- Recording permission if archiving

---

## Module-by-Module Guide

### Module 0: Orientation (30-45 minutes)

**Purpose**: Set the stage, experience the "before" state.

**Key demonstration**: Show Copilot giving generic, unhelpful suggestions on the starter codebase.

**Instructor actions:**
1. Tell the story (Sarah's challenge, Monday 9am)
2. Have participants clone the FanHub starter
3. Ask a question like "How do I add a new character?" 
4. Show the generic/confused response
5. Say: "By Module 1, this will be completely different"

**What to emphasize:**
- This "struggle" is intentional
- The transformation they're about to see is real
- Pick a TV show they're excited about

**Common issues:**
- Docker not starting → Have backup with SQLite
- Copilot not working → Check license and extension status

---

### Module 1: Repository Instructions (90 minutes)

**Purpose**: Create repository instructions, experience the first transformation.

**This is the most important module.** The "before/after" demonstration creates buy-in for everything that follows.

**Key demonstration**: Same question from Module 0, dramatically better answer.

**Instructor actions:**
1. Walk through creating ARCHITECTURE.md (Exercise 1.1)
2. Create copilot-instructions.md (Exercise 1.2)
3. **Critical moment**: Re-ask "How do I add a character?"
4. Show the transformed response
5. Let the room react

**Facilitation tip**: Give participants time to experience their own "wow" moment. Don't rush past it.

**What to emphasize:**
- This isn't magic—it's context
- The same AI, but now it knows your codebase
- Every interaction from now on benefits from this

**David's fear to address**: "If AI knows everything, what's my value?"
- Answer: David's 20 years of experience is WHY the architecture doc is good
- AI didn't write the architecture—David did
- AI now follows David's expertise

---

### Module 2: Context & Prompts (90 minutes)

**Purpose**: Build reusable prompt library.

**Key demonstration**: Show a prompt file being used across different contexts.

**Instructor actions:**
1. Create test-generation.md prompt (Elena's workflow)
2. Create spec-to-code.md prompt (Rafael's workflow)
3. Demonstrate using prompts with different files
4. Build the Episode Guide feature as a group

**What to emphasize:**
- Prompts are "solved problems that stay solved"
- Team knowledge becomes reusable
- Rafael's product expertise encoded in templates

**Exercise variation**: Have participants create prompts for their own common tasks.

---

### Module 3: Custom Agents (90 minutes)

**Purpose**: Introduce autonomous AI assistance.

**Key demonstration**: Start a background agent, work on something else, check results.

**Instructor actions:**
1. Demonstrate Agent Mode (Exercise 3.1)
2. Create the architecture-reviewer agent (Exercise 3.2)
3. Show Copilot CLI (Exercise 3.3)
4. **If Enterprise tier**: Demonstrate background agents

**What to emphasize:**
- Agents handle multi-step tasks autonomously
- Human review remains essential
- Background agents enable parallel work

**Jordan's concern to address**: "What if agents make mistakes?"
- Answer: Agents propose, humans approve
- Checkpoints let you review before changes apply
- Jordan's expertise guides what agents should do

---

### Module 4: Custom Instructions (90 minutes)

**Purpose**: Create file-scoped instructions using `applyTo` patterns.

**Key demonstration**: Instructions activate automatically based on file patterns.

**Instructor actions:**
1. Create testing instructions (Exercise 4.1)
2. Create API route instructions (Exercise 4.2)
3. Create infrastructure instructions (Exercise 4.3)
4. Create component instructions (Exercise 4.4)

**What to emphasize:**
- Instructions activate without prompting
- File patterns match the right context to the right files
- Institutional knowledge is codified, not lost

**Elena's validation**: Testing patterns ensure consistent test quality across the team.

---

### Module 5: Agentic SDLC (90 minutes)

**Purpose**: See parallel development with multiple agent interfaces.

**Key demonstration**: Run VS Code Agent Mode, GitHub Web Coding Agent, and Copilot CLI simultaneously.

**Instructor actions:**
1. Start search feature in VS Code (Exercise 5.1)
2. Kick off analytics PR via GitHub Web (Exercise 5.2)
3. Run CLI infrastructure tasks (Exercise 5.3)
4. Merge and integrate (Exercise 5.4)

**What to emphasize:**
- This is the payoff of Modules 1-4
- Different interfaces for different task types
- Parallel > Sequential for productivity

**Honest moment**: Point out where AI still needs guidance. Show that ~50% is AI, ~50% is human for complex features.

**Closing the workshop**: Module 5 now includes the ship and retrospective content. After Exercise 5.4, facilitate a brief team discussion:
- What surprised you?
- What worked better than expected?
- What was harder than expected?
- Would you use this approach again?

Review each persona's transformation arc. Show the before/after.

---

## Facilitation Tips

### Pacing

| If you're... | Adjust by... |
|--------------|-------------|
| Running ahead | Add more hands-on experimentation |
| Running behind | Skip challenge extensions, focus on core exercises |
| Mixed skill levels | Pair experienced with newer developers |

### Engagement Techniques

1. **Show, don't tell**: Always demonstrate before explaining
2. **Let them experience**: Give time for personal "wow" moments
3. **Use the personas**: "What would David say about this?"
4. **Embrace failures**: When AI gets something wrong, teach from it
5. **Celebrate progress**: Acknowledge each customization milestone

### Handling Skeptics

Sarah-types in the room are your allies. When they're convinced, everyone is.

**Approach:**
1. Acknowledge their skepticism is reasonable
2. Focus on concrete demonstrations, not promises
3. Let results speak for themselves
4. Ask them to be the "quality check" on AI output

### Supporting Newer Developers

Priya-types may feel intimidated.

**Approach:**
1. Emphasize learning over performance
2. Pair them with experienced developers
3. Point out when AI explanations are helpful
4. Celebrate questions—they make everyone think

---

## Common Questions

### "Will this work with [language/framework]?"

Yes, but the specific prompts may need adjustment. The principles apply universally.

### "What about code privacy?"

- Individual/Pro: Code sent to OpenAI/GitHub
- Business: Content exclusions available
- Enterprise: No training on your code, additional controls

### "How is this different from ChatGPT?"

Copilot is IDE-integrated, codebase-aware, and customizable. ChatGPT is general-purpose. Both have their place.

### "What if we don't have Enterprise features?"

Modules 1-5 work with Free/Individual tier. Background agents require Enterprise, but the core workflow is universal.

### "How do we maintain the customizations?"

- Commit all artifacts to version control
- Include in onboarding documentation
- Review and update as codebase evolves
- Treat like any other team standard

---

## Troubleshooting

### Copilot Not Responding

1. Check internet connection
2. Verify Copilot is enabled (bottom-right VS Code)
3. Check license status: `GitHub Copilot: Status` command
4. Restart VS Code
5. Check GitHub status page

### Docker Issues

1. Ensure Docker Desktop is running
2. Try `docker compose down && docker compose up`
3. Check port conflicts (3000, 3001, 5432)
4. Fallback: Use SQLite configuration

### Slow Responses

1. Complex prompts take longer—this is normal
2. Agent Mode is slower than inline completion
3. Background agents may take minutes for large tasks
4. Internet latency affects response time

### "Different Results Than Expected"

AI output varies. Emphasize:
- The pattern, not the exact output
- Iterative refinement is normal
- Review and adjust is the workflow

---

## Assessment & Feedback

### Progress Indicators

| Module | Participant Should Be Able To... |
|--------|--------------------------------|
| 1 | Create and use copilot-instructions.md |
| 2 | Write and use custom prompt files |
| 3 | Use Agent Mode and understand when to apply it |
| 4 | Use images as context for code generation |
| 5 | Combine multiple customizations effectively |
| 6 | Generate tests and documentation |
| 7 | Articulate what they learned |

### Feedback Collection

Suggested questions:
1. What was the most valuable part?
2. What would you change?
3. Will you use these techniques tomorrow?
4. What questions remain?

### Success Metrics

**For individuals:**
- Created copilot-instructions.md for their project
- Built at least one custom prompt
- Experienced the "before/after" transformation

**For teams:**
- Shared prompt library established
- Team coding standards documented
- Plan for ongoing customization maintenance

---

## Appendix: Quick Reference

### Key Commands

```
# VS Code Command Palette
Ctrl+Shift+P (Windows/Linux)
Cmd+Shift+P (Mac)

# Copilot Commands
GitHub Copilot: Open Chat
GitHub Copilot: Start Agent Mode
GitHub Copilot: Explain This

# Terminal (Copilot CLI)
copilot suggest "description"
copilot explain "command"
```

### Key Files

| File | Purpose |
|------|---------|
| `.github/copilot-instructions.md` | Repository-wide AI instructions |
| `.github/prompts/*.md` | Reusable prompt templates |
| `docs/ARCHITECTURE.md` | System documentation for AI context |
| `src/theme.js` | Extracted color palette |

### Resources

- [VS Code Copilot Docs](https://code.visualstudio.com/docs/copilot)
- [GitHub Copilot Docs](https://docs.github.com/en/copilot)
- [Copilot Trust Center](https://resources.github.com/copilot-trust-center/)

---

## Final Notes

The FanHub workshop succeeds when participants:

1. **Experience** the transformation, not just hear about it
2. **Create** artifacts they can use in their real projects
3. **Understand** when AI helps and when human judgment is essential
4. **Leave** with a plan to apply what they learned

The story is the vehicle. The transformation is real. Your job is to guide them through it.

Good luck! 🚀
