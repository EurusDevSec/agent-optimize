---
name: ship
description: Fast slash command /ship to verify DoD, compute Spec Checksum, bind Git commit, and archive
argument-hint: <commit-message>
---

# /ship Protocol v2.0 (Spec-as-Source Checksum Traceability)

Message: $ARGUMENTS

1. Verify `.agent/specs/current-task.md` against Definition of Done.
2. Compute `spec_checksum` (SHA256 hash of `.agent/specs/current-task.md`).
3. Bind `spec_checksum` to current Git commit hash in `.agent/memory/hot_memory.json`.
4. Archive `specs/current-task.md` into `specs/archive/`.
