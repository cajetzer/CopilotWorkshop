# Sarah's Path: Copilot on the Web

## 🎯 Your Focus: Efficient PR Reviews Without Sacrificing Quality

Sarah, this module shows how GitHub.com's Copilot features accelerate your review workflow. You've been skeptical of AI hype—this exercise proves the value with concrete time savings while keeping you in control of quality decisions.

**Your exercise**: 7 (Tight PR Review)  
**Time**: ~5 minutes  
**Theme**: Faster reviews without compromising judgment

---

## Your Journey in This Module

```
Sarah's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "I need to review this PR but don't have 30 minutes"           │
│                         ↓                                       │
│  Uses Copilot on GitHub.com for quick analysis                  │
│                         ↓                                       │
│  "Identified the key risk and missing test in 5 minutes."       │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 7: Tight PR Review — "Quality in Minutes"

**Tier**: 💼 Business  
**Time**: 5 minutes

### 📖 The Story

**Sarah** needs to review a PR quickly but thoroughly. She's got three PRs in her queue, back-to-back meetings, and her reputation for catching edge cases. 

*"I don't have time to read every line,"* Sarah thinks, *"but I can't rubber-stamp it either. My name's on the approval."*

She uses Copilot to accelerate her review without sacrificing the quality that made her a trusted reviewer.

### ❌ The "Before" — What Frustration Looks Like

Sarah opens a 15-file PR. Without AI assistance, she:

1. Reads through each file change (15 minutes)
2. Cross-references with the ticket description (5 minutes)
3. Checks for obvious issues: missing tests, security concerns, edge cases (10 minutes)
4. Writes thoughtful review comments (5 minutes)

**Total: 35 minutes** for a medium PR. With three PRs in the queue, that's almost 2 hours.

*"There has to be a faster way without cutting corners..."*

### 🎯 Objective

Use Copilot to review a small PR and write focused feedback efficiently.

### 📋 Steps

1. **Open a PR on GitHub.com**
   
   Navigate to any pull request in your repository or a public repo.

2. **Ask Copilot to summarize scope and identify potential risks**
   
   Click the Copilot icon and ask:
   ```
   Summarize this PR and identify potential risks or areas needing attention.
   ```
   
   **Expected**: Copilot provides:
   - Summary of what the PR does
   - Files changed and their purpose
   - Potential risks (security, performance, edge cases)
   - Areas that need careful review

3. **Ask for missing tests and edge cases**
   
   ```
   What tests are missing? What edge cases should be considered?
   ```
   
   **Expected**: Copilot identifies:
   - Untested code paths
   - Edge cases not covered
   - Suggested test scenarios

4. **Post a single, focused comment**
   
   Based on Copilot's analysis, write ONE comment that includes:
   - The identified risk
   - A suggested test
   - A minimal, specific change recommendation

### ✅ Success Criteria

- [ ] Summary identifies scope and potential risks
- [ ] Copilot highlighted areas needing attention
- [ ] A minimal, specific suggestion is posted
- [ ] Review completed faster than manual review
- [ ] Quality of feedback maintained or improved

### ✨ The "After" — The Transformation

**Before Copilot** (35 minutes):
1. Read every file change
2. Cross-reference ticket
3. Manually identify issues
4. Write detailed comments

**After Copilot** (5 minutes):
1. Ask for summary and risks
2. Ask for missing tests
3. Post focused feedback

**Sarah's verdict**: *"It's faster, but I still own quality and tradeoffs. Copilot highlights what to look at—I decide what matters."*

### 📚 Official Docs

- [Using Copilot on GitHub.com](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-on-githubcom)
- [Code review best practices](https://github.blog/developer-skills/github/how-to-review-code-effectively-a-github-staff-engineers-philosophy/)

### 💭 Sarah's Transformation

*"I was skeptical. 'AI code review' sounded like a way to rubber-stamp bad code. But this is different—Copilot does the scanning, I do the thinking. It caught a potential null pointer I might have missed in file 12 of 15. That's not replacing my judgment, that's amplifying my attention. Three PRs reviewed in under 20 minutes, and I'm confident in every approval."*

---

## 🎯 Sarah's Module Summary

### Your Transformation

| Before | After |
|--------|-------|
| 35 minutes per PR | 5-10 minutes per PR |
| Read every file manually | Focus on flagged areas |
| Might miss issues in large PRs | AI catches patterns across files |
| Quality requires time | Quality requires judgment (AI assists) |

### The Skeptic's Win

Your 15 years of experience aren't replaced—they're amplified:
- **AI scans**: Files, patterns, common issues
- **You decide**: What matters, what's a real risk, what to approve

### Key Insight

*"Copilot highlights what to look at—I decide what matters."*

This is the difference between AI-assisted and AI-replaced. Your expertise determines which risks are acceptable, which suggestions to take, and when to push back.

---

## ➡️ Continue Your Journey

**Next for Sarah**: [Module 9: Copilot CLI](../09-copilot-cli/README.md) — Command-line AI assistance for shell workflows.

**Also relevant**: [Module 10: Agentic SDLC](../10-agentic-sdlc/README.md) — See how web-based reviews fit into the full development lifecycle.
