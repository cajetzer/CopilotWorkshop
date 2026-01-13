# Workshop Update Plan: December 2025 GitHub Copilot Features

**Date**: January 13, 2026  
**Author**: Workshop Update Planning  
**Status**: Planning Phase

---

## Executive Summary

This document outlines a comprehensive plan to update the CopilotTraining workshop to incorporate new GitHub Copilot functionality announced in December 2025. The updates will enhance the existing 11-module structure while maintaining the workshop's narrative-driven, persona-based approach.

---

## 🆕 New Features to Integrate

Based on the December 2025 announcements, the following features need to be incorporated:

### 1. Agent Skills (Now Generally Available)
**Status**: Already partially covered in Module 5, needs expansion  
**Impact**: HIGH - This is a major feature that's now officially supported

**What Changed**:
- Agent Skills moved from experimental to generally available
- Skills are now supported across Copilot coding agent, Copilot CLI, and VS Code
- New standard format with YAML frontmatter in SKILL.md files
- Skills can be project-level (`.github/skills/`), user-level (`~/.copilot/skills/`), or org-level
- Integration with community repositories (anthropics/skills, github/awesome-copilot)

**Current Coverage**: Module 5 introduces Agent Skills
**Updates Needed**:
- Expand Module 5 with official skill format documentation
- Add exercises for user-level and org-level skill scoping
- Include community skill discovery and integration exercises
- Update examples to reflect official YAML frontmatter format
- Add skill discovery and auto-loading demonstrations

### 2. Background and Cloud Agents (VS Code 1.107+)
**Status**: NEW - Not currently covered  
**Impact**: HIGH - Transforms workflow patterns

**What's New**:
- Agent HQ interface for orchestrating multiple agents
- Background agents run in isolated workspaces using Git worktrees
- "Continue in" option to move tasks between local, background, and cloud agents
- Agents continue running even when chat window is closed
- Session archiving and management

**Current Coverage**: Module 7 covers Custom Agents, Module 10 covers orchestration
**Updates Needed**:
- NEW Module 7.5: Background and Cloud Agents OR expand Module 7
- Add Agent HQ exercises to Module 10 (Agentic SDLC)
- Update Module 7 with background agent capabilities
- Add exercises for parallel agent execution
- Document Git worktree isolation patterns

### 3. Auto Model Selection (Generally Available)
**Status**: NEW - Not currently covered  
**Impact**: MEDIUM - Performance and cost optimization

**What's New**:
- Automatic model selection based on availability, subscription, and org policies
- Dynamic routing to GPT-5.1-Codex-Max, GPT-5 mini, GPT-4.1, Claude Sonnet 4.5, Haiku 4.5
- 10% discount on premium requests when using "Auto" mode
- Transparent model usage with hover tooltips

**Current Coverage**: Not mentioned
**Updates Needed**:
- Add section to Module 0 (Orientation) or Module 1 explaining model selection
- Include best practices in Module 11 (Enterprise Patterns)
- Add note to Module 7 about agent model selection
- Update enterprise governance discussions with model policy controls

### 4. Copilot Code Review for Unlicensed Org Members
**Status**: NEW - Not currently covered  
**Impact**: MEDIUM - Expands organizational adoption

**What's New**:
- Organization members without Copilot licenses can use code review features
- Organization pays via premium requests rather than per-seat licensing
- Requires opt-in by admin with premium request paid usage enabled

**Current Coverage**: Module 8 mentions code review, Module 11 covers enterprise patterns
**Updates Needed**:
- Add section to Module 11 on licensing strategies
- Update Module 8 with unlicensed code review capabilities
- Add organizational policy and cost management discussion
- Create exercise for enabling organization-wide code review

### 5. Issue Assignment Auto-adds User as Assignee
**Status**: NEW - Not currently covered  
**Impact**: LOW - Quality of life improvement

**What's New**:
- When assigning an issue to Copilot, the assigner is automatically added as an assignee
- Improves issue tracking and filtering (e.g., `assignee:@me`)
- Better visibility into Copilot-driven work

**Current Coverage**: Module 8 covers GitHub.com Copilot features
**Updates Needed**:
- Add note to Module 8 about the auto-assignment behavior
- Update issue creation exercises to reflect this change
- Minor documentation update, no major structural changes needed

