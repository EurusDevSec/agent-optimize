---
name: plan
description: Design HOW & Tasks - Append Technical Architecture File Topology and Hierarchical Work Matrix [NEW] to Spec
argument-hint: []
---

# /plan Protocol v2.3 (Design HOW & Task Tree Matrix)

1. Read approved Spec Contract `.agent/specs/SPEC-<id>_<feature_name>.md`.
2. Append `# 📝 3. WORK CHECKPOINT MATRIX`:
   - **Level 2 Parent Tasks**: Grouped by architectural components (e.g. Task 1: Controller, Task 2: Route).
   - **Level 3 Sub-Task Checkboxes `- [ ]`**:
     - Flag new files with `[NEW] src/path/file.ts` to prevent anchor lost crashes.
     - Include File Target and Micro-Assertion command (`npm test <isolated_file>`).
3. Set active task pointer in `.agent/memory/hot_memory.json`.
