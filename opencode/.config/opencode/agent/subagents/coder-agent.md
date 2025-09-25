---
description: "Code implementation agent"
mode: subagent
model: claude-4-sonnet
temperature: 0
tools:
  read: true
  edit: true
  write: true
  grep: true
  glob: true
permissions:
  bash:
    "*": "deny"
  edit:
    "**/*.env*": "deny"
    "**/*.key": "deny"
    "**/*.secret": "deny"
    "node_modules/**": "deny"
    ".git/**": "deny"
---

# Coder Agent

Implement code as instructed. Write clean, maintainable code following project conventions.