# Marcus's Journey: Module 6 - MCP Servers

> **Your role**: Platform Engineer, Infrastructure State Guardian  
> **Time**: 20 minutes (focused) or 45 minutes (with team exercises)  
> **Transformation**: From "Copilot can't see my infrastructure" to "Copilot knows system state before suggesting changes"

---

## 📖 Your Story in This Module

You've taught Copilot your infrastructure patterns through custom instructions (Module 04). It knows HOW to write secure Dockerfiles. But there's a fundamental limitation that's been nagging you:

*"Copilot suggests infrastructure changes without knowing our current deployment state. What if it suggests scaling up during an active deployment? What if it proposes database migrations without knowing what's already been applied?"*

Elena hit the same wall with database queries. David hit it validating architecture against schemas. Now it's your turn: **Copilot needs to see your infrastructure state, not just know your patterns.**

MCP changes everything. It gives Copilot the ability to query real systems—databases, containers, deployment status. Your instructions tell Copilot WHAT to do. MCP tells it WHAT EXISTS right now.

---

## 🎯 Your Exercises

### Exercise 6.3: Infrastructure State Awareness 🤝 *You support Elena and David*

**Your role**: Understand how MCP enables state-aware infrastructure decisions  
**Time**: 10 minutes (observation + practice)  
**[View full exercise →](../EXERCISES.md#exercise-61-your-first-database-query--elena-discovers-the-duplicate)**

**What you'll observe:**
- Elena uses SQLite MCP to query actual database records
- David uses MCP to validate schema against ARCHITECTURE.md
- You see the pattern: MCP + Instructions = Knowledge + Capability

**Why this matters to you:**
The same pattern applies to infrastructure. Today it's database queries. Tomorrow:
- Container status checks before suggesting Dockerfile changes
- Deployment state validation before infrastructure modifications
- Kubernetes resource queries before scaling recommendations

**Your observation moment:**
> *"Elena asked about duplicate records and Copilot QUERIED THE DATABASE. It didn't guess—it looked. Same idea for infrastructure: before Copilot suggests 'add a new service,' it could check what services already exist."*

---

### Exercise 6.4: Infrastructure MCP Strategy ⭐ *You design this*

**Your role**: Plan an MCP strategy for infrastructure state awareness  
**Time**: 10 minutes  
**This is a forward-looking exercise—you'll implement it as your infrastructure needs grow.**

**The Problem You're Solving:**

Copilot suggests infrastructure changes without context:

```
You: "Add database connection pooling to the backend"

Copilot (without MCP): "Here's a generic connection pool config..."
- Doesn't know your current pool settings
- Doesn't know database connection limits
- Doesn't know if pooling is already configured
```

**Your MCP Strategy:**

Think through what infrastructure state would make Copilot smarter:

| Infrastructure Need | MCP Capability | Value |
|---------------------|----------------|-------|
| **Database state** | SQLite MCP (learned today) | Query schemas, data, constraints |
| **Container state** | Docker MCP server | List containers, check health, view logs |
| **Kubernetes state** | K8s MCP server | Pod status, deployments, resource usage |
| **CI/CD state** | GitHub Actions MCP | Workflow runs, failure patterns |

**Planning Exercise:**

Use plan mode to design your MCP strategy:

```
@workspace Use plan mode to help me design an MCP strategy for FanHub infrastructure.

Consider:
1. What infrastructure state would be valuable for Copilot to query?
2. What MCP servers would provide this capability?
3. What security considerations apply?
4. How would this change infrastructure workflows?

Create a prioritized implementation plan.
```

**Example Output from Your Planning:**

```markdown
## FanHub Infrastructure MCP Strategy

### Phase 1: Data Layer (Today)
- SQLite MCP for development database
- Value: Schema validation, data verification

### Phase 2: Container Layer (Next Sprint)
- Docker MCP for container state
- Value: Pre-change validation, health checks
- Security: Read-only access to container metadata

### Phase 3: Deployment Layer (Future)
- GitHub Actions MCP for CI/CD state
- Value: Failure analysis, workflow optimization
- Security: Scoped to workflow read permissions

### Security Principles
- All MCP servers read-only where possible
- No credential access through MCP
- Audit logging for all queries
```

### ✅ Success Criteria

- [ ] Observed Elena using SQLite MCP for database queries
- [ ] Understood the pattern: MCP provides capability, not just knowledge
- [ ] Created infrastructure MCP strategy document
- [ ] Identified 2-3 MCP servers that would improve your workflows
- [ ] Considered security implications for each MCP integration

### ✨ The "After" — State-Aware Infrastructure

**Before MCP** (context-blind suggestions):
```
You: "How should I configure connection pooling?"
Copilot: "Here's a generic pool configuration..."
# Guesses about your database, doesn't check current settings
```

**After MCP** (state-aware guidance):
```
You: "How should I configure connection pooling?"
Copilot: 
"I checked your current database:
- Current connections: 15 active, 85 available
- No pooling currently configured
- Database supports 100 max connections

Recommendation: Pool size of 20 with 5 overflow..."
# Actual data informs the suggestion
```

**Your transformation moment:**
> *"This changes everything about infrastructure work. Before, Copilot was guessing about our system. Now it can look. Elena's database queries today, my container checks tomorrow—we're building an AI assistant that actually understands our infrastructure state, not just our infrastructure patterns."*

---

## 🔗 Connections to Your Work

### Skills You're Building

- **MCP Strategy Design**: Planning which external systems to connect
- **State-Aware Development**: Moving from pattern-based to context-based AI assistance  
- **Security-First Integration**: Connecting systems safely

### How This Helps Your DevOps Work

| Traditional Approach | MCP-Enhanced Approach |
|---------------------|----------------------|
| Suggest changes, hope they fit | Query state, suggest informed changes |
| Generic best practices | Context-specific recommendations |
| Post-hoc validation | Pre-change verification |
| Manual status checks | Automatic state awareness |

### Infrastructure MCP Opportunities

**Today (SQLite):**
- Database schema validation
- Data integrity checks
- Migration status verification

**Next Steps (Docker):**
- Container health before deployments
- Image version auditing
- Resource usage analysis

**Future (GitHub Actions, K8s):**
- CI/CD failure pattern analysis
- Deployment rollback intelligence
- Cluster state awareness

---

## 💭 Your Transformation Arc

**Before this module (your concerns):**
- 😰 *"Copilot suggests infrastructure changes without knowing current state"*
- 😰 *"How can I trust AI suggestions for production systems?"*
- 😰 *"Generic patterns don't account for our specific environment"*

**After this module (your insights):**
- ✅ Understood that MCP provides capability (querying) not just knowledge (patterns)
- ✅ Designed an infrastructure MCP strategy for FanHub
- ✅ Saw the pattern: Instructions + MCP = Smart Infrastructure Assistance
- ✅ Identified security boundaries for infrastructure MCP connections

**Key insight:**
> *"Module 04 taught Copilot our patterns. MCP teaches it our REALITY. When you combine encoded expertise with real-time state awareness, you get an AI assistant that doesn't just know best practices—it knows YOUR system. That's the difference between a coding assistant and an infrastructure partner."*

---

## 🚀 Quick Start Guide

**If you're short on time (10 minutes):**
1. Follow Elena's Exercise 6.1 to see MCP in action
2. Note the pattern: Copilot queried the database automatically
3. Draft a one-page MCP strategy for your infrastructure needs

**If you have full time (20 minutes):**
1. Complete Elena's Exercise 6.1 with her
2. Watch David's Exercise 6.2 (architecture validation)
3. Design your full Infrastructure MCP Strategy
4. Identify your first infrastructure MCP server to implement

---

## 📊 Your Success Metrics

| Metric | Before MCP | After MCP Strategy |
|--------|------------|-------------------|
| **Context for infrastructure suggestions** | None (patterns only) | Full state awareness |
| **Time to validate system state** | 5-10 min (manual checks) | Instant (MCP query) |
| **Confidence in AI suggestions** | Low (generic) | High (state-aware) |
| **Infrastructure change safety** | Trust but verify manually | Verify automatically |

---

## 📚 Official Docs

- [VS Code Docs: MCP Servers](https://code.visualstudio.com/docs/copilot/chat/mcp-servers)
- [MCP Specification](https://modelcontextprotocol.io/)
- [Available MCP Servers](https://github.com/modelcontextprotocol/servers)

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for the full MCP story
- [Elena's path](elena.md) to see database querying in action
- [David's path](david.md) to see architecture validation

### Next Module
Your next appearance: **[Module 7: Custom Agents](../../07-custom-agents/personas/marcus.md)** — where you use Agent Mode to implement a complete health check endpoint, combining your infrastructure instructions with MCP state awareness
