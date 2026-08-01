---
name: ship
description: Fast slash command /ship to finalize task, commit changes, and update hot memory
argument-hint: <commit-message-summary>
---

# /ship Protocol

Message: $ARGUMENTS

1. Verify all checkboxes in `specs/current-task.md` are marked completed `[x]`.
2. Update `.agent/memory/hot_memory.json` with new learnings and active task state.
3. Move `specs/current-task.md` to `specs/archive/`.
4. Reset `.agent/scratchpad.md`.
5. Suggest user run `/clear` to reset context window.
