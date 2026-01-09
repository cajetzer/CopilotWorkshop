# Marcus's Path: Copilot CLI

## 🎯 Your Focus: Interactive Tasks for Application Development

Marcus, this module shows how Copilot CLI helps you make code changes conversationally. Instead of the file-by-file editing that slows you down when working on application code, you can describe what you want and let the agent do the work.

**Your exercise**: 2 (Interactive Tasks)  
**Time**: ~15 minutes  
**Theme**: From manual editing to conversational code changes

---

## Your Journey in This Module

```
Marcus's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "Making multi-file changes is slow and error-prone"            │
│                         ↓                                       │
│  Uses interactive mode for code changes                         │
│                         ↓                                       │
│  "I described the change and Copilot found all the files"       │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 2: Interactive Tasks — "Agent in Action"

### 📖 The Story

**Marcus** knows infrastructure, but application code changes always feel slow. Today he needs to make a simple change—update a version number in several files. With the old workflow, that's find, open, edit, save, repeat.

With Copilot CLI, he can describe what he wants and let the agent do the work.

### ❌ The "Before" — What Frustration Looks Like

Without agentic help:
- Manual file-by-file editing for repetitive changes
- Risk of missing files that need updates
- Testing each change individually
- 30 minutes for a "simple" version bump

### 🎯 Objective

Use Copilot CLI in interactive mode to perform a multi-file edit task.

### 📋 Steps

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

   When Copilot wants to modify a file, you'll see options:
   ```
   1. Yes
   2. Yes, and approve this tool for the session
   3. No, and tell Copilot what to do differently
   ```

5. **Iterate if needed**

   If results aren't quite right:
   ```
   That changed too many files. Only update the version in package.json and README.md
   ```

6. **Ask follow-up questions**

   ```
   Show me what changed
   ```
   
   Or:
   ```
   Did I miss any files that reference the old version?
   ```

### ✅ Success Criteria

- [ ] Started an interactive session
- [ ] Had Copilot analyze your project
- [ ] Requested a code change
- [ ] Experienced the approval workflow
- [ ] Iterated on results

### ✨ The "After" — The Transformation

**Before interactive mode** (30 minutes):
- Search for files with version number
- Open each file, edit, save
- Hope you didn't miss any
- Manual verification

**After interactive mode** (5 minutes):
- Describe the change
- Let Copilot find all files
- Approve each modification
- Ask for verification

### 📚 Official Docs

- [Using GitHub Copilot CLI](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/use-copilot-cli)
- [About GitHub Copilot CLI - Local tasks](https://docs.github.com/en/copilot/concepts/agents/about-copilot-cli#local-tasks)

### 💭 Marcus's Transformation

*"I told it what I wanted in plain English, and it did the work. The approval prompts mean I'm never surprised by what it does. This is how I want to work with application code—describe the intent, let AI handle the tedious file-by-file work, review the results. My infrastructure skills translate: I think in terms of 'what should change,' not 'which files to edit.'"*

---

## 🎯 Marcus's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| File-by-file editing | Describe the change once |
| Risk of missing files | Copilot finds all affected files |
| Manual verification | Ask "Did I miss anything?" |
| 30 minutes for simple changes | 5 minutes with approval workflow |

### The DevOps Developer's Win

Your infrastructure mindset ("what should the state be?") now applies to code:
- **Describe intent** instead of specifying files
- **Approval workflow** keeps you in control
- **Iteration** through conversation, not re-editing
- **Verification** by asking questions

### Key Pattern

```
You: "Change X to Y across the project"
Copilot: Finds files, proposes changes, asks approval
You: "That's too many files, limit to A and B"
Copilot: Refines, re-proposes
You: "Perfect, did I miss anything?"
Copilot: Verifies completeness
```

---

## ➡️ Continue Your Journey

**Next for Marcus**: [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) — See how CLI tasks fit into the full development lifecycle.

**Also relevant**: [Exercise 3: GitHub.com Integration](../09-copilot-cli/EXERCISES.md#exercise-3-githubcom-integration--prs-from-the-terminal) — Create PRs from the terminal after your changes.
