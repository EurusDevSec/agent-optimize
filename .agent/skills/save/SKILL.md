---
name: save
description: Take a complete snapshot of current chat session state, save hot memory, and append lessons to cold memory before switching sessions
argument-hint: [session-notes]
---

# /save Protocol (Cross-Session State Snapshot)

Notes: $ARGUMENTS

1. **Capture Active State**:
   - Inspect `.agent/specs/current-task.md` for checked `- [x]` vs remaining `- [ ]` tasks.
   - List all files modified during current session.
2. **Update Hot Memory (`.agent/memory/hot_memory.json`)**:
   - Save active milestone, current task, modified files, and last successful checkpoint.
3. **Archive Learnings & Failures (`.agent/memory/cold_memory.md`)**:
   - Append any bugs, edge cases, or architectural workarounds discovered during session.
4. **Output Confirmation**:
   - Report: "Session state saved! You can now start a fresh chat session safely. Use `/resume` in the new session to pick up immediately."
