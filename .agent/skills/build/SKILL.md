---
name: build
description: Fast slash command /build to execute Diff implementation with Trajectory Synchronization and Micro-Assertions
argument-hint: [task-item]
---

# /build Protocol v2.0 (Trajectory Synchronization)

Focus: $ARGUMENTS

1. Read `.agent/specs/current-task.md` and `.agent/scratchpad.md`.
2. Implement code changes ONLY using Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code]
=======
[replacement code]
>>>>>>> REPLACE

3. **TRAJECTORY SYNCHRONIZATION**:
   Flush previous outdated file snapshots from context trajectory. Maintain strictly ONE active snapshot per file.
4. **MICRO-ASSERTION CHECK**: Run micro-assertion test to verify logic boundaries before full test suite.
5. **AUTO-CHECK**: Update `specs/current-task.md` changing `- [ ]` to `- [x]`.