---

## 📋 Module-by-Module Update Plan

### Module 0: Orientation
**Current Focus**: Introduction, setup, mindset  
**Updates**:
- ✅ Add brief explanation of auto model selection
- ✅ Update prerequisites to mention VS Code 1.107+ recommended
- ✅ Add note about background agents as a preview feature

### Module 1: Repository Instructions
**Current Focus**: Architecture documentation, copilot-instructions.md  
**Updates**:
- ✅ Minor: Add note about model selection respecting org policies
- No structural changes needed

### Module 2: Agent Plan Mode
**Current Focus**: Structured thinking, planning before implementation  
**Updates**:
- ✅ Add note that plan mode can be used with background agents
- Minor: Update screenshots if UI has changed

### Module 3: Custom Prompts
**Current Focus**: Reusable prompt templates  
**Updates**:
- No changes needed

### Module 4: Custom Instructions
**Current Focus**: File-scoped instructions with applyTo patterns  
**Updates**:
- No changes needed

### Module 5: Agent Skills ⭐ MAJOR UPDATE
**Current Focus**: Domain-specific skills  
**Updates**:
- ✅ **HIGH PRIORITY**: Update skill format to official YAML frontmatter standard
- ✅ Add exercises for user-level skills (`~/.copilot/skills/`)
- ✅ Add section on community skill repositories
- ✅ Add skill discovery and auto-loading demonstration
- ✅ Update examples to match official documentation format
- ✅ Add section: "Skills vs Instructions vs Prompts" comparison table
- ✅ Expand skill design exercises with official best practices

**New Exercises**:
- 5.4: Discover and integrate a community skill from anthropics/skills
- 5.5: Create a user-level skill for personal coding patterns
- 5.6: Test skill auto-loading with different contexts

### Module 6: MCP Servers
**Current Focus**: External system connections  
**Updates**:
- ✅ Add note that MCP works with background agents
- Minor: Update security section to mention background agent isolation

### Module 7: Custom Agents ⭐ MAJOR UPDATE
**Current Focus**: Autonomous agents using all customization  
**Updates**:
- ✅ **HIGH PRIORITY**: Add section on background agents
- ✅ Add section on Agent HQ interface
- ✅ Add exercise: Running agents in background vs foreground
- ✅ Add exercise: Using Git worktrees for isolation
- ✅ Add "Continue in" workflow pattern
- ✅ Update payoff narrative to include parallel execution

**New Exercises**:
- 7.4: Run Character Detail v2 build in background agent
- 7.5: Use Agent HQ to manage multiple agents simultaneously
- 7.6: Archive and resume agent sessions

### Module 8: GitHub.com Copilot for Product Management
**Current Focus**: Web-based workflows for non-developers  
**Updates**:
- ✅ Add section on code review for unlicensed users
- ✅ Add note about auto-assignment when assigning issues to Copilot
- ✅ Update Exercise 8.2 (PR validation) with unlicensed access context

**New Section**:
- 8.6: Code review as an unlicensed organization member

### Module 9: Copilot CLI
**Current Focus**: Terminal-based AI workflows  
**Updates**:
- ✅ Add note that CLI supports Agent Skills
- ✅ Update CLI agent examples to show background execution
- Minor: Verify all commands work with latest CLI version

### Module 10: Agentic SDLC ⭐ MAJOR UPDATE
**Current Focus**: Multi-interface orchestration  
**Updates**:
- ✅ **HIGH PRIORITY**: Expand parallel workflow section with Agent HQ
- ✅ Add exercise for orchestrating multiple background agents
- ✅ Add "agent handoff" patterns (continue in background/cloud)
- ✅ Update narrative: Team runs multiple agents in parallel using Agent HQ

**New Exercises**:
- 10.2: Launch 3 background agents for search, analytics, and tests simultaneously
- 10.3: Use Agent HQ to monitor progress and manage sessions
- 10.4: Practice agent handoff patterns

### Module 11: Enterprise Patterns ⭐ MAJOR UPDATE
**Current Focus**: Scaling across organization  
**Updates**:
- ✅ **HIGH PRIORITY**: Add section on organizational skill libraries
- ✅ Add section on licensing strategies (unlicensed code review)
- ✅ Add section on model policy governance (auto model selection)
- ✅ Add cost management for premium requests
- ✅ Update org-instructions template with skill and model policies

