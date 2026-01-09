# Examples: Completed Configuration Files

This folder contains reference implementations for everything you'll build in the FanHub workshop. Use these to:

- ✅ **Check your work** — Compare your output to the reference
- ✅ **Get unstuck** — See what "done" looks like
- ✅ **Fast-track learning** — Copy configs if you want to skip ahead
- ✅ **Find inspiration** — See how to adapt patterns for different shows

---

## 📁 Folder Structure

```
examples/
├── completed-config/          # Full "finished" state (generic)
│   ├── .github/
│   │   ├── copilot-instructions.md    # Repository instructions
│   │   ├── prompts/                    # Custom prompt templates
│   │   └── agents/                     # Custom agents
│   ├── docs/
│   │   └── ARCHITECTURE.md
│   ├── visual-context/                 # Using images with Copilot
│   │   └── README.md
│   └── skills/                         # Claude extended capabilities
│       └── claude-skills.md
│
├── show-themes/               # Show-specific examples
│   ├── the-office/
│   ├── stranger-things/
│   └── breaking-bad/
│
└── quick-start/               # Minimal templates
    ├── minimal-instructions.md
    └── full-template.md
```

---

## 🗺️ Module → Example Mapping

| Module | Feature | What You Create | Reference File |
|--------|---------|-----------------|----------------|
| **Module 1** | Repository Instructions | `copilot-instructions.md` | [completed-config/.github/copilot-instructions.md](completed-config/.github/copilot-instructions.md) |
| **Module 1** | Documentation | `ARCHITECTURE.md` | [completed-config/docs/ARCHITECTURE.md](completed-config/docs/ARCHITECTURE.md) |
| **Module 2** | Custom Prompts | Test prompt files | [completed-config/.github/prompts/](completed-config/.github/prompts/) |
| **Module 3** | Custom Agents | Agent configuration files | [completed-config/.github/agents/](completed-config/.github/agents/) |
| **Module 4** | Custom Instructions | File-scoped instructions | [completed-config/.github/instructions/](completed-config/.github/instructions/) |
| **Appendix** | Visual Context | Using images with Copilot | [completed-config/visual-context/README.md](completed-config/visual-context/README.md) |
| **Appendix** | Show Theming | Theme customization | [show-themes/](show-themes/) |

---

## 🎯 The 4 Customization Features

This workshop teaches four ways to customize GitHub Copilot:

| # | Feature | What It Does | Example |
|---|---------|--------------|---------|
| 1 | **Repository Instructions** | Global context for every Copilot interaction | [copilot-instructions.md](completed-config/.github/copilot-instructions.md) |
| 2 | **Custom Prompts** | Reusable prompt templates with variables | [prompts/](completed-config/.github/prompts/) |
| 3 | **Custom Agents** | Specialized AI assistants for specific tasks | [agents/](completed-config/.github/agents/) |
| 4 | **Custom Instructions** | File-scoped context via `applyTo` patterns | [instructions/](completed-config/.github/instructions/) |

---

## 🚀 Quick Start Options

### Option 1: Start from Scratch (Recommended)
Follow the modules and create everything yourself. Use examples only to check your work.

### Option 2: Copy and Customize
Copy `completed-config/.github/` to your FanHub project, then customize for your show.

### Option 3: Use a Show Theme
Copy one of the `show-themes/` folders if you're building for The Office, Stranger Things, or Breaking Bad.

---

## 📝 How Examples Are Organized

### Generic Examples (`completed-config/`)
These use placeholder content like `[YOUR_SHOW]` that you'd replace with your chosen show. They demonstrate the structure and patterns without being tied to a specific theme.

### Show-Specific Examples (`show-themes/`)
Fully themed examples for popular shows. Copy these directly if you're building for that show, or use them as inspiration for your own theme.

### Quick Start Templates (`quick-start/`)
Minimal and comprehensive templates you can copy as starting points.

---

## ⚠️ Important Notes

1. **Don't just copy-paste** — The learning happens in the creation process
2. **Adapt to your project** — These are templates, not one-size-fits-all solutions
3. **Examples may drift** — If examples don't match exercise instructions, trust the module content
4. **Your version may differ** — That's okay! These are references, not requirements

---

## 🎯 Best Practice

1. **Try the exercise first** without looking at examples
2. **Compare when stuck** or after completing
3. **Note differences** and understand why they exist
4. **Iterate and improve** your version based on what you learn

The goal isn't to match the examples exactly—it's to understand the patterns well enough to create your own.
