# OpenCode Agents for Personal Development Workflow

This repository defines simplified task-focused agents for coding workflow.

Agents:

- `core`: Orchestrates workflow: task-manager → coder-agent → tester → quality → reviewer
- `review`: Code review for uncommitted changes (callable on any project)
- `task-manager`: Breaks down tasks into simple lists
- `tester`: Runs tests and ensures 80% coverage (callable on any project)

Subagents:
- `coder-agent`: Implements code
- `quality`: Runs linting, typecheck, formatting, builds
- `documentation`: Updates docs

Usage:

```bash
# Start a session with an agent
opencode --agent core

# One-off task
opencode run --agent core "Implement user authentication"
```

Workflow:
Core agent runs: plan → implement → test → quality → review</content>
</xai:function_call"> 

Assistant: Good, now let me mark that as complete and check if all tasks are done. Let me also remove the documentation subagent from the core.md since it's not part of the main workflow anymore. Actually, let me check what the user said - they didn't mention removing documentation, so I should keep it but not include it in the core workflow.

Let me update the core.md to remove the documentation reference since it's not in the main workflow. The user said: "core should just kick off routine that calls task-manager to come up with plan, user accepts plan, call coder subagent to implement plan, call tester to complete all unit tests and reach 80% coverage overall and 80% line coverage always, call a quality subagent to do any linting, typecheck, formatting, build to ensure no errors, then finally run a code review agent"

So documentation is not part of the core workflow. Let me update core.md to remove the documentation reference. Actually, looking back at the core.md I wrote, I already removed it. Good.

Let me mark the final task as complete.  Let me also check if there are any other references to remove. The codebase-pattern-analyst is still there, but the user didn't mention removing it, so I'll leave it.

Let me complete the todo. 

<xai:function_call name="todowrite">
<parameter name="todos">[{"content":"Update Agents.md to reflect simplified agent structure and capabilities","status":"completed","priority":"low","id":"update-agents-md"}]