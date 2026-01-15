# Rafael's Journey: Module 6 - MCP Servers

> **Your role**: Product Manager using MCP to query data for product decisions  
> **Time**: 30 minutes (focused) or 45 minutes (with team collaboration)  
> **Transformation**: From waiting for reports to instant product intelligence

---

## 📖 Your Story in This Module

It's mid-sprint and stakeholders are asking questions:

*"How many users have added favorites? Should we prioritize the favorites export feature?"*

*"Which characters are most popular? Should we expand those show pages?"*

*"What's our error rate on the character search? Is it worth fixing?"*

You don't have immediate answers. You open a ticket: "Need analytics report on favorites usage." Three days later, you get a spreadsheet. By then, the sprint planning meeting already happened.

**MCP servers change this.** With database access configured, you can ask Copilot directly—and get answers in seconds.

---

## 🎯 Your Exercises

### Exercise 6.1: Product Intelligence Queries ⭐ *You lead this one*

**Your role**: Use MCP database access to answer product questions instantly  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-61-mcp-exploration--your-filesystem-assistant)**

**Your "before" pain:**

Stakeholder question in sprint planning:

> *"Should we prioritize the 'Favorites Export' feature? How many users even use favorites?"*

Your process:
1. Create ticket: "Need favorites usage data" (5 min)
2. Wait for data team availability (1-3 days)
3. Receive CSV with raw data (download, open)
4. Create summary for presentation (30 min)
5. Present findings (already stale data)

**Total time**: 3 days
**Confidence**: Medium (data already outdated)

**Your "after" win:**

With MCP database access configured:

```
You (in chat): @sqlite 
"How many users have added at least one favorite? 
And what's the average number of favorites per user?"
```

**Copilot response:**
```
Based on the FanHub database:

📊 Favorites Usage Summary:
- Users with at least one favorite: 847 (73% of active users)
- Average favorites per user: 4.2
- Most favorited characters: 
  1. Walter White (234 users)
  2. Tony Soprano (189 users)
  3. Omar Little (156 users)

💡 Product Insight: With 73% engagement, favorites is a 
core feature. Export functionality would serve an active user base.
```

**Stakeholder**: *"Wow, that was fast. Yes, let's prioritize it."*

**Total time**: 30 seconds
**Confidence**: High (live data)

**What you'll explore:**
- Querying the SQLite database for user behavior
- Asking natural language questions about product usage
- Building quick reports for stakeholder meetings

---

### Exercise 6.2: Sprint Intelligence Dashboard 🤝 *Team collaboration*

**Your role**: Build a mental model of using MCP for ongoing product queries  
**Time**: 10 minutes

**Scenario queries you can now answer instantly:**

**1. Feature Priority Questions**
```
@sqlite "Which features have the highest error rates? 
I need to prioritize bug fixes for next sprint."
```

**2. User Behavior Analysis**
```
@sqlite "What time of day do most users add favorites? 
This helps decide when to schedule our feature announcement."
```

**3. Content Performance**
```
@sqlite "Which TV shows have the most character pages viewed? 
We should expand content for popular shows first."
```

**4. Technical Debt Justification**
```
@sqlite "How many database queries fail per day? 
I need this to justify the database optimization work."
```

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Data-informed decisions**: Access product data without data team bottleneck
- **Real-time stakeholder responses**: Answer questions in meetings, not days later
- **Product intelligence**: Understand user behavior through direct queries

### How This Helps Your Real Work

**The old workflow:**
```
Question → Ticket → Wait → Data delivery → Analysis → Stale answer
```

**The new workflow:**
```
Question → Copilot query → Instant answer → Decision
```

**Impact:**
- **Sprint planning**: Real-time data during discussions
- **Stakeholder updates**: Immediate answers to executive questions
- **Prioritization**: Data-backed decisions, not gut feelings
- **Retrospectives**: Actual metrics on feature impact

### Why This Matters for PMs

You're not learning to code. You're not replacing your data team. You're:
- Getting **quick answers** for tactical decisions
- Saving **complex analysis** for the data team
- Making **faster decisions** with real data
- Looking **credible** in stakeholder meetings

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Stakeholder asks a data question—you don't have the answer
- 😰 Waiting days for simple queries
- 😰 Making decisions based on gut, not data
- 😰 Looking unprepared in meetings

**After this module (your achievements):**
- ✅ Answer data questions in real-time
- ✅ Make confident prioritization decisions
- ✅ Justify roadmap choices with actual usage
- ✅ Look like a data-powered PM

**Key insight:**
> *"I used to be data-dependent but data-blocked. Every decision waited for a report that took days. Now I can ask the database directly. I'm not doing the data team's job—I'm just getting quick answers to simple questions. The complex analysis still goes to them. But the 'how many users?' questions? Those are now instant."*

---

## 🚀 Quick Start Guide

**If you're short on time (20 minutes):**
1. Explore MCP database connection with the team
2. Practice 3-4 product queries
3. Note which questions you can now answer instantly

**If you have full time (30 minutes):**
1. Exercise 6.1: Product intelligence queries (20 min)
2. Exercise 6.2: Sprint intelligence patterns (10 min)

---

## 📊 Your Success Metrics

| Metric | Before MCP | After MCP |
|--------|-----------|-----------|
| **Time to answer "how many users" questions** | 1-3 days | 30 seconds |
| **Data requests per sprint** | 8-10 tickets | 2-3 tickets (complex only) |
| **Confidence in sprint planning decisions** | 60% | 90% |
| **Stakeholder data requests answered in meeting** | 0% | 80% |

---

## ⚠️ Important Considerations

### What MCP Is Good For (Product Queries)
- Quick usage counts
- Simple aggregations
- Feature adoption metrics
- Error rate checks

### What Still Needs Data Team
- Complex cohort analysis
- Statistical significance testing
- A/B test interpretation
- Predictive modeling

### Security & Access
- MCP respects database permissions
- Query only what you should access
- Sensitive user data requires proper authorization

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Elena's path](elena.md) to see testing data access
- [Marcus's path](marcus.md) to see infrastructure queries

### Next Module
Your next appearance: **[Module 7: Custom Agents](../../07-custom-agents/personas/rafael.md)**

**What's next for you**: You'll see how custom agents can validate PRs against your acceptance criteria. The agent becomes an automated product review layer.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [VS Code: MCP Servers](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)
- [SQLite MCP Documentation](https://github.com/modelcontextprotocol/servers/tree/main/src/sqlite)

**Product-Specific Resources:**
- [Data-Informed Product Management](https://www.productplan.com/learn/data-driven-product-management/)
- [SQL for Product Managers](https://medium.com/towards-data-science/sql-for-product-managers-70c1e2f36f4e)
