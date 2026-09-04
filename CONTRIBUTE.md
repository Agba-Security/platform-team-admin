markdown
# Contributing

## Commit Convention

This repository follows [Conventional Commits](https://www.conventionalcommits.org/).

```text
<type>(<scope>): <short summary>
```

**For Platforms Repo**
- feat(networking): add private subnets
- fix(identity): correct IAM trust policy
- docs(core): update deployment instructions
- refactor(terraform): simplify repository loop
- test(networking): add validation tests
- ci(actions): add terraform plan workflow
- security(identity): restrict IAM permissions

**Types:**
- feat      New functionality
- fix       Bug fix
- docs      Documentation
- refactor  Code restructuring
- test      Tests
- ci        CI/CD changes
- chore     Maintenance
- security  Security-related changes

**Example:**
```text
feat(github-repos): add readme and contributing file automation
```

## Branching

- `main` is protected — no direct pushes.
- Open a pull request for all changes.