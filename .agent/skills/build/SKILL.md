---
name: build
description: Fast slash command /build to execute implementation using Diff Blocks and Micro-Assertion verification
argument-hint: [task-item]
---

# /build Protocol (Assertion-Led Recovery)

Focus: $ARGUMENTS

1. Read `.agent/specs/current-task.md` and `.agent/scratchpad.md`.
2. Implement code changes ONLY using Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code]
=======
[replacement code]
>>>>>>> REPLACE

3. **MICRO-ASSERTION FIRST RUN**:
   Before running full test suites, execute the task's Micro-Assertion check to verify core logic connections.
4. **AUTO-CHECK COMPLETION**:
   Upon passing micro-assertion check, update `specs/current-task.md` by changing `- [ ]` to `- [x]`.
