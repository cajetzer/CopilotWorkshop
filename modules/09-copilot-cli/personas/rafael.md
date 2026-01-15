# Rafael's Journey: Module 9 - Copilot CLI

> **Your role**: Product Manager using CLI for quick project status and queries  
> **Time**: 20 minutes (focused) or 35 minutes (with exploration)  
> **Transformation**: From opening multiple tabs to instant terminal insights

---

## 📖 Your Story in This Module

You're in a meeting. Stakeholder asks:

*"How many issues are in the current sprint?"*

You fumble with tabs—GitHub, project board, filter settings. By the time you find the answer, the conversation has moved on.

**Copilot CLI changes this.** Quick queries, instant answers, no context switching.

You don't need to become a "terminal person." You just need a few powerful commands that give you project visibility without leaving your flow.

---

## 🎯 Your Exercises

### Exercise 9.1: Sprint Status Queries ⭐ *You lead this one*

**Your role**: Use Copilot CLI to answer common PM questions instantly  
**Time**: 15 minutes  
**[View full exercise →](../EXERCISES.md#exercise-91-terminal-superpowers--marcus-discovers-gh-copilot)**

**Your "before" pain:**

Questions that interrupt your flow:

1. *"How many issues are in this sprint?"*
   - Open GitHub → Projects → Select sprint → Count manually
   
2. *"What's blocking the Character Detail feature?"*  
   - Open issue → Read comments → Check linked issues → Find blocker
   
3. *"Who's assigned to what right now?"*
   - Open project board → Scan columns → Make mental list

Each question: 2-5 minutes of clicking and context-switching.

**Your "after" win:**

Open terminal and ask:

```bash
gh copilot explain "how many open issues are labeled 'sprint-1' in this repo?"
```

**Copilot suggests:**
```bash
gh issue list --label "sprint-1" --state open | wc -l
```

Answer in 3 seconds.

**More useful queries:**

```bash
# What issues are in progress?
gh issue list --label "in-progress" --json title,assignees

# What PRs are waiting for review?
gh pr list --state open --json title,author,reviewers

# What did we ship last week?
gh pr list --state merged --search "merged:>2024-01-15" --json title

# Who's working on what?
gh issue list --state open --json title,assignees | jq 'group_by(.assignees[0].login)'
```

**Your reaction:**
> *"I used to context-switch constantly during meetings. Open browser, find project, filter issues, count manually. Now I ask the terminal and get answers while still in the conversation."*

---

### Exercise 9.2: Quick Project Insights 🤝 *Meeting preparation*

**Your role**: Gather sprint context before stakeholder meetings  
**Time**: 5 minutes

**Scenario:** You have a stakeholder meeting in 10 minutes. You need a quick sprint status.

```bash
# Create a quick status summary
gh issue list --label "sprint-1" --json title,state,labels | \
  jq '{
    total: length,
    open: [.[] | select(.state == "OPEN")] | length,
    closed: [.[] | select(.state == "CLOSED")] | length
  }'
```

Output:
```json
{
  "total": 12,
  "open": 5,
  "closed": 7
}
```

You walk into the meeting knowing: *"We're at 58% complete—7 of 12 issues done."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Quick queries**: Instant answers to project questions
- **Meeting preparation**: Status in seconds, not minutes
- **Reduced context switching**: Stay in your flow

### Commands You'll Actually Use

| Question | Command Pattern |
|----------|-----------------|
| "How many issues in sprint?" | `gh issue list --label "sprint-X" \| wc -l` |
| "What's open?" | `gh issue list --state open` |
| "What's assigned to [person]?" | `gh issue list --assignee username` |
| "What PRs need review?" | `gh pr list --state open` |
| "What shipped recently?" | `gh pr list --state merged --search "merged:>date"` |

### The PM CLI Toolkit

You don't need to learn Linux. You need these 5 commands:

1. **`gh issue list`** — See issues with filters
2. **`gh pr list`** — See PRs with filters  
3. **`gh copilot explain`** — Ask how to do something
4. **`gh copilot suggest`** — Get command suggestions
5. **`wc -l`** — Count lines (count results)

That's it. Five commands cover 90% of PM terminal use cases.

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Terminal is "developer territory"
- 😰 Context-switching to browser for every question
- 😰 Looking unprepared in meetings
- 😰 Waiting for reports instead of getting answers

**After this module (your achievements):**
- ✅ Quick answers without leaving terminal
- ✅ Sprint status in seconds
- ✅ Confident in stakeholder meetings
- ✅ Terminal is a tool, not a barrier

**Key insight:**
> *"I always thought the terminal was for developers only. But `gh copilot explain` is like having a translator. I describe what I want in English, it gives me the command. I don't need to memorize syntax—I need to know what questions to ask."*

---

## 🚀 Quick Start Guide

**If you're short on time (15 minutes):**
1. Install GitHub CLI if not present (`gh auth login`)
2. Try 3-4 project status queries
3. Save useful commands somewhere accessible

**If you have full time (20 minutes):**
1. Exercise 9.1: Sprint status queries (15 min)
2. Exercise 9.2: Meeting preparation workflow (5 min)

---

## 📊 Your Success Metrics

| Metric | Before CLI | After CLI |
|--------|-----------|-----------|
| **Time to answer "how many issues" questions** | 2-5 min | 10 sec |
| **Context switches per meeting** | 5-10 | 0-1 |
| **Meeting preparation time** | 15 min | 3 min |
| **Confidence in status discussions** | Medium | High |

---

## ⚠️ Keeping It Simple

### What You're NOT Doing
- Learning bash scripting
- Memorizing command syntax
- Replacing your browser entirely
- Becoming a "command line power user"

### What You ARE Doing
- Using `gh copilot` to translate questions to commands
- Running simple status queries
- Getting quick answers
- Looking like you have superhuman project visibility

---

## 🤝 When to Use CLI vs. Browser

| Task | Best Tool |
|------|-----------|
| Quick count/status | **CLI** |
| Detailed issue editing | Browser |
| Writing long issue descriptions | Browser (or Web + Copilot) |
| Sprint velocity check | **CLI** |
| Complex project board manipulation | Browser |
| "Who's working on what?" | **CLI** |

The CLI doesn't replace GitHub in browser. It gives you quick answers for simple questions.

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Marcus's path](marcus.md) to see infrastructure automation
- [Sarah's path](sarah.md) to see code investigation via CLI

### Next Module
Your next appearance: **[Module 10: Agentic SDLC](../../10-agentic-sdlc/personas/rafael.md)**

**What's next for you**: The big payoff. You orchestrate a full sprint cycle using all the tools from Modules 1-9. Everything compounds into a coherent workflow.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [GitHub CLI Manual](https://cli.github.com/manual/)
- [GitHub Copilot in CLI](https://docs.github.com/en/copilot/using-github-copilot/using-github-copilot-in-the-command-line)
- [gh issue list](https://cli.github.com/manual/gh_issue_list)
- [gh pr list](https://cli.github.com/manual/gh_pr_list)

**PM-Friendly Resources:**
- [GitHub CLI for Non-Developers](https://github.blog/2021-06-08-github-cli-2-0-includes-extensions/)
- [jq Tutorial](https://stedolan.github.io/jq/tutorial/) (optional, for advanced filtering)
