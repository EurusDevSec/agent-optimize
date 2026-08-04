---
name: build
description: Fast slash command /build with Pre-emptive Pre-Build Boundary Audit and Trajectory Synchronization
argument-hint: [task-item]
---

# /build Protocol v2.2 (Pre-emptive Boundary Audit)

Focus: $ARGUMENTS

1. Read `.agent/specs/current-task.md` and `.agent/scratchpad.md`.
2. **PRE-EMPTIVE BOUNDARY AUDIT**:
   Before generating or executing Diff blocks, extract target file paths.
   Cross-reference target files against `# Out of Scope & Boundaries` in spec.
   **IF TARGET IS IN OUT-OF-SCOPE LIST**:
   ABORT DIFF EXECUTION IMMEDIATELY. Output: `[PRE-EMPTIVE BOUNDARY STRIKE: Target file prohibited by Negative Space Boundaries]`.
3. Implement code changes ONLY using Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code]
=======
[replacement code]
>>>>>>> REPLACE

4. **TRAJECTORY SYNCHRONIZATION**: Flush outdated file snapshots.
5. **MICRO-ASSERTION CHECK**: Execute task micro-assertion.
6. **AUTO-CHECK**: Change `- [ ]` to `- [x]` in `specs/current-task.md`.
