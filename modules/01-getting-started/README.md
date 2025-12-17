# Module 1: Getting Started — Your First Wins with Copilot

## 📖 Overview

Install, connect, and try the core chat flow. You’ll run your first explain/fix/test loop, learn mentions and slash commands, and set expectations for how Copilot fits your workflow.

## Prerequisites

- VS Code + GitHub Copilot Chat
- A repository opened locally (this repo is fine)

## Estimated Time

- 20–30 minutes

---

## 🎯 Learning Objectives

- Install/verify Copilot Chat in VS Code
- Use mentions (@workspace, @vscode) and slash commands (/explain, /fix, /tests)
- Run a basic “explain → improve → test” loop
- Know where to find official docs and support

---

## 📚 Content

### Verify Installation

- Open the Chat view; sign in if prompted
- Ensure Copilot Chat is enabled (organization policies may apply)

### Core Chat Concepts

- Mentions: direct questions to the right specialist
- Slash commands: fast paths for common actions
- Selection-aware: chat uses your current file/selection where applicable

### Quick Patterns

- Explain-first: `/explain` selected code before changing it
- Small diffs: ask Copilot for minimal, safe edits
- Tests early: use `/tests` to anchor quality

---

## 🔨 Exercises

### Exercise 1: “Explain and Improve” (Priya)

#### 🎯 Objective

Use `/explain` and `/fix` on a small function.

#### 📋 Steps

1. Open any function in your repo.
2. Select it and run `/explain`.
3. Ask: “Suggest a safer version with better names; keep the signature.”
4. Apply minimal changes.

#### ✅ Success Criteria

- [ ] You understand the function’s behavior
- [ ] You apply a small, readable improvement

#### 📚 Official Docs

- Copilot Chat in VS Code: https://code.visualstudio.com/docs/copilot/copilot-chat

#### 💭 Priya

“Explaining first reduced my uncertainty before making a change.”

---

### Exercise 2: “Generate Tests” (Sarah)

#### 🎯 Objective

Use `/tests` to propose tests; refine them to match your standards.

#### 📋 Steps

1. With a unit under test open, run `/tests`.
2. Ask: “Match our test framework and naming in docs/PATTERNS.md.”
3. Keep tests small and focused; add edge cases.

#### ✅ Success Criteria

- [ ] Tests match your project’s framework and naming
- [ ] Edge cases are covered

#### 📚 Official Docs

- Slash commands: https://code.visualstudio.com/docs/copilot/copilot-chat#_slash-commands

#### 💭 Sarah

“This is faster, but I still enforce our standards.”

---

## 🧠 Key Takeaways

- Mentions and slash commands are the fastest way to good answers
- Explain before you change; test early
- Keep diffs small and intentional

---

## ➡️ Next Steps

Go to Module 2: modules/02-context-and-configuration/README.md

# Module 1: Getting Started with GitHub Copilot

## 📖 Overview

This module is your launchpad into AI-assisted development. We'll get GitHub Copilot installed, configured, and working in VS Code—then prove to yourself that this changes everything.

Whether you remember the days of memorizing API documentation or you've never known a world without Stack Overflow, by the end of this module you'll understand why developers say Copilot feels like having a senior developer sitting next to you.

### Before You Begin: Repository Setup

To complete the exercises and save your work, start by forking or cloning this training repository into a location where you can make commits:

- Recommended for teams: Fork this repo into your company’s GitHub organization
- Solo practice: Fork to your personal account or clone directly if you don’t need to push changes upstream

Then clone locally and open in VS Code:

```bash
git clone https://github.com/<your-org-or-user>/CopilotTraining.git
cd CopilotTraining
code .
```

Replace `<your-org-or-user>` with your GitHub organization or username.

## Prerequisites

- GitHub account (Copilot subscription or trial)
- Visual Studio Code installed
- Internet access and permission to install extensions

## Estimated time

- 20–30 minutes

## 🎯 Learning Objectives

By the end of this module, you will:

- Have GitHub Copilot fully configured in VS Code
- Understand the three licensing tiers and which fits your situation
- Know how your code and prompts are handled (privacy matters)
- Experience your first "wow" moment with AI-assisted coding
- Understand the fundamental concepts: completions, chat, and context

---

## 📚 Content

### What is GitHub Copilot?

GitHub Copilot is an AI pair programmer trained on billions of lines of public code. It doesn't just autocomplete—it understands _intent_. Write a comment describing what you want, and Copilot suggests the implementation. Start typing a function, and it predicts where you're going.

**What makes it different from traditional autocomplete:**

