# Marcus's Journey: Module 1 - Repository Instructions

> **Your role**: DevOps Developer documenting the development workflow  
> **Time**: 25 minutes (focused) or 90 minutes (with full team collaboration)  
> **Transformation**: From "tribal knowledge holder" to "self-service enabler"

---

## 📖 Your Story in This Module

You just spent 45 minutes helping Priya get her development environment running. It's the same 45 minutes you've spent with every new hire: explaining Docker Compose, walking through environment variables, troubleshooting the "it works on my machine" issues.

*"There has to be a better way,"* you think. David is documenting the architecture. Sarah is documenting the coding standards. But nobody's documenting how to actually **run this thing**.

Today, you'll add the missing piece: developer workflow documentation. When someone asks Copilot *"How do I run this project?"*—they'll get the right answer immediately, not a vague guess followed by a Slack message to you.

---

## 🎯 Your Exercises

### Exercise 1.2c: Developer Workflow Documentation ⭐ *You lead this one*

**Your role**: Document development environment and build processes  
**Time**: 25 minutes  
**[View full exercise →](../EXERCISES.md#exercise-12c-developer-workflow-documentation--marcus-stops-answering-the-same-questions)**

**What you'll create:**
- Developer workflow section in `copilot-instructions.md` (or separate `DEVELOPMENT.md`)
- Docker Compose patterns, npm scripts, environment variables
- Common issues and their solutions

**Your "before" pain:**

Every new team member asks the same questions:
- *"How do I run this locally?"*
- *"What's the difference between `npm start` and `npm run dev`?"*
- *"Why isn't Docker Compose connecting to the database?"*
- *"What environment variables do I need?"*

You answer these questions 3-4 times per month. Each conversation takes 30-45 minutes. Meanwhile, Priya asks Copilot *"How do I run this project?"* and gets a generic answer that doesn't match your actual setup.

**Time spent on onboarding questions**: 2-3 hours/month  
**Time to developer productivity**: 45+ minutes per new person  
**Copilot helpfulness for setup**: 20% (generic guesses)

**Your "after" win:**

With developer workflow documented:
- Copilot knows your actual npm scripts and their purposes
- New devs get accurate answers about Docker Compose setup
- Environment variable patterns are explicit
- Common issues have documented solutions

**Time spent on onboarding questions**: 15 minutes/month (edge cases only)  
**Time to developer productivity**: 10 minutes per new person  
**Copilot helpfulness for setup**: 90% (accurate, project-specific)

**Your transformation moment:**
> *"I used to be the human FAQ for 'how do I run this project.' Now Copilot knows our Docker setup, our npm scripts, our environment patterns. Priya asked it how to run the backend and got the exact right answer. I'm not the bottleneck anymore—I'm the one who made the bottleneck disappear."*

---

### Exercise 1.1: Document the Architecture 🤝 *You benefit from David's work*

**Your role**: Observer and beneficiary  
**Lead**: David  
**Time**: Observe  
**[View full exercise →](../EXERCISES.md#exercise-11-document-the-architecture--david-maps-the-territory)**

**Why this matters to you:**

David's architecture documentation helps you too. When you're debugging a deployment issue, you need to understand how the pieces fit together. When Copilot knows the architecture, it can give you better infrastructure suggestions.

**Your observation:**
David creates ARCHITECTURE.md that documents the tech stack, project structure, and data flow. This is the foundation that makes your developer workflow documentation even more valuable—together, they give a complete picture.

---

### Exercise 1.2: Create Team Standards 🤝 *You benefit from Sarah's work*

**Your role**: Observer and contributor  
**Lead**: Sarah  
**Time**: Observe + 5 min contribution  
**[View full exercise →](../EXERCISES.md#exercise-12-create-team-standards--sarah-builds-the-playbook)**

**Why this matters to you:**

Sarah's coding standards apply to the infrastructure code too. When she documents async/await patterns and error handling, those patterns should match what you use in build scripts and deployment configs.

**Your contribution:**
When Sarah creates `copilot-instructions.md`, suggest adding a "Development Workflow" section—or offer to create it as a separate exercise (1.2c).

---

## 🔗 Connections to Your Work

### Skills You're Building

- **Documentation as automation**: Your dev workflow docs become Copilot's knowledge
- **Self-service enablement**: New devs are productive without waiting for you
- **Infrastructure clarity**: Build processes are explicit, not tribal knowledge

### How This Helps Your DevOps Work

As the DevOps developer, you own:
- Local development experience
- Build and test automation
- Deployment workflows
- Environment configuration

**Before documentation**: You're the human FAQ. Every question comes to you.

**After documentation**: Copilot handles the common questions. You focus on the interesting problems—optimizing builds, improving deployment reliability, reducing infrastructure costs.

### Artifacts You Create

- Developer workflow section in `copilot-instructions.md` (or `DEVELOPMENT.md`)
- Includes: npm scripts, Docker Compose patterns, environment variables, common issues
- **Used immediately**: New team members get accurate setup guidance
- **Referenced in Module 4**: Foundation for your infrastructure.instructions.md

---

## 💭 Your Transformation Arc

**Before this module (your frustrations):**
- 😰 *"I answer the same setup questions every month"*
- 😰 *"New devs can't get started without my help"*
- 😰 *"Copilot gives generic answers about running the project"*
- 😰 *"I'm the bottleneck for developer productivity"*

**After this module (your achievements):**
- ✅ Created developer workflow documentation that Copilot uses
- ✅ New team members are productive in 10 minutes, not 45
- ✅ Onboarding questions dropped from hours/month to minutes
- ✅ Freed up time for actual DevOps work, not FAQ duty

**Key insight:**
> *"David documents architecture. Sarah documents code patterns. I document how to actually run the thing. Together, we've given Copilot—and every new developer—a complete onboarding experience. My tribal knowledge is now team knowledge."*

---

## 🚀 Quick Start Guide

**If you're short on time (25 minutes):**
1. Complete Exercise 1.2c (Developer Workflow Documentation)
2. Test by asking Copilot *"How do I run this project locally?"*
3. Verify the answer matches your actual setup

**If you have full time (90 minutes):**
1. Observe David's Exercise 1.1 (Architecture)
2. Contribute to Sarah's Exercise 1.2 (Standards)
3. Lead Exercise 1.2c (Developer Workflow) ⭐
4. Observe Exercise 1.3 (Standards Validation)
5. Participate in Exercise 1.4 (Debug View)

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Time to dev productivity (new hire)** | 45+ minutes | 10 minutes |
| **Onboarding questions per month** | 6-8 (2-3 hours) | 1-2 (15 minutes) |
| **Copilot accuracy for setup questions** | 20% (generic) | 90% (project-specific) |
| **Your time spent on FAQ duty** | 3+ hours/month | 15 minutes/month |
| **Dev workflow documentation** | None (tribal) | Complete and accurate |

**Time saved per month**: 2.5+ hours  
**Time saved per year**: 30+ hours  
**Team independence**: High (self-service)

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for the full team story
- [David's path](david.md) to see architecture documentation
- [Sarah's path](sarah.md) to see coding standards

### Next Module
Your next appearance: **[Module 2: Agent Plan Mode](../../02-agent-plan-mode/personas/marcus.md)**

In Module 2, you'll use plan mode to systematically investigate test failures—applying your DevOps mindset to application code debugging. Your developer workflow documentation will help Copilot understand the build context when diagnosing issues.

**Preview**:
> *"I used to feel like tests were a black box—they pass or fail, and I don't know why. Plan mode helped me understand what each test validates and systematically investigate failures. I'm not just running pipelines anymore—I understand what I'm testing."*
