# David's Journey: Module 4 - Custom Instructions

> **Your role**: Staff Engineer, Architectural Guardian  
> **Time**: 25 minutes (focused on Exercise 4.2)  
> **Transformation**: From "My expertise is manual" to "My expertise is automated"

---

## 📖 Your Story in This Module

You've spent 20 years building systems. You know REST conventions so deeply you can spot violations in your sleep. 404 for not found. Consistent response formats. Proper validation. Input sanitization. Error handling that actually helps debug issues.

But here's the problem: You give this feedback in every code review. Junior developers make the same mistakes. The contractor's code needed dozens of comments. Even experienced developers forget edge cases when they're moving fast.

*"What if my expertise could activate automatically?"*

That's what custom instructions enable. You encode your architectural knowledge once—into `.github/instructions/api-routes.instructions.md`—and every API file gets your 20 years of experience without you reviewing it manually.

This isn't about being replaced. It's about being **scaled**.

---

## 🎯 Your Exercise

### Exercise 4.2: API Route Instructions ⭐ *You lead this one*

**Your role**: Encode your REST API expertise into custom instructions  
**Time**: 25 minutes  
**[View full exercise →](../EXERCISES.md#exercise-42-api-route-instructions--david-encodes-20-years-of-rest-expertise)**

**What you'll create:**
- `.github/instructions/api-routes.instructions.md` with your REST conventions
- `applyTo` pattern targeting `**/routes/**` files
- Quote of the Day endpoint that demonstrates automatic expertise

**Your "before" pain:**
You review API routes and give the same feedback every single time:
- "This should return 404, not 200 with empty object"
- "Response format is inconsistent with other endpoints"
- "Missing input validation on the ID parameter"
- "Error messages don't help debug the issue"

**Time spent per code review**: 15-20 minutes catching preventable issues  
**Frustration level**: High—you've explained this dozens of times

**Your "after" win:**
You create instructions once. Rafael suggests a "Quote of the Day" feature. You build it with Copilot. The generated endpoint:
- Returns proper HTTP status codes (404 for not found)
- Uses consistent response format (`{ success, data }`)
- Includes input validation
- Has clear error messages
- Follows every REST convention automatically

**Time saved per endpoint**: 15 minutes of review feedback  
**Code review rounds**: From 2-3 rounds to 1  
**Consistency achieved**: 100%—every route follows your standards

**Your transformation moment:**
> *"I've reviewed thousands of API routes. I used to type the same feedback in every code review. Now that knowledge is encoded once, applied everywhere. The Quote of the Day endpoint came out perfect on the first try—and Character Detail v2's endpoints will too. My 20 years of experience isn't being replaced—it's being scaled."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Expertise automation**: Convert manual review knowledge into automated guidance
- **Architectural consistency**: Ensure patterns are followed without manual enforcement
- **Scale through documentation**: Your standards apply to every file automatically

### How This Helps Your Real Work
You've always known that good architecture requires consistency. The problem is enforcement—you can't review every line of code, and standards docs get ignored.

Custom instructions solve this: You document your architectural patterns once, using `applyTo` to target specific file types, and Copilot applies them automatically. Your REST conventions activate for every API route. Your security patterns activate for every Dockerfile. Your data flow rules activate for every service.

This is how senior architects scale their influence without becoming bottlenecks. Your expertise becomes infrastructure.

### Artifacts You Create
- `.github/instructions/api-routes.instructions.md` - Your REST expertise, encoded
- `routes/quotes.js` - Quote of the Day endpoint showing automatic pattern application

**How these compound**:
- Module 7: Character Detail v2 endpoints will use these API conventions automatically
- Module 10: When running agents in parallel, all routes maintain consistency
- Module 11: These patterns become organizational standards

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 "If AI generates code, what value do my 20 years provide?"
- 😰 "Junior developers with AI will make me obsolete"
- 😰 "Code review is the only way I catch architectural issues"
- 😰 "My expertise can't be automated"

**After this module (your achievements):**
- ✅ Encoded 20 years of REST expertise into reusable instructions
- ✅ Generated perfect API endpoint on first try with no review needed
- ✅ Created patterns that scale your knowledge across every route file
- ✅ Reduced code review time by 15 minutes per endpoint

**Key insight:**
> *"AI doesn't replace architectural expertise—it amplifies it. My deep knowledge of REST conventions, edge cases, and error patterns is MORE valuable now because I can encode it once and apply it everywhere. I'm not being automated away—I'm being multiplied."*

---

## 🚀 Quick Start Guide

**If you're short on time (15 minutes):**
1. Read Exercise 4.2 introduction (2 min)
2. Create `.github/instructions/api-routes.instructions.md` with core REST patterns (8 min)
3. Build Quote of the Day endpoint and verify conventions are followed (5 min)

**If you have full time (25 minutes):**
1. Review existing routes to identify inconsistencies (5 min)
2. Use plan mode to design comprehensive API instructions (5 min)
3. Create `.github/instructions/api-routes.instructions.md` with full patterns (10 min)
4. Build Quote of the Day endpoint and verify all standards (5 min)

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Code review time per endpoint** | 15-20 min | 2-3 min |
| **Review rounds needed** | 2-3 rounds | 1 round |
| **Convention violations per PR** | 3-5 issues | 0 issues |
| **Time explaining same patterns** | 30 min/week | 0 min/week |
| **Architectural consistency** | 70% (varies by dev) | 100% (enforced automatically) |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) to see how Elena, Sarah, and Marcus create specialized instructions
- [Elena's path](elena.md) to see testing expertise automation
- [Sarah's path](sarah.md) to see React component standards

### Next Module
Your next appearance: **[Module 7: Custom Agents](../../07-custom-agents/personas/david.md)** — where you create an Architecture Reviewer agent that validates all code against your documented patterns
