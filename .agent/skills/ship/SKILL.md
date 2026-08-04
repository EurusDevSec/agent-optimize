---
name: ship
description: Validate DoD, compute spec_checksum SHA256, auto-update ROADMAP.md Feature [x], and archive Spec
argument-hint: []
---

# /ship Protocol v2.3 (Milestone Auto-Update & DoD Sync)

1. Read active Spec Contract `.agent/specs/SPEC-<id>_<feature_name>.md` and `.agent/references/definition-of-done.md`.
2. Run full verification suite (`/test` & `/review`).
3. Compute SHA256 `spec_checksum` of the Spec Contract and bind to Git commit hash.
4. **AUTO-UPDATE ROADMAP MASTER**:
   - Open `.agent/docs/ROADMAP.md`.
   - Mark active Feature as `- [x] **Feature <id>: <name>** (COMPLETED - Checksum: <sha256>)`.
5. Move `.agent/specs/SPEC-<id>_<feature_name>.md` to `.agent/specs/archive/`.
6. Update `.agent/memory/hot_memory.json` to point to the next active Feature in `ROADMAP.md`.
