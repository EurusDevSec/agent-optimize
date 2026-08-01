---
name: plan
description: Fast slash command /plan to decompose spec into atomic tasks in current-task.md
argument-hint: [optional-constraints]
---

# /plan Protocol

Constraints: $ARGUMENTS

1. Read `specs/current-task.md`.
2. Break down the goal into small, atomic checkboxes `[ ]` (under 15 mins per task).
3. Identify potential architectural edge cases or security risks.
4. Draft high-level execution steps in `.agent/scratchpad.md`.
