---
name: save
description: Take a complete snapshot of session state including Git commit hash and status before switching chat sessions
argument-hint: [session-notes]
---

# /save Protocol v2.2 (Git Checksum Snapshot)

Notes: $ARGUMENTS

1. **Capture Git Checksum**:
   - Record current Git commit hash (`git rev-parse HEAD`).
   - Record current uncommitted status (`git status --porcelain`).
2. **Update Hot Memory (`.agent/memory/hot_memory.json`)**:
   - Save active milestone, task progress (`- [x]`), modified files, `git_commit_hash`, and `git_dirty_status`.
3. **Archive Learnings & Failures (`.agent/memory/cold_memory.md`)**:
   - Append bugs, edge cases, and workarounds.
4. **Confirmation**:
   - Report: "Session snapshot saved with Git Checksum! Use `/resume` in fresh chat session to restore."