| Traditional IntelliSense                   | GitHub Copilot                                 |
| ------------------------------------------ | ---------------------------------------------- |
| Suggests method names you've already typed | Suggests entire functions you've never written |
| Requires you to know the API               | Learns from how APIs are commonly used         |
| Works within one file                      | Understands context across open files          |
| Syntax-focused                             | Intent-focused                                 |

**Core Capabilities:**

- **Inline Completions** — Suggestions appear as you type, in ghost text
- **Copilot Chat** — A conversational interface for explanations, refactoring, and generation
- **Context Awareness** — Uses open files, comments, and code structure to improve suggestions

### Licensing Options

GitHub Copilot comes in three tiers:

| Tier                   | Best For                       | Key Features                                              |
| ---------------------- | ------------------------------ | --------------------------------------------------------- |
| **Copilot Individual** | Personal projects, freelancers | Full functionality, monthly billing                       |
| **Copilot Business**   | Teams and organizations        | Enhanced privacy, admin controls, no data retention       |
| **Copilot Enterprise** | Large enterprises              | Custom models, knowledge bases, organization-wide context |

> 💡 **For this training:** Any tier works. If you're using an organizational license, your admin has already configured the privacy settings.

**📖 Official Documentation:**

- [GitHub Copilot Plans](https://docs.github.com/en/copilot/about-github-copilot/subscription-plans-for-github-copilot)
- [Pricing Information](https://github.com/features/copilot#pricing)

### Getting Access

**Individual Users:**

1. Visit [github.com/settings/copilot](https://github.com/settings/copilot)
2. Start a free trial or subscribe
3. Configure your preferences

**Organization Users:**

1. Your organization admin enables Copilot in org settings
2. They assign you a license
3. You'll see Copilot available when you sign in

**📖 Official Documentation:**

- [Setting up GitHub Copilot](https://docs.github.com/en/copilot/setting-up-github-copilot)
- [Managing Copilot for your organization](https://docs.github.com/en/copilot/managing-copilot/managing-github-copilot-in-your-organization)

### Installation in VS Code

1. Open VS Code
2. Go to Extensions (`Ctrl+Shift+X` / `Cmd+Shift+X`)
3. Search for **"GitHub Copilot"**
4. Install both:
   - **GitHub Copilot** (inline completions)
   - **GitHub Copilot Chat** (conversational interface)
5. Click "Sign in to GitHub" when prompted
6. Authorize VS Code to access your GitHub account

**Verification:** Look for the Copilot icon in your status bar (bottom right). If it's there and not crossed out, you're ready.

**📖 Official Documentation:**

- [Installing GitHub Copilot in VS Code](https://docs.github.com/en/copilot/managing-copilot/configure-personal-settings/installing-the-github-copilot-extension-in-your-environment)

### Privacy and Security

This matters. Especially in enterprise environments.

**What Copilot sees:**

- The code in your currently open files
- Your comments and prompts
- File names and structure

**What happens to your code:**

| License Tier | Code Retention                                 | Prompt Retention                |
| ------------ | ---------------------------------------------- | ------------------------------- |
| Individual   | Used for model improvement (opt-out available) | Processed, not stored long-term |
| Business     | **No retention**                               | **No retention**                |
| Enterprise   | **No retention**                               | **No retention**                |

> 🔒 **For enterprise users:** Your organization's policies determine exactly how data is handled. Copilot Business and Enterprise are designed for sensitive codebases.

**📖 Official Documentation:**

- [GitHub Copilot Trust Center](https://resources.github.com/copilot-trust-center/)
- [Privacy Statement](https://docs.github.com/en/site-policy/privacy-policies/github-copilot-privacy-statement)

### Core Concepts

**1. Inline Completions**
As you type, Copilot shows suggestions in gray "ghost text."

- `Tab` — Accept the suggestion
- `Esc` — Dismiss it
- `Alt+]` / `Option+]` — See alternative suggestions
- `Alt+[` / `Option+[` — Previous alternative

**2. Copilot Chat**
A sidebar chat interface for longer interactions:

- Open with `Ctrl+Shift+I` / `Cmd+Shift+I`
- Ask questions about code, request explanations, generate snippets

**3. Inline Chat**
Quick conversations without leaving your code:

- Trigger with `Ctrl+I` / `Cmd+I`
- Perfect for "rewrite this function" or "add error handling here"

**4. Context**
Copilot's suggestions improve when it has more context:

- **Open files** — Keep related files open in your editor
- **Comments** — Describe your intent before writing code
- **Good naming** — Clear variable and function names guide better suggestions

---

## 🔨 Exercises

The following exercises use a connected narrative. Each one builds on concepts from the previous, but they can also be completed independently.

---

### Exercise 1: Installation Verification — "The Moment of Truth"

#### 📖 The Story

**Meet Sarah.** She's a senior developer at a financial services company. She's been coding for 15 years and has seen tools come and go. Yesterday, her CTO announced the company purchased Copilot licenses for all developers. Sarah is skeptical—she's heard the hype before.

_"Let's see if this thing actually works,"_ she thinks, opening VS Code.

#### 🎯 Objective

Verify your Copilot installation and experience your first AI-assisted suggestion.

#### 📋 Steps

1. **Confirm Copilot is active**

   - Look at the VS Code status bar (bottom right)
   - You should see a Copilot icon (looks like two sparkles or a small robot)
   - If it has a line through it, click it and select "Enable"

2. **Create a test file**

   - Create a new file: `first-test.py`
   - Type the following and press Enter:
     ```python
     def calculate_compound_interest(principal, rate, time, n):
     ```

3. **Watch the magic**

   - Pause for a moment after pressing Enter
   - Copilot should suggest the function body in gray text
   - Press `Tab` to accept

4. **Verify the suggestion makes sense**
   - The formula should be: `A = P(1 + r/n)^(nt)`
   - Copilot likely generated something mathematically correct

#### ✅ Success Criteria

- [ ] Copilot icon visible in status bar
- [ ] Ghost text appeared after typing the function signature
- [ ] You accepted a suggestion with Tab
- [ ] The generated code looks reasonable

#### 📚 Official Docs

- [Installing GitHub Copilot in VS Code](https://docs.github.com/en/copilot/managing-copilot/configure-personal-settings/installing-the-github-copilot-extension-in-your-environment)
- [Quickstart Guide](https://docs.github.com/en/copilot/quickstart)

#### 💭 Sarah's Reaction

_"Okay, that was... actually impressive. It knew the compound interest formula. I didn't even have to look it up."_

#### 🚀 Challenge Extension

Try these signatures and see what Copilot suggests:

```python
def validate_credit_card_number(card_number):

def calculate_loan_amortization(principal, annual_rate, years):

def mask_sensitive_data(text, fields_to_mask):
```

**Reflection:** How close were the suggestions to what you would have written?

---

### Exercise 2: Comment-Driven Development — "The New Workflow"

#### 📖 The Story

**Meet Marcus.** He started his development career five years ago, right as DevOps was taking over. He's comfortable with YAML, Docker, and Kubernetes, but writing business logic still feels slow. He's watched senior developers seemingly pull code out of thin air.

Today, his tech lead shared a tip: _"Don't start with code. Start with comments. Tell Copilot what you want before you write anything."_

Marcus decides to try it.

#### 🎯 Objective

Learn to guide Copilot using comments as intent declarations.

#### 📋 Steps

1. **Create a new file**

   - Create: `order-processor.js`

2. **Write comments first, code second**

   - Type the following comment and press Enter twice:
     ```javascript
     // Function to calculate the total price of an order
     // Takes an array of items, each with price and quantity
     // Applies a discount percentage if provided
     // Returns the final total rounded to 2 decimal places
     ```

3. **Let Copilot generate**

   - Start typing: `function calculateOrderTotal(`
   - Wait for Copilot's suggestion
   - Press `Tab` to accept

4. **Iterate with more comments**
   - Below the function, add:
     ```javascript
     // Function to validate an order before processing
     // Checks that all items have positive quantities
     // Checks that all prices are valid numbers
     // Returns an object with isValid boolean and errors array
     ```
   - Start the function signature and let Copilot complete it

#### ✅ Success Criteria

- [ ] Copilot generated a function matching your comment description
- [ ] The discount logic was included (because you mentioned it)
- [ ] The validation function checks what you specified

#### 📚 Official Docs

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Quickstart Guide](https://docs.github.com/en/copilot/quickstart)

#### 💭 Marcus's Realization

_"This is like pair programming, but my partner already knows every library and pattern. I just have to be clear about what I want."_

#### 🚀 Challenge Extension

**The Clarity Test:** Write two versions of a comment for the same function:

**Vague version:**

```javascript
// process the data
```

**Clear version:**

```javascript
// Transform an array of user objects into a Map
// where keys are user IDs and values are objects containing
// only the user's name and email (for GDPR compliance)
```

Generate both and compare. How much does clarity affect output quality?

---

### Exercise 3: Copilot Chat — "The Conversation"

#### 📖 The Story

**Meet Priya.** She just graduated from a coding bootcamp and landed her first job. She knows JavaScript basics, but the production codebase is overwhelming. There's a function with nested callbacks, promises, and something called "async/await" that she's seen but never used.

She's embarrassed to ask her team to explain basic concepts again. Then she remembers: _Copilot Chat doesn't judge_.

#### 🎯 Objective

Use Copilot Chat to learn concepts, get explanations, and generate code through conversation.

#### 📋 Steps

1. **Open Copilot Chat**

   - Press `Ctrl+Shift+I` (Windows/Linux) or `Cmd+Shift+I` (Mac)
   - The chat panel opens on the side

2. **Ask for an explanation**

   - Type: _"Explain the difference between callbacks, promises, and async/await in JavaScript. Give me a simple example of each doing the same thing."_
   - Read the explanation

3. **Generate code through conversation**

   - Type: _"Write a function that fetches user data from an API endpoint, handles errors gracefully, and returns null if the request fails. Use async/await."_
   - Review what Copilot generates

4. **Iterate on the response**

   - Type: _"Now add retry logic that attempts the request 3 times with a 1-second delay between attempts."_
   - See how it builds on the previous response

5. **Try inline chat**
   - Create a file `temp.js` and paste this code:
     ```javascript
     function processItems(items) {
       var result = [];
       for (var i = 0; i < items.length; i++) {
         if (items[i].active == true) {
           result.push(items[i].name.toUpperCase());
         }
       }
       return result;
     }
     ```
   - Select the entire function
   - Press `Ctrl+I` / `Cmd+I` for inline chat
   - Type: _"Modernize this to ES6+ with arrow functions and array methods"_
   - Review the suggested changes

#### ✅ Success Criteria

- [ ] You received a clear explanation with examples
- [ ] Copilot generated functional async/await code
- [ ] The retry logic built on the previous context
- [ ] Inline chat refactored the code

#### 📚 Official Docs

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Quickstart Guide](https://docs.github.com/en/copilot/quickstart)
- [VS Code Extension Documentation](https://docs.github.com/en/copilot/managing-copilot/configure-personal-settings/installing-the-github-copilot-extension-in-your-environment)

#### 💭 Priya's Discovery

_"I just learned more in 10 minutes than I did in a week of being afraid to ask questions. And I can ask follow-up questions until I actually understand."_

#### 🚀 Challenge Extension

**Debug with Chat:** Paste this buggy code into a file and ask Copilot Chat to find the bugs:

```javascript
function calculateAverage(numbers) {
  let sum = 0;
  for (let i = 0; i <= numbers.length; i++) {
    sum += numbers[i];
  }
  return sum / numbers.length;
}

// This returns NaN - why?
console.log(calculateAverage([1, 2, 3, 4, 5]));
```

Ask: _"Why does this function return NaN? Explain the bug and fix it."_

---

## ➡️ Next Steps

Continue to [Module 2: Context and Configuration — Teaching Copilot Your Way](../02-context-and-configuration/README.md) to shape Copilot’s behavior with custom instructions and workspace context.

### Exercise 4: Context is Everything — "The Connected Codebase"

#### 📖 The Story

**Meet David.** He's a staff engineer who's been writing code for 20 years. He remembers when syntax mastery was everything—when knowing the obscure corners of C++ or Java made you invaluable. Now he's evaluating whether Copilot is actually useful, or just a fancy autocomplete.

His test: Can Copilot understand a project with multiple related files and generate code that _fits_?

#### 🎯 Objective

Understand how Copilot uses context from open files to generate more relevant suggestions.

#### 📋 Steps

1. **Create a project structure**

   Create these three files:

   **File 1: `models/customer.js`**

   ```javascript
   /**
    * Customer entity for the CRM system
    * @property {string} id - Unique identifier
    * @property {string} name - Customer's full name
    * @property {string} email - Primary email address
    * @property {string} tier - Membership tier: 'bronze', 'silver', 'gold', 'platinum'
    * @property {Date} memberSince - Date of first purchase
    */
   class Customer {
     constructor(id, name, email, tier, memberSince) {
       this.id = id;
       this.name = name;
       this.email = email;
       this.tier = tier;
       this.memberSince = memberSince;
     }

     getYearsAsMember() {
       const now = new Date();
       return Math.floor(
         (now - this.memberSince) / (365.25 * 24 * 60 * 60 * 1000)
       );
     }
   }

   module.exports = Customer;
   ```

   **File 2: `config/discounts.js`**

   ```javascript
   /**
    * Discount configuration for customer tiers
    * Percentages are expressed as decimals (0.10 = 10%)
    */
   const TIER_DISCOUNTS = {
     bronze: 0.05,
     silver: 0.1,
     gold: 0.15,
     platinum: 0.25,
   };

   const LOYALTY_BONUS = {
     yearsRequired: 5,
     additionalDiscount: 0.05,
   };

   module.exports = { TIER_DISCOUNTS, LOYALTY_BONUS };
   ```

2. **Keep both files open in VS Code tabs**

   - This is crucial—Copilot uses open files for context

3. **Create the service file**

   Create: `services/pricing-service.js`

   ```javascript
   const Customer = require('../models/customer');
   const { TIER_DISCOUNTS, LOYALTY_BONUS } = require('../config/discounts');

   /**
    * Pricing service for calculating customer-specific prices
    */
   class PricingService {

       // Start typing here and let Copilot complete
   ```

4. **Let Copilot generate methods**

   - With your cursor inside the class, type:
     ```javascript
     /**
      * Calculate the discount percentage for a customer
      * based on their tier and loyalty years
      */
     calculateCustomerDiscount(customer) {
     ```
   - Let Copilot complete the method
   - Notice how it uses `TIER_DISCOUNTS` and `LOYALTY_BONUS` from the config file
   - Notice how it calls `customer.getYearsAsMember()` from the Customer class

5. **Add another method**
   - Type:
     ```javascript
     /**
      * Calculate the final price for a customer
      */
     calculateFinalPrice(customer, basePrice) {
     ```
   - Observe how Copilot connects the dots

#### ✅ Success Criteria

- [ ] Copilot used constants from `discounts.js` (TIER_DISCOUNTS, LOYALTY_BONUS)
- [ ] Copilot used methods from `customer.js` (getYearsAsMember)
- [ ] The generated code is logically consistent with your project structure
- [ ] You didn't have to explain your project—Copilot inferred it

#### 📚 Official Docs

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Quickstart Guide](https://docs.github.com/en/copilot/quickstart)

#### 💭 David's Verdict

_"Okay, I'm convinced. This isn't autocomplete—it actually understands the project. It saw my Customer class, saw my discount config, and wrote code that connected them correctly. That's... actually useful."_

#### 🚀 Challenge Extension

**Test Context Limits:**

1. Close the `discounts.js` file (but keep `customer.js` open)
2. In `pricing-service.js`, ask Copilot to generate a new method
3. Notice how the suggestion quality changes without the config file context

**Experiment:** Try adding a detailed JSDoc comment at the top of the service file explaining the business rules. Does this improve suggestions even when related files are closed?

---

## 📝 Key Takeaways

| Concept                        | What You Learned                                                             |
| ------------------------------ | ---------------------------------------------------------------------------- |
| **Installation**               | Copilot runs as VS Code extensions—one for completions, one for chat         |
| **Licensing**                  | Business and Enterprise tiers have enhanced privacy (no data retention)      |
| **Comment-Driven Development** | Clear comments produce better suggestions—intent matters                     |
| **Copilot Chat**               | A judgment-free zone for learning, debugging, and complex generation         |
| **Context**                    | Open files, good comments, and clear naming dramatically improve suggestions |

### The Mindset Shift

The exercises in this module demonstrated a fundamental change in how we work:

- **Sarah** (15 years experience) discovered Copilot handles the formulas she used to look up
- **Marcus** (5 years experience) learned to express intent before writing code
- **Priya** (new developer) found a patient mentor who never tires of explaining
- **David** (20 years experience) saw that Copilot understands project structure, not just syntax

The common thread: **Copilot amplifies clarity**. The better you express what you want, the better it helps you build it.

---

## ➡️ Next Steps

Continue to [Module 2: Context and Configuration](../02-context-and-configuration/README.md) to learn how to customize Copilot's behavior, create documentation agents, and make Copilot follow your team's rules.

---

## 🔗 Additional Resources

**Official Documentation:**

- [GitHub Copilot Documentation](https://docs.github.com/en/copilot)
- [Quickstart Guide](https://docs.github.com/en/copilot/quickstart)
- [VS Code Extension Documentation](https://docs.github.com/en/copilot/managing-copilot/configure-personal-settings/installing-the-github-copilot-extension-in-your-environment)

**Learning Paths:**

- [Microsoft Learn: Introduction to GitHub Copilot](https://learn.microsoft.com/en-us/training/modules/introduction-to-github-copilot/)
- [GitHub Skills: Copilot Course](https://github.com/skills/copilot)

**Trust & Security:**

- [GitHub Copilot Trust Center](https://resources.github.com/copilot-trust-center/)
- [Privacy Statement](https://docs.github.com/en/site-policy/privacy-policies/github-copilot-privacy-statement)
