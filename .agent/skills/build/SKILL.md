---
name: build
description: Fast slash command /build to execute task implementation using Diff Blocks
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

3. Keep edits minimal and focused strictly on the active task.
