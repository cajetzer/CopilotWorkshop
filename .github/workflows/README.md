# GitHub Actions Workflows

This directory contains automated workflows for the CopilotTraining repository.

## Workflows

### Auto-Assign Issues to Copilot (`autoassign.yml`)

**Purpose**: Automatically assigns newly created issues to the GitHub Copilot coding agent.

**Trigger**: Runs automatically when a new issue is opened in the repository.

**What it does**:
1. Detects when a new issue is created
2. Uses the GitHub API to assign the issue to `github-copilot[bot]`
3. Logs success or failure messages for debugging
4. Gracefully handles errors without failing the workflow

**Permissions**: Requires `issues: write` permission to assign issues.

**How it works**:
```yaml
on:
  issues:
    types: [opened]  # Triggers on new issues
```

The workflow uses the GitHub REST API to add the Copilot bot as an assignee:
```javascript
await github.rest.issues.addAssignees({
  owner: context.repo.owner,
  repo: context.repo.repo,
  issue_number,
  assignees: ['github-copilot[bot]']  // Correct format for Copilot bot
});
```

**Important Notes**:
- The correct username format for the Copilot bot is `github-copilot[bot]` (not `@copilot` or `copilot`)
- This feature requires a GitHub Copilot Business or Enterprise subscription
- The Copilot coding agent must be enabled for your organization/repository
- If assignment fails, the workflow will log an error but won't fail, allowing manual assignment as a fallback

**Manual Assignment Alternative**:
You can also manually assign issues to Copilot:
1. Open an issue on GitHub
2. Click "Assignees" in the right sidebar
3. Type `@copilot` or select the Copilot bot from the list

## References

- [GitHub Copilot Coding Agent Documentation](https://docs.github.com/en/copilot/how-tos/use-copilot-agents/coding-agent)
- [Assign Issues to Copilot using the API](https://github.blog/changelog/2025-12-03-assign-issues-to-copilot-using-the-api/)
- [GitHub Actions: github-script](https://github.com/actions/github-script)
