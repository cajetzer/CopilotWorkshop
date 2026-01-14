# Marcus's Path: Custom Instructions

## 🎯 Your Focus: Securing Infrastructure for Character Detail v2

> 🧵 **The Golden Thread**: In Module 07, the team will use agent mode to build and deploy Character Detail v2. You're preparing now—creating infrastructure instructions that ensure generated Dockerfiles, workflows, and deployment configs are secure from the start. This module transforms your 5 years of DevOps expertise into **automatic security standards**.

Marcus, the contractor's Dockerfile is a security incident waiting to happen—runs as root, uses `latest` tags, no health checks. Instead of fixing it manually and hoping no one breaks it again, you'll create instructions that enforce your patterns automatically.

**Your exercises**: 4.3 (Infrastructure Instructions)  
**Time**: ~25 minutes  
**Theme**: From fixing security debt to security by default

---

## Your Journey in This Module

```
Marcus's Arc:
┌─────────────────────────────────────────────────────────────────┐
│  "The contractor's Dockerfile is a ticking time bomb"          │
│                         ↓                                       │
│  Creates infrastructure.instructions.md with security patterns │
│                         ↓                                       │
│  "Every infrastructure file is secure by default—forever"      │
└─────────────────────────────────────────────────────────────────┘
```

---

## Exercise 4.3: Infrastructure Instructions — "Preparing to Ship Character Detail v2"

> 🧵 **The Golden Thread Continues**: Character Detail v2 will need to deploy. The existing Dockerfile hasn't been updated since the contractor left. Your instructions will ensure all infrastructure is secure from the start.

### 📖 The Story

**Marcus** (DevOps Developer, 5 years) is thinking ahead to deploying Character Detail v2. He opens the project's Dockerfile and groans.

*"This Dockerfile is from the contractor days,"* you explain. *"It runs as root, uses the `latest` tag, no health check, no multi-stage build. It'll work, but it's a security incident waiting to happen."*

You could fix this manually—you've done it hundreds of times. But what about when the agent generates infrastructure changes in Module 07? What about the next contractor? What about new team members who don't know better?

*"I want Copilot to enforce our infra patterns automatically,"* you decide.

### ❌ The "Before" — Insecure Infrastructure

The current `fanhub/backend/Dockerfile`:

```dockerfile
# Contractor's original Dockerfile - security issues
FROM node:latest

WORKDIR /app
COPY . .
RUN npm install
EXPOSE 3000
CMD ["npm", "start"]
```

