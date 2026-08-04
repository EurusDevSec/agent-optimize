---
name: challenge
description: Adversarial Principal Engineer audit to stress-test spec feasibility, edge cases, and schema alignment before unlocking /plan
argument-hint: [spec-name]
---

# /challenge Protocol v2.1 (Principal Engineer Adversarial Audit)

1. Read `.agent/specs/current-task.md`.
2. **Adversarial Audit**:
   Act as a critical Principal Engineer. Identify at least 2 potential architectural flaws, edge cases, or schema mismatches in the spec:
   - *Are schema types aligned with current database models?*
   - *Are error/boundary conditions handled explicitly?*
   - *Are there hidden performance or security regressions?*
3. **Verdict**:
   - If flaws identified: Update `.agent/specs/current-task.md` with explicit remediation notes and request spec adjustment.
   - If spec passes audit: Append `## Principal Engineer Audit: PASSED` to spec and unlock `/plan`.
