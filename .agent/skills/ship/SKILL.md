---
name: ship
description: Fast slash command /ship to verify Definition of Done, commit task, update hot memory, and archive spec
argument-hint: <commit-message-summary>
---

# /ship Protocol (Synthesis & Checkpoint)

Message: $ARGUMENTS

1. Verify `specs/current-task.md` against `.agent/references/definition-of-done.md`.
2. Synthesize final validation report across Architect, Security, and Tester personas.
3. Update `.agent/memory/hot_memory.json` with new learnings and checkpoint state.
4. Append major architectural decisions to `.agent/memory/cold_memory.md` if applicable.
5. Archive `specs/current-task.md` into `specs/archive/`.
6. Reset `.agent/scratchpad.md`.
7. Advise User to execute `/clear` to reset Context Window.
