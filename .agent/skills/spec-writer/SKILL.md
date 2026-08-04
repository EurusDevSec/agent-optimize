---
name: spec-writer
description: Creates structured specification and task checklist before coding
argument-hint: <feature-description>
---

# Feature Specification Protocol

Task: $ARGUMENTS

1. Analyze current repository structure using `fd` and `rg`.
2. Generate `specs/SPEC-<id>_<name>.md` with the following structure:
   - **Goal**: Clear 1-sentence objective.
   - **Architecture Impact**: Files to modify / create.
   - **Task Checklist**: Small atomic checkboxes [ ].
   - **Verification Strategy**: Exact command to test this task.
3. DO NOT generate application code yet. Prompt user to approve `specs/SPEC-<id>_<name>.md`.
