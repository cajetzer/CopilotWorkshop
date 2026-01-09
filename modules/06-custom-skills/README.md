# Module 6: Custom Skills

## ⏰ Monday 4:00 PM — Teaching Copilot Your Domain

> *"We have instructions for coding standards and prompts for common tasks. But how do I teach Copilot the specific validation rules for TV show data? That's too detailed for instructions, but too specific for prompts."*  
> — Elena, wanting domain-specific validation expertise

---

## 📖 The Story So Far

The FanHub team has built an impressive AI collaboration toolkit:
- **Module 1**: Repository instructions and architecture documentation
- **Module 2**: Agent plan mode for systematic thinking
- **Module 3**: Custom prompts for reusable workflows
- **Module 4**: Custom agents for autonomous tasks
- **Module 5**: Custom instructions for file-scoped context

But Elena notices a gap: *"We have general coding standards, but nothing that understands our TV show data model. I want Copilot to know that every character needs a name, status, and show reference—and to validate that automatically."*

Rafael agrees: *"Our product requirements are domain-specific. Skills could encode our business rules so Copilot applies them consistently."*

**This module's mission**: Create specialized Agent Skills that teach Copilot domain-specific knowledge and repeatable task workflows.

---

💡 **Plan Mode Integration**: You'll use plan mode to design skill structures, identify domain patterns, and create systematic validation workflows before implementing skills.

---

## 🎯 Learning Objectives

By the end of this module, you will:

- Understand what Agent Skills are and how they differ from instructions and prompts
- Create custom skills with YAML frontmatter and markdown instructions
- Include scripts and resources within skill directories
- See how Copilot automatically loads skills when relevant
- Build domain-specific validation skills for the FanHub data model
- Leverage community skills from existing repositories

**Time**: ~90 minutes  
**Personas**: Elena (Quality Champion), Rafael (Product Visionary)

---

## 🧠 Mindful Moment: The Right Tool for the Job

Think about the hierarchy of Copilot customization:

| Tool | Best For | Example |
|------|----------|---------|
| **Instructions** | General standards applied everywhere | "Use async/await, not promises" |
| **Prompts** | Reusable templates for common tasks | "Generate test suite for component" |
| **Agents** | Autonomous multi-step workflows | "Review architecture and suggest improvements" |
| **Skills** | Specialized domain knowledge Copilot loads when needed | "Validate TV show data follows our schema" |

Skills are perfect for domain-specific expertise that's too detailed for instructions but needs to be applied systematically.

---

## 📚 Key Concepts

### What Are Agent Skills?

**Agent Skills** are folders containing:
- `SKILL.md` file with instructions (YAML frontmatter + markdown)
- Optional scripts, examples, and resources
- Domain-specific knowledge Copilot loads when relevant

