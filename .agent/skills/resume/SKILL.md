---
name: resume
description: Hydrate fresh chat session with Git Checksum validation to prevent stale context drift
argument-hint: []
---

# /resume Protocol v2.2 (Git Drift Validation)

1. Read `.agent/memory/hot_memory.json`.
2. **Validate Git Checksum**:
   - Compare recorded `git_commit_hash` with current `git rev-parse HEAD`.
   - Compare recorded `git_dirty_status` with current `git status --porcelain`.
   - **IF DRIFT DETECTED**:
     Output warning: `[GIT DRIFT DETECTED: Local branch/files changed since /save]`.
     Refuse to load stale memory blindly. Trigger automatic quick `/init` re-verification scan.
3. **IF VALIDATED**:
   - Load task contract and unchecked `[ ]` items from `.agent/specs/current-task.md`.
   - Report: *"Session restored cleanly! Active task verified against Git HEAD."*
