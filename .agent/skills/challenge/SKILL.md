---
name: challenge
description: Adversarial Principal Engineer audit to stress-test spec for architectural & edge-case risks before /plan
argument-hint: []
---

# /challenge Protocol v2.3 (Adversarial Spec Audit)

1. Read active Spec Contract `.agent/specs/SPEC-<id>_<feature_name>.md`.
2. Perform adversarial audit across 3 dimensions:
   - Edge Cases & Missing Validation in Gherkin Scenarios.
   - Schema Type Safety & Performance in Flat YAML.
   - Negative Space Boundary Security & Side-Effect Risks.
3. Auto-patch identified flaws into the Spec Contract.
4. Output audit report and unlock `/plan`.
