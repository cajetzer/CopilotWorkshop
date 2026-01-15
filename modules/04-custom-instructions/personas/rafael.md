# Rafael's Journey: Module 4 - Custom Instructions

> **Your role**: Product Manager ensuring product standards auto-apply to specifications  
> **Time**: 25 minutes (focused) or 40 minutes (with team collaboration)  
> **Transformation**: From manually enforcing product standards to automatic application

---

## 📖 Your Story in This Module

You've created prompts in Module 3 that translate specs to implementation plans. But there's a gap: when developers work on feature files, they don't always think about product standards.

Where's the error state design? Did anyone consider the empty state? What about the loading experience? These questions come up in every feature review, every sprint.

**Custom instructions solve this.** When anyone opens a spec file or works on a feature, product standards automatically activate. No more remembering to apply them—they're just there.

---

## 🎯 Your Exercises

### Exercise 4.2: Product Standards Instructions ⭐ *You lead this one*

**Your role**: Create instructions that auto-apply to spec and feature files  
**Time**: 20 minutes  
**[View full exercise →](../EXERCISES.md#exercise-41-testing-instructions--the-character-detail-tests-will-need-help)**

**What you'll create:**
- `product-standards.instructions.md` — Auto-applies to spec and feature files
- Ensures every feature considers standard product elements

**Your "before" pain:**

Developer opens a feature file and starts building:

```javascript
// CharacterFavorites.jsx
function CharacterFavorites() {
  const favorites = useFavorites();
  
  return (
    <div>
      {favorites.map(char => (
        <CharacterCard key={char.id} character={char} />
      ))}
    </div>
  );
}
```

PR review, you ask:
- *"What happens when there are no favorites? Empty state?"*
- *"What's the loading experience? Skeleton screens?"*
- *"Where's the error handling if the API fails?"*
- *"Is there analytics tracking on this page?"*

Developer: *"Oh... I didn't think about those."*

Rework: 2-3 hours. This happens every feature.

**Your "after" win:**

Create `.github/instructions/product-standards.instructions.md`:

```markdown
---
applyTo: "**/*.{jsx,tsx,md}"
---

# Product Standards for FanHub Features

When building or specifying features, always consider these product elements:

## Required UI States

Every feature/component must handle:

1. **Loading State**
   - Use skeleton screens, not spinners
   - Match layout of loaded content
   - Animate with subtle pulse

2. **Empty State**
   - Friendly message explaining the empty state
   - Call-to-action to populate (if applicable)
   - Illustration or icon for visual interest

3. **Error State**
   - User-friendly error message (not technical)
   - Retry button when applicable
   - Fallback content if possible

4. **Success State**
   - Toast notification for user actions
   - Visual feedback (checkmarks, animations)
   - Confirmation for destructive actions

## Analytics Requirements

Every feature must track:
- Page views (for pages)
- User actions (clicks, submissions)
- Error occurrences
- Time on page/feature

## Accessibility Requirements

- All interactive elements keyboard-navigable
- ARIA labels for screen readers
- Color contrast meets WCAG AA
- Focus states visible

## Mobile Considerations

- Touch targets minimum 44x44px
- Responsive at 320px, 768px, 1024px breakpoints
- No horizontal scroll
- Consider thumb-reach zones

## Example: Complete Feature Checklist

When building [Feature], ensure:
- [ ] Loading skeleton implemented
- [ ] Empty state with CTA
- [ ] Error state with retry
- [ ] Success feedback (toast/animation)
- [ ] Analytics events tracked
- [ ] Keyboard navigation works
- [ ] Mobile responsive
```

Now when a developer works on any feature file, these standards are in context. Copilot suggestions include empty states, error handling, and analytics tracking automatically.

**Metrics:**
- **"Did you consider..." comments in PR**: From 8-10 to 1-2
- **Rework for missing product elements**: From 3 hours to 30 minutes
- **Features shipping with complete UX**: From 60% to 95%

**Your transformation moment:**
> *"I used to be the 'product police' in every PR review. 'Where's the empty state? Where's error handling?' Now those questions are answered before the PR is opened. The standards are built into the workflow."*

---

### Exercise 4.3: Spec File Instructions 🤝 *Team collaboration*

**Your role**: Create instructions that activate when writing specs  
**Time**: 5 minutes

**What you'll create:**

When someone creates or edits a spec file (`.md` in `docs/specs/`), product standards automatically appear:

```markdown
---
applyTo: "docs/specs/**/*.md"
---

# Feature Specification Standards

When writing or editing feature specifications:

## Required Sections

1. **User Story**
   - As a [persona]...
   - I want [capability]...
   - So that [benefit]...

2. **Acceptance Criteria**
   - Given/When/Then format
   - Cover happy path AND edge cases
   - Include error scenarios

3. **UI States**
   - Loading state description
   - Empty state description
   - Error state description

4. **Out of Scope**
   - Explicitly list what's NOT included
   - Prevents scope creep

5. **Open Questions**
   - Unresolved decisions
   - Dependencies on other teams
   - Technical unknowns

## FanHub-Specific Considerations

- Social sharing: Can this feature be shared?
- Favorites integration: Does this connect to user collections?
- Discovery: How do users find this feature?
```

---

## 🔗 Connections to Your Work

### Skills You're Building
- **Standards automation**: Product requirements become automatic
- **Proactive quality**: Standards applied during development, not review
- **Cross-team consistency**: Everyone follows the same product playbook

### How This Helps Your Real Work

**Before custom instructions:**
```
Developer builds → PR review → Rafael asks about empty states → Rework → Re-review
```

**After custom instructions:**
```
Developer builds (with standards in context) → PR review (just logic check) → Ship
```

The difference:
- **Fewer PR comments**: Standards are pre-applied
- **Faster cycles**: No rework for forgotten elements
- **Higher quality**: Every feature has complete UX
- **Less frustration**: No one feels "nitpicked"

---

## 💭 Your Transformation Arc

**Before this module (your fears):**
- 😰 Developers forgetting product standards
- 😰 Being the "nitpick person" in every PR
- 😰 Features shipping incomplete
- 😰 Having to explain the same standards repeatedly

**After this module (your achievements):**
- ✅ Standards auto-apply to relevant files
- ✅ PR reviews focus on logic, not checklist items
- ✅ Features include all UX states by default
- ✅ Product quality is systematic, not heroic

**Key insight:**
> *"I was manually enforcing product standards in every review. That doesn't scale. Now the standards are in the workflow—Copilot reminds developers before I have to. That's not automation replacing me. That's automation amplifying my product vision."*

---

## 🚀 Quick Start Guide

**If you're short on time (15 minutes):**
1. Create `product-standards.instructions.md`
2. Apply to feature files
3. Test that Copilot suggestions include product elements

**If you have full time (25 minutes):**
1. Exercise 4.2: Product standards instructions (15 min)
2. Exercise 4.3: Spec file instructions (5 min)
3. Review a recent PR to see what would have been caught (5 min)

---

## 📊 Your Success Metrics

| Metric | Before Instructions | After Instructions |
|--------|--------------------|--------------------|
| **"Did you consider..." PR comments** | 8-10 per PR | 1-2 per PR |
| **Rework for missing elements** | 3 hours/feature | 30 min/feature |
| **Features with complete UX** | 60% | 95% |
| **Time spent on standard enforcement** | 5 hours/week | 1 hour/week |

---

## ➡️ Continue Your Journey

### Within This Module
- [View all exercises](../EXERCISES.md) for full team story
- [Elena's path](elena.md) to see testing instructions
- [David's path](david.md) to see architecture instructions

### Next Module
Your next appearance: **[Module 5: Agent Skills](../../05-agent-skills/personas/rafael.md)**

**What's next for you**: You'll create the Feature Requirements skill and Effort Estimator skill. These encode your product expertise as domain knowledge that Copilot can apply across any project.

---

## 📚 Resources for Product Managers

**Official Documentation:**
- [GitHub Docs: Custom Instructions](https://docs.github.com/en/copilot/customizing-copilot/adding-repository-custom-instructions)
- [VS Code: Custom Instructions](https://code.visualstudio.com/docs/copilot/copilot-customization)

**Product-Specific Resources:**
- [UI State Design Patterns](https://www.nngroup.com/articles/empty-state-design/)
- [Product Requirements Best Practices](https://www.productplan.com/learn/product-requirements-document/)