Skills are part of an [open standard](https://github.com/agentskills/agentskills) used by various AI coding assistants.

### Where Skills Live

**Project Skills** (repository-specific):
- `.github/skills/` or `.claude/skills/` in your repository
- Shared with everyone working on the project
- Version controlled with your code

**Personal Skills** (across all projects):
- `~/.copilot/skills/` or `~/.claude/skills/` in your home directory
- Available in all your projects
- Your personal toolkit

### Skills vs Instructions vs Prompts

| Feature | Instructions | Prompts | Skills |
|---------|-------------|---------|--------|
| **Loaded** | Always | Manually invoked | Automatically when relevant |
| **Scope** | Broad standards | Specific templates | Specialized tasks |
| **Contains** | Guidelines | Structured queries | Instructions + scripts + examples |
| **Best for** | Team conventions | Repeatable workflows | Domain expertise |

### Community Skills

You don't have to build every skill from scratch. Leverage existing skills:

**Anthropic's Skills Repository**: [github.com/anthropics/skills](https://github.com/anthropics/skills)
- High-quality skills for common development tasks
- Examples: debugging, testing patterns, code review
- Well-documented, ready to use

**GitHub's Awesome Copilot Collection**: [github.com/github/awesome-copilot](https://github.com/github/awesome-copilot)
- Community-contributed skills and resources
- Domain-specific examples across different technologies
- Constantly growing with contributions

---

## 🔨 Exercises

### Exercise 6.1: Understand Skills Through Examples — "Elena Explores the Ecosystem"

#### 📖 The Story

**Elena** (Quality Champion, 8 years) has been exploring how other teams use Agent Skills. She's discovered that the community has already built skills for many common scenarios.

*"Before we build our own skills,"* Elena suggests, *"let's see what already exists. Understanding proven patterns will help us design better skills for FanHub."*

The team gathers to explore community skills and understand the anatomy of a well-designed skill.

#### ❌ The "Before" — What Frustration Looks Like

Without skills, Elena has to repeatedly explain domain-specific validation rules:

```
@workspace When validating a character object, make sure it has:
- name (required string)
- status (required: 'alive', 'deceased', or 'unknown')
- show_id (required foreign key)
- first_appearance (optional episode reference)
- description (optional text)
```

Every time she asks Copilot to validate data, she re-types these rules. And if the rules change, she has to remember to update them everywhere.

#### 🎯 Objective

Explore community skills to understand skill structure and identify patterns that apply to FanHub validation needs.

#### 📋 Steps

1. **Explore the Anthropic Skills Repository**
   
   Open your browser and navigate to the Anthropic skills collection:
   ```
   https://github.com/anthropics/skills
   ```
   
   Browse through different skills and notice:
   - How `SKILL.md` files are structured
   - What goes in YAML frontmatter vs. markdown body
   - How skills include examples and guidelines
   - When skills reference external scripts or resources

2. **Explore the Awesome Copilot Collection**
   
   Check out the community-curated collection:
   ```
   https://github.com/github/awesome-copilot
   ```
   
   Look for:
   - Domain-specific skills (testing, DevOps, security)
   - Skills that include validation logic
   - Skills that reference external tools or resources

3. **Use plan mode to analyze skill patterns**
   
   Open Copilot Chat and use plan mode to synthesize what you learned:
   
   ```
   @agent I've explored the Anthropic skills repo and the Awesome Copilot collection. 
   Help me create a framework for designing effective Agent Skills for our FanHub project.
   
   Based on the patterns I observed, help me plan:
   
   1. Anatomy of a good SKILL.md file
      - What makes a clear skill name and description?
      - How detailed should instructions be?
      - When to include examples vs. just guidelines?
   
   2. Skills we might need for FanHub
      - TV show data validation
      - API endpoint consistency checking
      - Test coverage requirements
      - Deployment readiness verification
   
   3. Structure for our first skill: "TV Show Data Validator"
      - What should be in the frontmatter?
      - What validation rules to include?
      - How to make it reusable across different shows?
   
   Create a planning document for our FanHub skills library.
   ```

4. **Save your planning results**
   
   Create a documentation file for your skill design planning:
   
   ```
   Create fanhub/docs/SKILLS-DESIGN-PLAN.md with the complete planning framework 
   we developed, including:
   - Skill anatomy best practices
   - List of potential FanHub skills
   - Detailed plan for TV Show Data Validator skill
   - Guidelines for future skill creation
   ```

5. **Examine a skill structure locally**
   
   Look at the directory structure you'll create:
   ```
   .github/skills/
   └── tv-show-data-validator/
       ├── SKILL.md              (instructions + frontmatter)
       ├── schema-example.json   (example valid data)
       └── validation-rules.md   (detailed requirements)
   ```

#### ✅ Success Criteria

- [ ] Explored at least 3 skills from the Anthropic repository
- [ ] Reviewed at least 5 skills from the Awesome Copilot collection
- [ ] Used plan mode to create a skill design framework
- [ ] Documented planning results in `SKILLS-DESIGN-PLAN.md`
- [ ] Can articulate the difference between skills, instructions, and prompts
- [ ] Have a clear plan for the TV Show Data Validator skill

#### ✨ The "After" — The Improved Experience

Elena now understands:
- **Skill anatomy** and what makes them effective
- **Community resources** she can leverage
- **Design patterns** for creating domain-specific skills
- **Planning approach** for systematic skill development

**Key insight**: Community skills provide proven patterns. Don't reinvent the wheel—learn from what works.

#### 📚 Official Docs

- [GitHub Docs: About Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)
- [Anthropic Skills Repository](https://github.com/anthropics/skills)
- [GitHub Awesome Copilot Collection](https://github.com/github/awesome-copilot)
- [Agent Skills Open Standard](https://github.com/agentskills/agentskills)

#### 💭 Elena's Realization

*"Skills are like test fixtures for AI—they provide consistent, repeatable knowledge. The community has already solved common problems. Now we can focus on our domain-specific needs."*

---

### Exercise 6.2: Create Your First Skill — "The TV Show Data Validator"

#### 📖 The Story

**Elena** is ready to build the team's first custom skill. Based on her research, she's designing a skill that validates TV show data against FanHub's schema requirements.

**Rafael** joins in: *"This is perfect. Our product requirements for data consistency can live in a skill. Then Copilot will automatically apply them when working with character, episode, or show data."*

Together, they'll create a skill that embodies FanHub's domain knowledge.

#### ❌ The "Before" — What Frustration Looks Like

Right now, when adding a new character to the database, Copilot might suggest:

```javascript
const newCharacter = {
  name: "Walter White",
  job: "Chemistry Teacher"
};
```

This is valid JavaScript but violates FanHub's data model:
- Missing required `status` field
- Missing required `show_id` reference
- Has `job` field which doesn't exist in our schema
- No validation against our business rules

#### 🎯 Objective

Create a TV Show Data Validator skill that teaches Copilot FanHub's data model and validation requirements.

#### 📋 Steps

1. **Create the skill directory structure**
   
   In your FanHub repository:
   
   ```bash
   mkdir -p .github/skills/tv-show-data-validator
   ```

2. **Use plan mode to design the skill content**
   
   ```
   @agent Help me create the SKILL.md file for our TV Show Data Validator skill.
   
   Based on our FanHub data model, the skill should:
   
   1. Validate character objects have:
      - name (required string)
      - status (required: 'alive', 'deceased', or 'unknown')
      - show_id (required integer, foreign key to shows table)
      - first_appearance (optional integer, foreign key to episodes)
      - actor (optional string)
      - description (optional text)
   
   2. Validate episode objects have:
      - title (required string)
      - season_number (required integer)
      - episode_number (required integer)
      - show_id (required integer)
      - air_date (optional date)
      - synopsis (optional text)
   
   3. Validate show objects have:
      - name (required string)
      - genre (optional string)
      - premiere_year (optional integer)
      - status (required: 'ongoing', 'ended', 'cancelled')
   
   4. Check for common mistakes:
      - Missing required fields
      - Invalid enum values for status
      - Orphaned foreign keys
      - Duplicate episode numbers within a season
   
   Create a properly formatted SKILL.md file with:
   - YAML frontmatter (name, description)
   - Clear instructions for Copilot
   - Examples of valid and invalid data
   - Guidelines for handling edge cases
   ```

3. **Create the SKILL.md file**
   
   Save Copilot's generated content to:
   ```
   .github/skills/tv-show-data-validator/SKILL.md
   ```
   
   The file should look something like this:
   
   ```markdown
   ---
   name: tv-show-data-validator
   description: Validates TV show data (characters, episodes, shows) against FanHub schema requirements. Use when creating or modifying database records, API responses, or seed data.
   ---
   
   # TV Show Data Validator
   
   This skill helps validate data structures for FanHub's TV show database.
   
   ## Character Validation
   
   All character objects must include:
   - `name` (required): String, the character's name
   - `status` (required): Enum - 'alive', 'deceased', or 'unknown'
   - `show_id` (required): Integer, foreign key to shows table
   - `first_appearance` (optional): Integer, foreign key to episodes table
   - `actor` (optional): String, actor's name
   - `description` (optional): Text
   
   ### Valid Character Example
   ```json
   {
     "name": "Walter White",
     "status": "deceased",
     "show_id": 1,
     "first_appearance": 1,
     "actor": "Bryan Cranston",
     "description": "Chemistry teacher turned drug manufacturer"
   }
   ```
   
   ### Invalid Character Examples
   ```json
   // Missing required status field
   {
     "name": "Jesse Pinkman",
     "show_id": 1
   }
   
   // Invalid status value
   {
     "name": "Saul Goodman",
     "status": "retired",  // Should be 'alive', 'deceased', or 'unknown'
     "show_id": 1
   }
   ```
   
   ## Episode Validation
   
   All episode objects must include:
   - `title` (required): String
   - `season_number` (required): Integer, >= 1
   - `episode_number` (required): Integer, >= 1
   - `show_id` (required): Integer, foreign key to shows table
   - `air_date` (optional): Date string (YYYY-MM-DD)
   - `synopsis` (optional): Text
   
   **Important**: Episode numbers must be unique within a season.
   
   ## Show Validation
   
   All show objects must include:
   - `name` (required): String
   - `genre` (optional): String
   - `premiere_year` (optional): Integer, four digits
   - `status` (required): Enum - 'ongoing', 'ended', or 'cancelled'
   
   ## Common Validation Errors to Check
   
   1. **Missing Required Fields**: Always include required fields
   2. **Invalid Enum Values**: Status fields must use exact allowed values
   3. **Orphaned Foreign Keys**: show_id and first_appearance must reference existing records
   4. **Duplicate Episodes**: Same season_number + episode_number within a show
   5. **Type Mismatches**: Ensure integers aren't passed as strings
   
   ## When to Apply This Skill
   
   Use this skill when:
   - Creating database seed data
   - Writing API endpoint handlers
   - Generating test fixtures
   - Validating API request/response bodies
   - Implementing data import/export functionality
   ```

4. **Add supporting resources**
   
   Create example files in the skill directory:
   
   ```
   .github/skills/tv-show-data-validator/schema-example.json
   ```
   
   With valid examples of each data type.

5. **Test the skill**
   
   Now ask Copilot to create a new character:
   
   ```
   @workspace Create a new character object for Eleven from Stranger Things
   ```
   
   Copilot should automatically use your skill and include all required fields with proper validation!

6. **Verify skill is recognized**
   
   Check that Copilot can access your skill:
   
   ```
   @workspace What skills do you have available for data validation?
   ```

#### ✅ Success Criteria

- [ ] Created `.github/skills/tv-show-data-validator/` directory
- [ ] Created properly formatted `SKILL.md` with frontmatter and instructions
- [ ] Included examples of valid and invalid data structures
- [ ] Documented all validation rules clearly
- [ ] Tested skill by asking Copilot to create data objects
- [ ] Verified Copilot uses the skill automatically when working with show data

#### ✨ The "After" — The Improved Experience

Now when you ask Copilot to work with FanHub data:
- **Automatic validation** against your schema
- **Consistent field names** and structure
- **Proper enum values** for status fields
- **Required fields** always included
- **Domain knowledge** applied automatically

**Time invested**: 30 minutes to create the skill  
**Value unlocked**: Every future data operation follows the correct schema

#### 💭 Elena's Transformation

*"This is what I've been missing! Skills are like having a QA expert embedded in the AI. The validation rules live in one place, version-controlled, and automatically applied everywhere."*

---

### Exercise 6.3: Create Domain-Specific Skills — "Rafael's Product Requirements Skill"

#### 📖 The Story

**Rafael** (Product Visionary, 10 years) has been watching Elena's success with the data validator skill. He realizes that skills could encode product requirements in a way that bridges the gap between business needs and technical implementation.

*"We have requirements documents that developers read once and forget,"* Rafael reflects. *"What if those requirements lived in skills? Then Copilot would apply them automatically."*

Rafael wants to create a skill that ensures all FanHub features meet product standards.

#### ❌ The "Before" — What Frustration Looks Like

Rafael writes requirements like:
- "All public pages must include error boundaries"
- "Loading states should show skeleton screens, not spinners"
- "User actions must include success/error toast notifications"
- "Analytics tracking on all user interactions"

But developers forget these requirements, and they don't appear until code review—wasting time and causing rework.

#### 🎯 Objective

Create a Feature Requirements Skill that encodes product standards Copilot applies when building new features.

#### 📋 Steps

1. **Use plan mode to design the skill**
   
   ```
   @agent Help me design a "Feature Requirements" skill that ensures all FanHub 
   features meet our product standards.
   
   The skill should remind Copilot to include:
   
   1. Error Handling
      - Error boundaries for all public pages
      - Try-catch blocks for async operations
      - User-friendly error messages (not technical stack traces)
      - Error logging to console in development
   
   2. User Feedback
      - Loading states for async operations (skeleton screens, not spinners)
      - Success toast notifications for user actions
      - Error toast notifications for failures
      - Confirmation dialogs for destructive actions
   
   3. Analytics & Tracking
      - Page view tracking on mount
      - Event tracking for user interactions
      - Consistent event naming convention
   
   4. Accessibility
      - Semantic HTML elements
      - ARIA labels where needed
      - Keyboard navigation support
      - Focus management
   
   5. Responsive Design
      - Mobile-first approach
      - Breakpoints at 640px, 768px, 1024px
      - Touch-friendly hit targets (min 44px)
   
   Design a SKILL.md that Copilot will use when creating new features or components.
   ```

2. **Create the skill structure**
   
   ```bash
   mkdir -p .github/skills/feature-requirements
   ```

3. **Create the SKILL.md file**
   
   Save the planned content to `.github/skills/feature-requirements/SKILL.md`:
   
   ```markdown
   ---
   name: feature-requirements
   description: Product requirements for FanHub features. Use when creating new pages, components, or user-facing functionality to ensure features meet product standards.
   ---
   
   # FanHub Feature Requirements
   
   When building new features or components for FanHub, ensure the following product requirements are met:
   
   ## 1. Error Handling
   
   - **Error Boundaries**: Wrap all public pages in error boundaries
   - **Async Error Handling**: Use try-catch for all async operations
   - **User-Friendly Messages**: Show meaningful errors, not stack traces
   - **Error Logging**: Log errors to console in development mode
   
   Example:
   ```javascript
   try {
     const data = await fetchCharacters();
     setCharacters(data);
   } catch (error) {
     console.error('Failed to load characters:', error);
     toast.error('Unable to load characters. Please try again.');
   }
   ```
   
   ## 2. User Feedback
   
   - **Loading States**: Use skeleton screens, not spinners
   - **Success Notifications**: Toast notifications for successful actions
   - **Error Notifications**: Toast notifications for failures  
   - **Confirmations**: Dialog prompts before destructive actions
   
   ## 3. Analytics & Tracking
   
   - **Page Views**: Track on component mount
   - **User Events**: Track all interactions (clicks, form submissions, etc.)
   - **Naming Convention**: Use format: `fanhub_[page]_[action]`
   
   Example:
   ```javascript
   useEffect(() => {
     trackPageView('characters_list');
   }, []);
   
   const handleCharacterClick = (character) => {
     trackEvent('characters_list_character_clicked', { 
       character_id: character.id 
     });
   };
   ```
   
   ## 4. Accessibility
   
   - **Semantic HTML**: Use proper elements (`<button>`, `<nav>`, `<main>`)
   - **ARIA Labels**: Add where semantic HTML isn't enough
   - **Keyboard Navigation**: Ensure tab order and keyboard shortcuts
   - **Focus Management**: Handle focus on modals, navigation
   
   ## 5. Responsive Design
   
   - **Mobile-First**: Design for mobile, enhance for desktop
   - **Breakpoints**: 640px (sm), 768px (md), 1024px (lg)
   - **Touch Targets**: Minimum 44px for interactive elements
   - **Flexible Layouts**: Use flexbox/grid, avoid fixed widths
   
   ## When to Apply
   
   Use this skill when:
   - Creating new pages or routes
   - Building new React components
   - Implementing user interactions
   - Adding forms or data entry
   - Building modal dialogs or overlays
   ```

4. **Test the skill with a real feature**
   
   Ask Copilot to create a new feature using your product requirements:
   
   ```
   @workspace Create a new page component for browsing episodes. Include proper 
   error handling, loading states, analytics, and accessibility features.
   ```
   
   Copilot should automatically apply your feature requirements skill!

5. **Document the skill in your team standards**
   
   Update your `copilot-instructions.md` to reference the skill:
   
   ```markdown
   ## Product Standards
   
   All features must meet requirements documented in the `feature-requirements` skill.
   Copilot will automatically apply these when creating new components and pages.
   ```

#### ✅ Success Criteria

- [ ] Created feature-requirements skill with comprehensive product standards
- [ ] Documented all 5 requirement categories with examples
- [ ] Tested skill by generating a new feature component
- [ ] Verified Copilot applies requirements automatically
- [ ] Updated team instructions to reference the new skill

#### ✨ The "After" — The Improved Experience

Rafael's product requirements are now:
- **Automatically applied** when building features
- **Version controlled** with the codebase
- **Consistently enforced** by AI assistance
- **Living documentation** that evolves with the product

**Key insight**: Skills bridge business and technical requirements. Product knowledge becomes executable.

#### 💭 Rafael's Transformation

*"This changes everything. Requirements aren't just documents developers read once—they're living knowledge that Copilot applies every time. The gap between product and engineering just got a lot smaller."*

---

### Exercise 6.4: Skills Library Strategy — "Building Your Team's Skill Ecosystem"

#### 📖 The Story

The FanHub team now has two powerful skills:
- **TV Show Data Validator** (Elena's domain expertise)
- **Feature Requirements** (Rafael's product standards)

Sarah brings the team together: *"We're starting to build a skills library. Let's be systematic about this—what other skills do we need? How do we organize them? How do we keep them maintained?"*

This is the team's opportunity to plan their complete skills ecosystem.

#### 🎯 Objective

Create a comprehensive strategy for FanHub's skills library, including additional skills to build and maintenance practices.

#### 📋 Steps

1. **Use plan mode to design your skills ecosystem**
   
   ```
   @agent Help create a comprehensive skills strategy for the FanHub team.
   
   We currently have:
   - tv-show-data-validator (domain data validation)
   - feature-requirements (product standards)
   
   Plan our complete skills library:
   
   1. Identify additional skills we need:
      - What other domain knowledge should be encoded?
      - What repetitive validation or checking tasks occur?
      - What team standards aren't captured yet?
   
   2. Organize our skills:
      - How should skills be categorized?
      - Which should be project skills vs. personal skills?
      - How do skills relate to our instructions and prompts?
   
   3. Maintenance strategy:
      - How do we keep skills up to date?
      - Who owns which skills?
      - How do we test that skills work correctly?
      - When do we deprecate or refactor skills?
   
   4. Community integration:
      - Which community skills should we adopt?
      - How do we customize community skills for our needs?
      - Should we contribute our skills back?
   
   Create a complete Skills Library Strategy document.
   ```

2. **Identify candidate skills for FanHub**
   
   Brainstorm additional skills the team might need:
   
   - **API Endpoint Design Skill**: Consistent REST conventions
   - **Test Coverage Checker**: Ensure adequate test coverage
   - **Deployment Readiness**: Pre-deploy validation checklist
   - **Database Migration Skill**: Safe schema changes
   - **Security Review Skill**: Common vulnerability checks
   - **Performance Optimization Skill**: Best practices for React/Node

3. **Create your skills library documentation**
   
   ```
   Create fanhub/docs/SKILLS-LIBRARY-STRATEGY.md documenting:
   - Complete list of planned skills (current + future)
   - Skill ownership and maintenance responsibilities
   - Guidelines for when to create new skills
   - Testing and validation approach
   - Integration with instructions and prompts
   - Community skills we're adopting
   - Contribution guidelines for new skills
   ```

4. **Set up personal skills**
   
   Team members can create personal skills for their own workflow:
   
   ```bash
   # Elena might create personal testing skills
   mkdir -p ~/.copilot/skills/comprehensive-test-generator
   
   # Marcus might create personal DevOps skills
   mkdir -p ~/.copilot/skills/infrastructure-review
   ```

5. **Adopt a community skill**
   
   Pick one skill from the Anthropic or Awesome Copilot repos to adopt:
   
   ```bash
   # Example: Adopt a debugging skill
   cp -r /path/to/community/skill .github/skills/debugging-workflow
   # Customize it for FanHub's needs
   ```

6. **Create skill discovery documentation**
   
   Add to your README or docs:
   
   ```markdown
   ## Available Skills
   
   FanHub uses Agent Skills to provide domain-specific expertise:
   
   ### Project Skills (.github/skills/)
   - **tv-show-data-validator**: Validates show, character, episode data
   - **feature-requirements**: Ensures features meet product standards
   - **[your additional skills]**
   
   ### Community Skills We Use
   - Link to adopted community skills
   
   ### How to Add New Skills
   - Guidelines for team members to contribute skills
   ```

#### ✅ Success Criteria

- [ ] Created comprehensive Skills Library Strategy document
- [ ] Identified 4-6 additional skills to build
- [ ] Documented skill ownership and maintenance approach
- [ ] Set up at least one personal skill
- [ ] Adopted at least one community skill
- [ ] Created skill discovery documentation for the team

#### ✨ The "After" — The Complete Ecosystem

The FanHub team now has:
- **Systematic approach** to encoding expertise
- **Clear ownership** of different skills
- **Integration plan** between skills, instructions, and prompts
- **Maintenance strategy** for keeping skills current
- **Community connection** leveraging and contributing skills

**Key insight**: Skills are most powerful when part of a systematic strategy, not ad-hoc additions.

#### 💭 Team Reflection

- **Sarah**: *"Skills are the missing piece. They scale expertise across the team."*
- **Elena**: *"My domain knowledge is now executable, not just documentation."*
- **Rafael**: *"Product requirements become code assistance, not just PRD documents."*
- **David**: *"This is how we preserve institutional knowledge as AI-accessible."*

---

## 🎯 Module Summary

### Key Takeaways

1. **Skills encode domain expertise** that's too specific for instructions but needs systematic application
2. **Community skills** provide proven patterns you can adopt and customize
3. **Skills + Instructions + Prompts** form a complete customization strategy
4. **Plan mode helps design skills** systematically before implementation
5. **Skills libraries scale knowledge** across entire teams

### Practices Mastered

| Practice | Key Insight |
|----------|-------------|
| 🎯 **Domain Knowledge as Code** | Skills make expertise executable and version-controlled |
| 📚 **Community Leverage** | Don't build everything—adopt and customize proven skills |
| 🔄 **Systematic Design** | Use plan mode to design skill structure before implementation |
| 🏗️ **Skills Ecosystem** | Think libraries, not individual skills—systematic approach wins |

### The Customization Hierarchy (Complete)

```
┌─────────────────────────────────────┐
│  Instructions (.github/)            │  ← Always loaded, broad standards
├─────────────────────────────────────┤
│  Skills (.github/skills/)           │  ← Loaded when relevant, domain expertise
├─────────────────────────────────────┤
│  Prompts (.github/prompts/)         │  ← Manually invoked, specific templates
├─────────────────────────────────────┤
│  Agents (custom configurations)     │  ← Autonomous tasks, multi-step workflows
└─────────────────────────────────────┘
```

### What's Next

In **Module 7: Copilot Web**, you'll learn how to use Copilot across GitHub's web interface—applying all your customizations (instructions, skills, prompts, agents) to pull requests, issues, and code review workflows.

**💡 Plan Mode Tip for Next Module**: Before diving into web workflows, use plan mode to identify which web-based tasks would benefit from your skills and how to integrate web and local development cycles.

---

## ⏱️ Time Check

**Expected Duration**: 90 minutes
- Exercise 6.1: Explore Community Skills (20 minutes)
- Exercise 6.2: TV Show Data Validator (25 minutes)
- Exercise 6.3: Feature Requirements Skill (25 minutes)
- Exercise 6.4: Skills Library Strategy (20 minutes)

**If running ahead**: Create additional domain-specific skills for your project  
**If running behind**: Focus on Exercise 6.2 (Data Validator) and 6.4 (Strategy), skim the others

---

## 🔗 Quick Reference

### Skill File Structure

```
.github/skills/
└── skill-name/
    ├── SKILL.md           (required: frontmatter + instructions)
    ├── examples/          (optional: example files)
    ├── scripts/           (optional: helper scripts)
    └── resources/         (optional: supporting files)
```

### SKILL.md Template

```markdown
---
name: skill-name-in-lowercase
description: What this skill does and when Copilot should use it
license: MIT (optional)
---

# Skill Title

Instructions for Copilot in markdown format.

Include:
- Clear guidelines
- Examples (valid and invalid)
- Edge cases to handle
- When to apply this skill
```

### Resources

- **Official Docs**: [GitHub Copilot Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)
- **Open Standard**: [agentskills/agentskills](https://github.com/agentskills/agentskills)
- **Community Skills**: [anthropics/skills](https://github.com/anthropics/skills)
- **Curated Collection**: [github/awesome-copilot](https://github.com/github/awesome-copilot)

---

*"Skills transform domain expertise into AI-accessible knowledge. Your team's collective wisdom becomes Copilot's automatic guidance."*
