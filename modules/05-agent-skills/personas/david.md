# David's Journey: Module 5 - Agent Skills

> **Your role**: Architectural Guardian, System Designer  
> **Time**: 25 minutes (focused on Exercise 5.2b)  
> **Transformation**: From "documenting architecture" to "encoding architectural intelligence"

---

## 📖 Your Story in This Module

You wrote ARCHITECTURE.md in Module 01. It documents FanHub's layered architecture, data flow rules, and relationship constraints. But here's the problem: Developers read it once, then forget it when building features.

The result? Architectural violations you catch in code review:
- Frontend components importing from database layer
- API routes mixing business logic with data access
- Circular dependencies between services
- Incorrect relationship assumptions ("Can characters have quotes from other shows?")

Your architectural review prompt from Module 03 catches violations after code is written. But what if Copilot understood the architecture before generating code?

That's what architectural skills enable: You encode system boundaries, layer responsibilities, and data flow patterns as domain knowledge that activates whenever someone discusses features or system design.

---

## 🎯 Your Exercise

### Exercise 5.2b: Architectural Data Flow Skill ⭐ *You lead this one*

**Your role**: Encode FanHub's architectural patterns as domain knowledge  
**Time**: 25 minutes  
**[View full exercise →](../EXERCISES.md#exercise-52b-architectural-data-flow-skill--david-documents-system-boundaries)**

**What you'll create:**
- `skills/architectural-patterns.md` with layer boundaries and data flow rules
- Activation keywords: "architecture", "data flow", "layer", "service", "API"
- Feature implementation patterns for common scenarios

**Your "before" pain:**
Developers (and AI) generate code that violates architecture:
- Frontend → Database (skips service layer)
- Business logic mixed with data access
- Incorrect relationship assumptions
- Circular dependencies

**Violations per feature**: 3-5 architectural issues  
**Review time per PR**: 30 minutes explaining layering  
**Rework rounds**: 2-3 cycles to get it right

**Your "after" win:**
You create the architectural skill once. When developers ask to "add favorites feature," Copilot:
- Explains which layers need to be touched
- Generates database → service → API → frontend correctly
- Respects relationship constraints from the data model
- Provides layered code on first try

**Violations per feature**: 0-1 issues  
**Review time per PR**: 10 minutes (mostly approval)  
**Rework rounds**: 1 (minor tweaks only)

**Your transformation moment:**
> *"For 20 years, I've caught architectural violations in code review. The problem is developers don't see ARCHITECTURE.md when they're coding. Now my architectural knowledge is encoded as a skill that activates when they mention features. Copilot explains the architecture as it generates code. My expertise isn't just available in review—it's available at creation time."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Architectural encoding**: Turn static documentation into active guidance
- **Proactive architecture**: Prevent violations before code is written
- **Systematic thinking**: Codify decision frameworks as searchable knowledge

### How This Helps Your Real Work
You've always known good architecture requires understanding system boundaries. The problem is enforcement: ARCHITECTURE.md is a static document that gets read once and forgotten.

Agent Skills solve this: Your architectural knowledge activates automatically when developers discuss features. They learn layer responsibilities as they build. They understand data flow before they code. Your architectural review happens at creation time, not after implementation.

This is how staff engineers scale architectural knowledge: Turn documentation into active intelligence that guides development in real-time.

### Artifacts You Create
- `skills/architectural-patterns.md` - Your architectural expertise, encoded

**How these compound**:
- Module 7: Custom agent uses this skill when generating Character Detail v2
- Module 10: Parallel workflows all maintain architectural consistency
- Module 11: Organizational architectural standards built on this pattern

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 "Developers don't read ARCHITECTURE.md"
- 😰 "I catch the same violations in every PR"
- 😰 "Architectural knowledge lives only in my head"
- 😰 "If AI generates code, who ensures architectural consistency?"

**After this module (your achievements):**
- ✅ Encoded FanHub architecture as discoverable domain knowledge
- ✅ Enabled Copilot to explain layering during code generation
- ✅ Reduced architectural violations from 3-5 per feature to 0-1
- ✅ Cut review time from 30 minutes to 10 minutes per PR

**Key insight:**
> *"Static documentation gets ignored. Active intelligence gets used. By encoding my architectural knowledge as a skill, I've made it impossible to ignore system boundaries—they're explained automatically whenever someone builds a feature. My 20 years of architectural experience is now embedded in the development workflow itself."*

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Architectural violations per feature** | 3-5 | 0-1 |
| **Review time per PR** | 30 min | 10 min |
| **Rework rounds** | 2-3 | 1 |
| **Time explaining layering** | 2-3 hours/week | 15 min/week |
| **Developer architectural understanding** | Low (learn via review) | High (learn during creation) |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) to see how Elena, Marcus, and Rafael create domain skills
- [Elena's path](elena.md) to see testing domain expertise
- [Marcus's path](marcus.md) to see Docker debugging skills

### Next Module
Your next appearance: **[Module 6: MCP Servers](../../06-mcp-servers/personas/david.md)** — where you validate that ARCHITECTURE.md matches the actual database schema
