---
name: plan
description: Fast slash command /plan to deconstruct spec into atomic work items with Micro-Assertion checks
argument-hint: [spec-name]
---

# /plan Protocol (Assertion-Led Planning)

1. Read `.agent/specs/current-task.md`.
2. Deconstruct spec into atomic tasks (< 15 mins work each).
3. **MANDATORY MICRO-ASSERTION REQUIREMENT**:
   For each task item, mandate a Micro-Assertion check to catch silent logic failures (e.g., `assert output.status_code == 200`, `assert isinstance(data, dict)`).
4. Populate `.agent/specs/current-task.md` with atomic checkboxes `[ ]`.
