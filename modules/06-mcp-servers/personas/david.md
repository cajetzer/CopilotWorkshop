# David's Journey: Module 6 - MCP Servers

> **Your role**: Architectural Guardian, Documentation Maintainer  
> **Time**: 15 minutes (focused on Exercise 6.2)  
> **Transformation**: From "trusting documentation" to "verifying against reality"

---

## 📖 Your Story in This Module

You wrote ARCHITECTURE.md. It documents the character schema with a `status` field having three valid values. But when you actually check the database? The column is named `character_status`, there are four values in use, and there are undocumented fields.

This is architectural drift: Documentation describes the intended system, but reality has evolved. Contractors merge PRs, developers add quick fixes, and suddenly your architecture docs lie.

With MCP's SQLite server, you can query the actual database schema and compare it to documentation—discovering where they diverge in minutes instead of months.

---

## 🎯 Your Exercise

### Exercise 6.2: Validate Architecture Against Reality ⭐ *You lead this one*

**Your role**: Use MCP to audit database schema against ARCHITECTURE.md  
**Time**: 15 minutes  
**[View full exercise →](../EXERCISES.md#exercise-62-validate-architecture-against-reality--david-catches-drift)**

**What you'll discover:**
- Column name mismatches (`status` vs `character_status`)
- Undocumented fields (`status_note`, `created_at`)
- Fourth status value not in docs (`retired`)
- Schema drift between documentation and reality

**Your "before" pain:**
Documentation and reality drift apart. You discover mismatches when:
- Bugs appear in production
- New developers code against wrong assumptions
- Code reviews catch incorrect field references

**Time to discover drift**: Weeks or months (via bugs)  
**Developer confusion**: High—docs don't match database  
**Bug rate**: Higher due to incorrect assumptions

**Your "after" win:**
You query the actual schema via MCP in 2 minutes. Copilot compares it to ARCHITECTURE.md and reports:
- `status` column is actually `character_status`
- Three undocumented fields in use
- Four status values, not three
- Foreign key relationships all valid

**Time to discover drift**: 2 minutes (on-demand verification)  
**Documentation accuracy**: Verified, not assumed  
**Architectural confidence**: High—know reality matches docs

**Your transformation moment:**
> *"For 20 years, I've written architecture documents that drift from reality. Now I can verify architecture against the running system in 2 minutes. MCP turned Copilot from a code generator into an architectural auditor. It's not just generating code—it's validating that the code world matches the documented world."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Architectural auditing**: Verify documentation against running systems
- **Schema validation**: Catch drift before it causes bugs
- **Reality-based architecture**: Trust but verify all assumptions

### How This Helps Your Real Work
Static documentation lies. Not intentionally—it just drifts as systems evolve. The solution isn't better documentation—it's **verifiable** documentation.

MCP gives Copilot the ability to query your actual systems. You can validate that ARCHITECTURE.md matches the deployed database. You can catch drift before developers code against wrong assumptions. You can audit referential integrity without manual SQL queries.

This is how senior architects maintain accuracy at scale: Turn documentation from static text into verifiable assertions that can be audited automatically.

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Time to discover schema drift** | Weeks (via bugs) | 2 minutes (on-demand) |
| **Documentation accuracy** | Unknown | Verified |
| **Bugs from schema assumptions** | 2-3 per quarter | 0 |
| **Developer onboarding confidence** | Low (docs might be wrong) | High (docs verified) |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) to see Elena's MCP workflow
- [Elena's path](elena.md) to see data validation with MCP

### Next Module
Your next appearance: **[Module 7: Custom Agents](../../07-custom-agents/personas/david.md)** — where you create an Architecture Reviewer agent that uses MCP to validate code against actual schemas