**New Sections**:
- 11.5: Managing organizational skill libraries
- 11.6: Licensing strategies and cost management
- 11.7: Model governance and auto-selection policies

---

## 📚 New Documentation Needs

### New Files to Create

1. **docs/BACKGROUND-AGENTS-GUIDE.md**
   - What are background agents?
   - When to use background vs local agents
   - Git worktree isolation explained
   - Agent HQ interface guide
   - Session management best practices

2. **docs/AGENT-SKILLS-OFFICIAL-FORMAT.md**
   - Official YAML frontmatter specification
   - SKILL.md structure
   - Skill scoping (project/user/org)
   - Community skill integration
   - Skill design patterns

3. **docs/MODEL-SELECTION-GUIDE.md**
   - How auto model selection works
   - When to use Auto vs manual selection
   - Understanding premium request multipliers
   - Organizational model policies
   - Cost optimization strategies

4. **docs/UNLICENSED-CODE-REVIEW.md**
   - What unlicensed code review means
   - How to enable for your organization
   - Cost implications
   - Use cases and best practices
   - Analytics and tracking

### Files to Update

1. **README.md**
   - Add background agents to feature list
   - Update VS Code version requirement (1.107+)
   - Add note about generally available vs preview features

2. **OUTLINE.md**
   - Update Module 5, 7, 10, 11 descriptions
   - Add new exercise counts
   - Update time estimates if needed

3. **RESOURCES.md**
   - Add links to new official documentation
   - Add anthropics/skills community repository
   - Add VS Code 1.107 release notes
   - Add GitHub changelog links for December 2025 announcements

