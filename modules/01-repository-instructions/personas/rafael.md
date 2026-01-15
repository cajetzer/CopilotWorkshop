# Rafael's Journey: Module 1 - Repository Instructions

> **Your role**: Product Manager ensuring product context is documented for AI  
> **Time**: 30 minutes (focused) or 45 minutes (with team collaboration)  
> **Transformation**: From product knowledge trapped in your head to shared context that AI understands

---

## 📖 Your Story in This Module

You've been the product owner for FanHub for months. You know the domain inside and out: what a "show" means, how "characters" relate to "episodes," what makes a "quote" memorable, why users want "favorites."

But when you watch developers use Copilot, something frustrates you. They ask for help, and the AI generates generic code that doesn't understand your domain. It calls things "items" when they should be "episodes." It creates "users" when you need "fans." It builds features that technically work but miss the product intent.

**The problem isn't the developers. The problem is that your product knowledge isn't documented anywhere Copilot can read it.**

Today, you'll ensure the repository contains the domain context that makes AI suggestions product-aware.

---

## 🎯 Your Exercises

### Exercise 1.2: Add Product Context to Repository Instructions ⭐ *You lead this one*

**Your role**: Add domain terminology and product context to `.github/copilot-instructions.md`  
**Time**: 20 minutes  
**[View Exercise 1.2 in full →](../EXERCISES.md#exercise-12-create-team-standards--sarah-builds-the-playbook)**

**What you'll contribute:**
- Domain terminology (Show, Character, Episode, Quote, Fan, Watchlist)
- Business rules (how entities relate, what constraints exist)
- User personas (who uses FanHub and why)
- Feature context (why things are built the way they are)

**Your "before" pain:**

Developer asks Copilot for help:

```
@workspace Create an API endpoint to get a character's quotes
```

Copilot generates:

```javascript
// Generic, doesn't understand FanHub domain
app.get('/api/items/:itemId/data', (req, res) => {
  const item = db.query('SELECT * FROM items WHERE id = ?', [req.params.itemId]);
  const data = db.query('SELECT * FROM related WHERE item_id = ?', [item.id]);
  res.json({ item, data });
});
```

- ❌ Uses generic "items" and "data" instead of domain terms
- ❌ Doesn't understand character → quote relationship
- ❌ No product context about what quotes mean to fans

**Your "after" win:**

With product context documented:

```javascript
// Domain-aware, product-contextual
app.get('/api/characters/:characterId/quotes', (req, res) => {
  const character = db.query(
    'SELECT * FROM characters WHERE id = ?', 
    [req.params.characterId]
  );
  
  const quotes = db.query(
    `SELECT q.*, e.title as episode_title 
     FROM quotes q 
     JOIN episodes e ON q.episode_id = e.id 
     WHERE q.character_id = ?
     ORDER BY q.memorable_score DESC`,
    [character.id]
  );
  
  res.json({ 
    character: { id: character.id, name: character.name },
    quotes: quotes.map(q => ({
      text: q.quote_text,
      episode: q.episode_title,
      shareUrl: `/share/quote/${q.id}`  // Fans share memorable quotes
    }))
  });
});
```

**Metrics:**
- **"That's not what I meant" moments**: From 4-5 per sprint to 0-1
- **Domain terminology corrections in PR**: From 8-10 to 1-2
- **Time explaining product context to AI**: From 5 min per request to 0

**Your transformation moment:**
> *"Copilot finally speaks our language. It knows that 'quotes' aren't just text—they're shareable moments that fans connect with. That product context was stuck in my head. Now it's in the repo, helping everyone."*

---

### Exercise 1.1: Review Architecture for Product Context 🤝 *Team collaboration*

**Your role**: Ensure architecture doc includes product perspective  
**Partners**: David (architecture lead)  
**Time**: 10 minutes  
**[View full exercise →](../EXERCISES.md#exercise-11-document-the-architecture--david-maps-the-territory)**

**What you contribute:**

When David creates `ARCHITECTURE.md`, you add the product lens:

1. **Why does this architecture exist?** (Product goals it serves)
2. **Who are the users?** (Fan personas and their needs)
3. **What's the product vision?** (Where this is going)

**Suggested additions:**

```markdown
## Product Context

### Who Uses FanHub
- **Casual Fans**: Browse show info, discover new content
- **Superfans**: Deep-dive into characters, collect quotes, build watchlists
- **Social Sharers**: Share memorable quotes to social media

### Core Product Concepts
- **Shows**: TV series with seasons, episodes, and ensemble casts
- **Characters**: Fictional people fans connect with emotionally
- **Quotes**: Memorable lines that fans share and collect
- **Watchlists**: Personal collections of shows to watch

### Product Principles
- **Social first**: Everything should be shareable
- **Discovery-driven**: Help fans find new content to love
- **Collection-focused**: Let superfans curate their favorites
```

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Domain documentation**: Making product knowledge explicit
- **AI-aware product management**: Understanding how AI uses context
- **Cross-functional alignment**: Shared language between product and engineering

### How This Helps Your Real Work

As a product manager, you carry domain knowledge that developers don't have:

**Before documentation:**
- Developers ask "What's the difference between a fan and a user?"
- AI generates generic code that misses product intent
- You explain the same context in every planning meeting
- Features work technically but feel off

**After documentation:**
- Domain terms are defined in the repo
- AI generates product-aware code
- New team members self-onboard to product context
- Features feel intentional because context guided development

### Artifacts You Create
- Domain terminology section in `copilot-instructions.md`
- Product context section in `ARCHITECTURE.md`
- User persona documentation

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Developers misunderstanding product intent
- 😰 AI generating technically correct but product-wrong code
- 😰 Repeating the same explanations endlessly
- 😰 Features that work but don't feel right

**After this module (your achievements):**
- ✅ Domain terminology documented and AI-accessible
- ✅ Product context shapes code generation
- ✅ New team members understand product vision from docs
- ✅ Features align with product intent automatically

**Key insight:**
> *"I've spent 10 years learning how to write requirements. What I learned today is that requirements aren't enough—I need to document the WHY behind them. When Copilot understands our domain, it doesn't just write code. It writes product-aware code."*

---

## 🚀 Quick Start Guide

**If you're short on time (20 minutes):**
1. Jump to Exercise 1.2
2. Add domain terminology to `copilot-instructions.md`
3. Test Copilot's understanding of your domain
4. Done—product context is now in the repo

**If you have full time (30 minutes):**
1. Exercise 1.1: Add product context to architecture (10 min)
2. Exercise 1.2: Add domain terminology to instructions (20 min)
3. Verify AI-generated code uses correct domain terms

---

## 📊 Your Success Metrics

| Metric | Before Documentation | After Documentation |
|--------|---------------------|---------------------|
| **Domain term corrections in PR** | 8-10 per feature | 1-2 per feature |
| **"That's not what I meant" moments** | 4-5 per sprint | 0-1 per sprint |
| **Time explaining product context** | 15+ min/meeting | 5 min/meeting |
| **New developer product ramp-up** | 2 weeks | 3 days |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [David's path](david.md) to see architecture documentation
- [Sarah's path](sarah.md) to see coding standards

### Next Module
Your next appearance: **[Module 2: Agent Plan Mode](../../02-agent-plan-mode/personas/rafael.md)**

**What's next for you**: You'll use plan mode to explore requirements before committing to stakeholders. Instead of guessing scope, you'll use AI to discover edge cases and complexity before writing the spec.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [GitHub Docs: Repository Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions-for-github-copilot)
- [VS Code: Copilot Customization](https://code.visualstudio.com/docs/copilot/copilot-customization)

**Product-Specific Resources:**
- [Domain-Driven Design for Product Managers](https://martinfowler.com/bliki/UbiquitousLanguage.html)
- [Writing Documentation That Developers Actually Use](https://www.writethedocs.org/)