**The problems you spot immediately:**
- Uses `latest` tag (unpredictable, no version pinning)
- Runs as root user (container compromise = host compromise)
- No multi-stage build (image bloat, dev deps in production)
- No health check (orchestrator can't monitor)
- Copies everything including dev files
- Poor layer ordering (full rebuild on any change)

**Your past experience**: You've seen exactly these issues cause:
- Security incidents from root containers
- Deployment failures from unpinned versions
- 10x larger images than necessary
- Kubernetes pods marked unhealthy

### 🎯 Objective

Create specialized instructions for infrastructure files, then use them to fix the Dockerfile—and ensure all future infrastructure is secure by default.

### 📋 Steps

1. **Create the instructions directory** (if not already done)
   
   ```bash
   mkdir -p .github/instructions
   ```

2. **Create infrastructure instructions**
   
   Create: `.github/instructions/infrastructure.instructions.md`
   
   Your 5 years of DevOps expertise encoded:
   
   ````markdown
   ---
   applyTo:
     - "Dockerfile*"
     - "docker-compose*.yml"
     - ".github/workflows/**"
     - "**/terraform/**"
     - "**/k8s/**"
     - "**/*.tf"
   ---
   
   # Infrastructure & DevOps Standards for FanHub
   
   ## Dockerfile Best Practices
   
   ### Security (Required)
   
   ```dockerfile
   # ✅ Use specific version tags, not 'latest'
   FROM node:20.10-alpine
   
   # ✅ Run as non-root user
   RUN addgroup -S appgroup && adduser -S appuser -G appgroup
   USER appuser
   
   # ✅ Use multi-stage builds
   FROM node:20.10-alpine AS builder
   # ... build steps
   FROM node:20.10-alpine AS runtime
   # ... minimal runtime
   ```
   
   ### Health Checks (Required for FanHub)
   
   ```dockerfile
   HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
     CMD curl -f http://localhost:3000/health || exit 1
   ```
   
   ## GitHub Actions Security
   
   ```yaml
   # ✅ Pin action versions to SHA
   - uses: actions/checkout@b4ffde65f46336ab88eb53be808477a3936bae11
   
   # ✅ Set timeouts
   timeout-minutes: 15
   
   # ✅ Minimize permissions
   permissions:
     contents: read
   ```
   
   ## Security Checklist
   
   - [ ] Containers run as non-root
   - [ ] Images use specific versions (no `latest`)
   - [ ] Health checks are defined
   - [ ] Secrets use proper management
   ````

3. **Fix the Dockerfile**
   
   With instructions active, ask Copilot:
   
   ```
   Rewrite fanhub/backend/Dockerfile to follow our security and optimization standards.
   ```
   
   Observe: Generated Dockerfile follows all your security patterns.

4. **Verify the transformation**
   
   Check that the generated Dockerfile:
   - ✅ Uses specific version (e.g., `node:20.10-alpine`)
   - ✅ Runs as non-root user
   - ✅ Uses multi-stage build
   - ✅ Includes health check
   - ✅ Orders layers for cache efficiency

### ✅ Success Criteria

- [ ] Created `.github/instructions/infrastructure.instructions.md`
- [ ] `applyTo` includes Dockerfile, workflows, terraform patterns
- [ ] Updated Dockerfile runs as non-root user
- [ ] Dockerfile uses specific version tags
- [ ] Health check is included
- [ ] Multi-stage build implemented

> 📂 **Compare Your Work**: See [`examples/completed-config/.github/instructions/infrastructure.instructions.md`](../../../examples/completed-config/.github/instructions/infrastructure.instructions.md) for a reference.

### ✨ The "After" — The Transformation

**Before**: Contractor's Dockerfile with 6 security issues  
**After**: Production-ready infrastructure that follows your 5 years of DevOps expertise

| Metric | Before | After |
|--------|--------|-------|
| **Security violations** | 6 (root, latest, no health, etc.) | 0 |
| **Image size** | ~1.2GB (full node + dev deps) | ~150MB (alpine + prod only) |
| **Time to rebuild** | Full rebuild on any change | Layer-cached, seconds |
| **Security review time** | 30+ min (manual checklist) | 2 min (automatic compliance) |
| **Future infrastructure** | Same mistakes repeated | Secure by default |

**The Golden Thread payoff**: When Character Detail v2 deploys in Module 07, it will have proper security from the start—and every future feature gets the same treatment.

### 📚 Official Docs

- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [Docker Security Best Practices](https://docs.docker.com/develop/security-best-practices/)
- [GitHub Actions Security Hardening](https://docs.github.com/en/actions/security-guides/security-hardening-for-github-actions)

### 💭 Your Transformation Moment

*"The contractor's Dockerfile was a ticking time bomb. I could have fixed it manually—I've done it hundreds of times. But then someone would break it again. Now my security patterns are encoded in instructions. The agent will follow them in Module 07. New team members will follow them automatically. I'm not the security bottleneck anymore—I'm the security multiplier."*

### 🚀 Challenge Extension

Create a `docker-compose.yml` for local development that includes the backend, frontend, and a PostgreSQL database. Does it follow your infrastructure instructions?

---

## 🔗 Connections to Your Work

### Skills You're Building

- **Security as Code**: Your security expertise encoded in instructions that apply automatically
- **Pattern Enforcement**: Standards that can't be ignored because they're embedded in the AI workflow
- **DevOps Leverage**: Your knowledge scales to every developer, every project

### How This Helps Your Real Work

As a DevOps developer:

1. **No More Security Bottleneck**: You don't need to review every Dockerfile manually—Copilot enforces your patterns
2. **Consistent Infrastructure**: Whether it's a contractor, new hire, or senior dev, everyone gets the same secure patterns
3. **Proactive Security**: Problems prevented before they're created, not caught in review

### Artifacts You Create

- `.github/instructions/infrastructure.instructions.md` — Your DevOps expertise encoded
- Secure Dockerfile template — Production-ready from the start
- Security patterns that compound with Elena's testing and David's API standards

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 *"Contractors leave security debt I have to clean up"*
- 😰 *"I'm the bottleneck for every infrastructure review"*
- 😰 *"Security standards exist in my head, not in code"*
- 😰 *"New team members repeat the same mistakes"*

**After this module (your achievements):**
- ✅ Created infrastructure instructions that enforce security automatically
- ✅ Fixed the contractor's insecure Dockerfile using your encoded expertise
- ✅ Character Detail v2 will deploy secure from the start
- ✅ Your DevOps knowledge scales without your constant involvement

**Key insight:**
> *"I've been the DevOps expert for 5 years—the person everyone asks about Docker security, workflow optimization, deployment patterns. Now I've encoded that expertise. When someone asks Copilot to generate a Dockerfile, they get MY security patterns. Not because I reviewed it, but because I taught the AI. That's real leverage."*

---

## 🚀 Quick Start Guide

**If you're short on time (15 minutes):**
1. Create the infrastructure instructions file
2. Test by asking Copilot to fix the Dockerfile
3. Verify the security improvements

**If you have full time (25 minutes):**
1. Create infrastructure instructions with full patterns
2. Fix the Dockerfile
3. Generate a GitHub Actions workflow to verify compliance
4. Try the challenge extension (docker-compose)

---

## 📊 Your Success Metrics

| Metric | Before | After |
|--------|--------|-------|
| **Dockerfile security issues** | 6 per file | 0 (prevented) |
| **Security review time** | 30 min manual | 2 min automatic |
| **Infrastructure drift** | Common (standards forgotten) | Rare (AI enforces) |
| **Team dependency on you** | High (review everything) | Low (self-service) |
| **Time to secure new service** | 1-2 hours | 5 minutes |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for the full team story
- [Elena's path](elena.md) to see testing instructions
- [David's path](david.md) to see API route patterns
- [Sarah's path](sarah.md) to see React component standards

### Next Module
Your next appearance: **[Module 5: Agent Skills](../../05-agent-skills/personas/marcus.md)** — where you encode Docker troubleshooting, dependency resolution, and build pipeline analysis as reusable skills
