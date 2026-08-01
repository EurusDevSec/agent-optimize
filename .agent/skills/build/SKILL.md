---
name: build
description: Fast slash command /build to execute task implementation using Diff Blocks and auto-check completed tasks
argument-hint: [task-number-or-name]
---

# /build Protocol

Focus: $ARGUMENTS

1. Read `specs/current-task.md` and `.agent/scratchpad.md`.
2. Implement code changes ONLY using Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code]
=======
[replacement code]
>>>>>>> REPLACE

3. **AUTO-CHECK TASK COMPLETION**:
   Upon completing the diff implementation and passing verification of a task item, IMMEDIATELY update `specs/current-task.md` by changing `- [ ]` to `- [x]` for that specific item.
