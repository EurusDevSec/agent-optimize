---
name: spec
description: Fast slash command /spec to generate Hybrid Spec Contract with Gherkin Syntax and Clarification Freeze
argument-hint: <task-description>
---

# /spec Protocol v2.0 (SDD 2.0 Executable Contract)

Description: $ARGUMENTS

1. Inspect prompt intent. If underspecified or Confidence < 90%:
   - OUTPUT SIGNAL: `[NEEDS CLARIFICATION]`
   - Return structured JSON array of clarifying questions to User.
   - FREEZE execution until User provides answers.
2. Once clarified, populate `.agent/specs/current-task.md` using **Hybrid Format**:
   - Flat YAML for API Contracts and Schemas.
   - Gherkin Syntax (`Scenario / Given / When / Then`) for Acceptance Criteria.
   - Mandate `# Out of Scope & Boundaries` with 3 explicit negative bounds.
