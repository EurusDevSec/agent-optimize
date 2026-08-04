---
name: build
description: Execute Level 3 sub-tasks via Diff blocks with Spec-Reflector 2-way sync and parent checkbox computation
argument-hint: [sub-task-item]
---

# /build Protocol v2.3 (Spec-Reflector & Diff Execution)

1. Read active Spec Contract `.agent/specs/SPEC-<id>_<feature_name>.md`.
2. **PRE-EMPTIVE BOUNDARY AUDIT**: Intercept diffs targeting `⛔ Negative Space Boundaries`.
3. **[NEW] FILE ANCHOR PROTECTION**: If target sub-task is flagged `[NEW]`, automatically touch/create empty file before diff execution.
4. Execute code changes using Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code]
=======
[replacement code]
>>>>>>> REPLACE

5. **SPEC-REFLECTOR 2-WAY SYNC**: If diff alters code structure/types, automatically update `# 📐 2. TECHNICAL ARCHITECTURE` in real-time to maintain a Living Spec.
6. **DETERMINISTIC PARENT CHECKBOX COMPUTATION**: Agent ONLY ticks Level 3 sub-tasks (`- [x]`). Eurus Engine automatically checks Parent Task (`Level 2`) when 100% of children are checked.
7. **TRAJECTORY SYNCHRONIZATION**: Flush outdated file snapshots.