4. **examples/completed-config/**
   - Update skill examples to official format
   - Add background agent configuration examples
   - Add model selection settings examples
   - Update org-level templates with new features

---

## 🎯 Priority Roadmap

### Phase 1: Critical Updates (Week 1-2)
**Goal**: Update existing modules with breaking changes

1. ✅ Update Module 5 (Agent Skills) to official format
2. ✅ Create AGENT-SKILLS-OFFICIAL-FORMAT.md documentation
3. ✅ Update all skill examples in examples/completed-config/skills/
4. ✅ Add background agent basics to Module 7
5. ✅ Update README.md and OUTLINE.md with new features

### Phase 2: New Feature Integration (Week 3-4)
**Goal**: Add comprehensive coverage of new features

6. ✅ Expand Module 7 with full background agent exercises
7. ✅ Create BACKGROUND-AGENTS-GUIDE.md
8. ✅ Update Module 10 with Agent HQ orchestration
9. ✅ Add new exercises for parallel agent workflows
10. ✅ Update Module 11 with enterprise-level skill management

### Phase 3: Enhanced Content (Week 5-6)
**Goal**: Add supporting documentation and examples

11. ✅ Create MODEL-SELECTION-GUIDE.md
12. ✅ Create UNLICENSED-CODE-REVIEW.md
13. ✅ Add model selection content to Module 0 and Module 11
14. ✅ Update Module 8 with unlicensed code review exercises
15. ✅ Add auto-assignment documentation to Module 8

### Phase 4: Testing and Polish (Week 7-8)
**Goal**: Ensure all content works end-to-end

16. ✅ Test all updated exercises with VS Code 1.107+
17. ✅ Verify skill auto-loading works as documented
18. ✅ Test background agent workflows
19. ✅ Update screenshots and recordings
20. ✅ Community testing and feedback
21. ✅ Final documentation review

---

## 📊 Impact Assessment

### High Impact Changes
- **Module 5 (Agent Skills)**: Format change requires example and documentation updates
- **Module 7 (Custom Agents)**: Background agents fundamentally change workflow patterns
- **Module 10 (Agentic SDLC)**: Agent HQ enables true parallel orchestration
- **Module 11 (Enterprise)**: New governance areas (skills, models, licensing)

### Medium Impact Changes
- **Module 8 (Web)**: Unlicensed code review expands audience
- **Module 9 (CLI)**: Agent Skills integration extends CLI capabilities
- **Module 0 (Orientation)**: Auto model selection context-setting

### Low Impact Changes
- **Modules 1-4**: Minor notes and context updates
- **Module 6 (MCP)**: Background agent compatibility notes

---

## ✅ Success Criteria

This update will be successful when:

1. ✅ All Agent Skill examples use official YAML frontmatter format
2. ✅ Module 7 includes comprehensive background agent coverage
3. ✅ Module 10 demonstrates Agent HQ multi-agent orchestration
4. ✅ Module 11 covers organizational skill library management
5. ✅ Documentation references are updated to December 2025 versions
6. ✅ All exercises work with VS Code 1.107+
7. ✅ New features are integrated into the existing narrative flow
8. ✅ Workshop maintains its story-driven, persona-based approach

---

## 🤝 Community Involvement

### Ways to Contribute

1. **Test the updates**: Run through updated modules and report issues
2. **Share community skills**: Contribute useful skills to the examples
3. **Document patterns**: Add background agent workflow patterns you discover
4. **Provide feedback**: Open issues for clarity or accuracy improvements

### Communication Plan

- **GitHub Issues**: Track update progress with labels (`update-2025-12`, `agent-skills`, `background-agents`)
- **Discussions**: Gather community input on priority and approach
- **Pull Requests**: Welcome contributions aligned with this plan
- **Release Notes**: Document changes as they're completed

---

## 📝 Notes and Considerations

### Backward Compatibility
- Keep examples working for users on older VS Code versions where possible
- Clearly mark features that require VS Code 1.107+ or specific Copilot tiers
- Maintain free-tier content as primary path, with Business/Enterprise as optional

### Narrative Continuity
- Background agents fit naturally into Module 7's "payoff" narrative
- Agent HQ fits Module 10's orchestration story
- Skills update maintains Module 5's domain expertise focus
- New enterprise features align with Module 11's scaling theme

### Feature Tiers
- Agent Skills: 🆓 Free (all tiers)
- Background Agents: 🆓 Free (VS Code 1.107+)
- Auto Model Selection: 🆓 Free (all tiers, discount for Pro+)
- Unlicensed Code Review: 💼 Business/Enterprise (org pays)
- Agent HQ: 🆓 Free (VS Code 1.107+)

---

## 🔗 Reference Links

### Official Documentation
- [GitHub Copilot Agent Skills](https://docs.github.com/en/copilot/concepts/agents/about-agent-skills)
- [VS Code 1.107 Release Notes](https://code.visualstudio.com/updates/v1_107)
- [Background Agents Guide](https://code.visualstudio.com/docs/copilot/agents/background-agents)
- [Auto Model Selection](https://docs.github.com/en/copilot/concepts/auto-model-selection)
- [Copilot Code Review](https://docs.github.com/copilot/code-review)

### Changelog Links
- [Agent Skills Announcement](https://github.blog/changelog/2025-12-18-github-copilot-now-supports-agent-skills/)
- [Auto Model Selection GA](https://github.blog/changelog/2025-12-10-auto-model-selection-is-generally-available-in-github-copilot-in-visual-studio-code/)
- [Unlicensed Code Review](https://github.blog/changelog/2025-12-17-copilot-code-review-now-available-for-organization-members-without-a-license/)
- [Issue Assignment Auto-assignee](https://github.blog/changelog/2025-12-18-assigning-github-copilot-to-an-issue-now-adds-you-as-an-assignee/)

### Community Resources
- [anthropics/skills Repository](https://github.com/anthropics/skills)
- [github/awesome-copilot Collection](https://github.com/github/awesome-copilot)

---

## 📅 Timeline Summary

| Phase | Duration | Key Deliverables |
|-------|----------|------------------|
| **Phase 1** | Week 1-2 | Agent Skills format update, basic background agents |
| **Phase 2** | Week 3-4 | Full background agent coverage, Agent HQ exercises |
| **Phase 3** | Week 5-6 | Supporting documentation, enterprise features |
| **Phase 4** | Week 7-8 | Testing, polish, community feedback |

**Target Completion**: 8 weeks from start date

---

## 📞 Contact

For questions about this update plan, please:
- Open an issue in the repository
- Start a discussion in GitHub Discussions
- Tag updates with `update-2025-12` label

---

**Last Updated**: January 13, 2026  
**Next Review**: Weekly during update phases
