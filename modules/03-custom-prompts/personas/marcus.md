# Marcus's Journey: Module 3 - Custom Prompts

> **Your role**: DevOps Developer learning application code patterns  
> **Time**: 30-45 minutes  
> **Transformation**: From infrastructure-only to understanding business requirements

---

## 📖 Your Story in This Module

You're comfortable with infrastructure—Docker, Kubernetes, CI/CD pipelines. But when it comes to application code, especially understanding business requirements and translating them into APIs, you feel slower than you'd like.

Today, you'll see how Rafael's requirement prompts help you understand the "why" behind features, not just the "what." And you'll participate in building a real feature where you implement the backend, guided by clear specifications.

---

## 🎯 Your Exercises

### Exercise 2.2: Spec-to-Code Prompts 🤝 *Supporting role*

**Your role**: Learn how requirements translate to technical plans  
**Lead**: Rafael  
**Time**: 10 minutes (observation within 30min exercise)  
**[View full exercise →](../EXERCISES.md#exercise-22-spec-to-code-prompts--rafael-bridges-the-gap)**

**What you learn:**
- How user stories become technical implementation plans
- Why Rafael's prompts include file paths and API contracts
- How business requirements map to backend endpoints

**Why this matters for you:**
You've built infrastructure without always understanding the business context. Now you'll see how product requirements flow into the technical work you do.

---

### Exercise 2.3: Build the Episode Guide ⭐ *You implement the backend*

**Your role**: Build the API routes based on Rafael's implementation plan  
**Partners**: Rafael (specs), Sarah (frontend), Elena (tests)  
**Time**: 20 minutes (within 45min exercise)  
**[View full exercise →](../EXERCISES.md#exercise-23-build-the-episode-guide--the-team-collaborates)**

**What you build:**
- Episodes route with season filtering
- Include related quotes in the response
- Follow API patterns from copilot-instructions.md

**Your "before" challenge:**
Someone says "build an episodes endpoint" and you ask 20 clarifying questions:
- What data should it return?
- How should filtering work?
- What's the response format?
- What about error cases?

**Your "after" experience:**
Rafael's implementation plan gives you everything:
- Exact endpoint path: `GET /api/episodes`
- Query parameters: `?season_id={id}`
- Response structure with example
- File to modify: `src/routes/episodes.js`
- Error handling requirements

You just build it. No guessing.

**Your transformation moment:**
> *"I understood the business requirement because Rafael's prompt explained it. I'm not just coding—I'm solving problems."*

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Requirements understanding**: How business needs become technical specs
- **API design patterns**: What makes a good endpoint structure
- **Cross-functional collaboration**: Working with product and QA
- **Application layer thinking**: Moving beyond infrastructure

### How This Helps Your DevOps Work

As a DevOps developer, you've focused on infrastructure. But modern DevOps means understanding the full stack:
- **Better CI/CD**: Understanding what you're deploying makes pipelines better
- **Smarter monitoring**: Knowing the business logic helps you monitor what matters
- **Effective troubleshooting**: Understanding features helps you debug production issues
- **Career growth**: Full-stack skills make you more valuable

**Custom prompts bridge this gap:**
- Rafael's specs teach you product thinking
- Elena's test prompts show you application patterns
- Implementation plans connect business value to code

---

## 💭 Your Transformation Arc

**Before this module:**
- 🤔 Infrastructure is clear, application code is mysterious
- 🤔 Business requirements feel vague and confusing
- 🤔 You code what you're told without understanding why

**After this module:**
- ✅ You understand how requirements become implementation
- ✅ You can read a user story and design an endpoint
- ✅ You connect technical work to business value
- ✅ You're becoming a full-stack developer

**Key insight:**
> *"I thought application code was different from infrastructure code. But with clear specs, it's just another system to build. Rafael's prompts gave me the context I was missing."*

---

## 🚀 Quick Start Guide

**Focused path (30 minutes):**
1. Observe Exercise 2.2 (10 min) — See how specs work
2. Do Exercise 2.3 (20 min) — Build the backend
3. Notice how much easier it is with clear requirements

**Extended path (45 minutes):**
1. All exercises in order
2. Focus on understanding the business context
3. See how your infrastructure knowledge applies to application code

---

## 🎯 Impact on Your Role

### Before Understanding Application Patterns
- Build what you're told without knowing why
- Infrastructure is isolated from business logic
- Can't explain technical work in business terms

### After Learning Application Patterns
- Understand the features you're deploying
- Connect infrastructure decisions to business needs
- Speak both technical and product language

### Real-World Applications

**Incident response**: Understanding the feature helps you troubleshoot faster. "Oh, this endpoint filters episodes—the query parameter is probably wrong."

**Capacity planning**: Knowing how features work helps you predict resource needs. "The episode guide will be heavily used—let's add caching."

**Architecture discussions**: You can contribute to application design, not just infrastructure design.

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for the full story
- [Rafael's path](rafael.md) to see product thinking
- [Elena's path](elena.md) to see testing patterns

### Next Module
Your next appearance: **[Module 4: Custom Instructions](../../04-custom-instructions/personas/marcus.md)**

**What's next for you**: The contractor's Dockerfile is a security nightmare—runs as root, uses `latest` tags, no health checks. You'll encode your 5 years of DevOps security expertise into infrastructure instructions that apply automatically to all Dockerfiles, workflows, and deployment configs.

**Preview**:
> *"I could fix this Dockerfile manually—I've done it hundreds of times. But someone would break it again. Now my security patterns are encoded. The agent will follow them. New team members will follow them automatically. I'm not the security bottleneck anymore—I'm the security multiplier."*

---

## 📚 Resources for DevOps Developers

**Official Documentation:**
- [VS Code: Chat Participants](https://code.visualstudio.com/docs/copilot/copilot-chat#_chat-participants)
- [GitHub Docs: Copilot Chat](https://docs.github.com/en/copilot/using-github-copilot/copilot-chat)

**Apply to Your Real Work:**
- Use spec-to-implementation patterns for internal tools
- Apply API design patterns to service endpoints
- Connect your infrastructure work to business value

