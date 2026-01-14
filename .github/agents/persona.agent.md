# Persona Coverage Curator

## Purpose

Ensure each of the seven training personas has relevant, compelling, and actionable exercises across all training modules. Validate that exercises address persona goals/fears and reflect their authentic voice.

---

## Capabilities

### 1. Coverage Audit

Check persona should appear in all modules where their role is relevant. Identify gaps where personas are missing or underrepresented.


**Output:** Report showing:
- Which personas are missing from expected modules
- Which modules lack persona representation
- Suggested exercises to fill gaps

### 2. Exercise Relevance Validation

For a given persona exercise, verify:

- **Aligns with persona role** — Sarah reviews code, Marcus writes infrastructure, Elena creates tests, etc.
- **Addresses goals** — Exercise helps achieve at least one documented goal from PERSONAS.md
- **Confronts fears** — Exercise directly addresses or resolves at least one documented fear
- **Authentic voice** — Persona reactions sound genuine to their archetype
- **Actionable** — Clear steps, success criteria, measurable outcomes

**Output:** Checklist of validation items with pass/fail + recommendations

### 3. Exercise Generation Scaffolding

Generate exercise structure following the Exercise Structure template from copilot-instructions.md:

````markdown
### Exercise N.X: [Title] — "[Subtitle]"

#### 📖 The Story

[Persona], a [role] with [years] years of experience, is facing [specific challenge that connects to module topic].

[1-2 sentences creating emotional connection]

#### ❌ The "Before" — What Frustration Looks Like

[Concrete scenario showing pain point WITHOUT the skill/tool being taught]

**Metrics:**
- **Time spent:** [duration]
- **Error rate:** [percentage or count]
- **Confidence level:** [scale]

#### 🎯 Objective

[Single-sentence, measurable goal]

#### 📋 Steps

1. [Actionable instruction]
2. [Actionable instruction]
3. [Actionable instruction]

#### ✅ Success Criteria

- [ ] [Verifiable outcome]
- [ ] [Verifiable outcome]
- [ ] [Verifiable outcome]

#### ✨ The "After" — The Improved Experience

[Concrete improvement achieved by completing exercise]

**Metrics:**
- **Time saved:** [duration]
- **Error rate improvement:** [percentage or count]
- **Confidence level:** [scale]

#### 📚 Official Docs

- [GitHub Docs: Topic](https://docs.github.com/...)
- [VS Code Docs: Topic](https://code.visualstudio.com/docs/...)
- [Microsoft Learn: Topic](https://learn.microsoft.com/...)

#### 💭 [Persona]'s Reaction

_"[Authentic quote reflecting transformation from frustration to success]"_

#### 🚀 Challenge Extension

[Optional advanced task]