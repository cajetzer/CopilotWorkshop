# David's Journey: Module 9 - GitHub Copilot CLI

> **Your role**: Architectural Guardian, Code Reviewer  
> **Time**: 15 minutes (focused on Exercise 9.8)  
> **Transformation**: From "manual dependency tracing" to "instant architectural queries"

---

## 📖 Your Story in This Module

You're about to review a large PR. Before diving into the code, you need to understand the dependency landscape: Which files import the changed modules? What's the blast radius of these changes? Are there any layering violations?

The old way: Open VS Code, use "Find All References," click through each file, build a mental map, lose track, start over. Fifteen minutes later, you might have a partial picture.

The CLI way: Ask the agent. In seconds, you have a complete dependency tree, layering validation, and a reviewer's summary—all without opening a single file.

---

## 🎯 Your Exercise

### Exercise 9.8: Architecture Analysis from Terminal ⭐ *You lead this one*

**Your role**: Quick architectural queries from terminal  
**Time**: 15 minutes  
**[View full exercise →](../EXERCISES.md#exercise-98-architecture-analysis-from-terminal--davids-quick-queries)**

**What you'll query:**
- File dependency chains (who imports what)
- Service relationships (which routes call which services)
- Layering violations (frontend importing backend?)
- Function usage patterns (where is this called from?)
- Architectural validation against docs

**Your "before" pain:**
Manual dependency tracing is tedious and error-prone. You open files, scan imports, follow the chain, lose context, start over. By the time you understand the dependencies, you've spent more time navigating than analyzing.

- **Time per analysis**: 10-15 minutes
- **Confidence in completeness**: Low
- **Mental overhead**: High

**Your "after" win:**
You ask the CLI: "What imports database/queries.js?" In 30 seconds, you have a complete dependency tree. You ask about layering violations—none found. You generate a reviewer's summary before even opening the PR files.

- **Time per analysis**: 30 seconds
- **Confidence in completeness**: High (agent finds everything)
- **Mental overhead**: Minimal

**Your transformation moment:**
> *"For years I've been opening files, tracing imports manually, building a mental map of dependencies. The CLI agent does it in seconds. I can validate architectural assumptions before a code review, not during it. My expertise is in knowing what questions to ask—the agent handles the grunt work of finding answers."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Quick dependency analysis**: Understand code relationships without file navigation
- **Pre-review architecture check**: Validate assumptions before diving into code
- **Blast radius assessment**: Know what a change affects before reviewing

### How This Helps Your Real Work
As a senior architect, you review many PRs. Each one requires understanding context: What does this code depend on? What depends on it? Will this change cascade through the codebase?

The CLI agent makes these questions trivial. You don't need to open VS Code for quick architectural queries. You don't need to manually trace imports. You ask, the agent answers, and you move on to the substantive review work that requires your expertise.

This is the difference between being bottlenecked on mechanical work versus focusing on judgment calls only you can make.

### Artifacts You Create
- Dependency analysis queries (reusable prompts)
- Architectural pre-review workflow
- Reviewer's summary template

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Time per dependency analysis** | 10-15 minutes | 30 seconds |
| **Confidence in completeness** | Low (missed things) | High (agent finds all) |
| **Mental overhead** | High (context switching) | Minimal (stay in terminal) |
| **Pre-review prep time** | 20 minutes | 2 minutes |
| **Blast radius assessment** | Often skipped | Always done |

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Worried that quick queries would miss dependencies
- 😰 Concerned that terminal tools can't do real code analysis
- 😰 Afraid of approving changes without understanding impact

**After this module (your achievements):**
- ✅ Traced complete dependency trees in seconds
- ✅ Validated layering patterns before opening files
- ✅ Generated reviewer summaries automatically
- ✅ Made blast radius assessment a standard practice

**Key insight:**
> *"My value isn't in manually tracing imports—it's in knowing which architectural questions matter. The CLI agent handles the mechanical search; I focus on the judgment that comes from 20 years of experience."*

---

## 🚀 Quick Start Guide

**If you're short on time (5 minutes):**
1. Start a CLI session: `copilot`
2. Ask: "What files import database/queries.js?"
3. Ask: "Are there any layering violations?"
4. Review the output

**If you have full time (15 minutes):**
1. Complete Exercise 9.8 in full
2. Create your architectural pre-review workflow
3. Generate a dependency report
4. Document your query patterns for the team

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for complete module content
- See how Marcus uses CLI for build/test workflows in Exercises 9.1-9.7

### Next Module
Your next appearance: **[Module 10: Agentic SDLC](../../10-agentic-sdlc/personas/david.md)** — where you orchestrate background architecture review while the team builds in parallel

### Cross-Module Arc
Your architectural capabilities compound through the training:
- **Module 01**: Documented architecture in ARCHITECTURE.md
- **Module 04**: Encoded patterns as custom instructions
- **Module 06**: Validated docs against database reality (MCP)
- **Module 07**: Created Architecture Reviewer agent
- **Module 08**: Reviewed PRs from browser
- **Module 09**: Quick architectural queries from CLI ← *You are here*
- **Module 10**: Run architecture review in parallel with development
- **Module 11**: Scale to organization-wide patterns
