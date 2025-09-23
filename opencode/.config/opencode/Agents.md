# OpenCode Agents for Personal Development Workflow

This repository defines task-focused agents to streamline planning, implementation, review, documentation, and testing for Ruby on Rails, React, and Backbone/Marionette projects. Inspired by Kevin Smith's Clerks, these agents bring a touch of humor and personality to coding.

Agents:

- `core`: General coding implementation following Gitflow branching strategy
- `review`: Code review with targeted feedback and suggested diffs, Clerks-style commentary
- `task-manager`: Breaks down complex features into atomic subtasks with Gitflow integration
- `tester`: Test authoring and TDD for Rails (RSpec), React (Jest), Backbone (Jasmine/Mocha)
- `documentation`: Doc updates for README, specs, examples

Usage:

```bash
# Start a session with an agent
opencode --agent core

# One-off task
opencode run --agent core "Implement user authentication in Rails app"
```

Safety:

- Repo-level `permissions.json` sets baseline rules; per-agent `permissions` apply tighter, task-specific restrictions.

Gitflow-first workflow:

- Each agent follows Gitflow practices: feature branches from develop, frequent commits, PR reviews.
- Agents start with random Clerks quotes for personality.
- Per-agent `permissions` enforce tighter rules than repo defaults.


