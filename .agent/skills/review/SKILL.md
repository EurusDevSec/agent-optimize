---
name: review
description: Execute Constitutional SDD audit and refactoring with a hard 10,000 Output Token Budget Cap
argument-hint: [target-files]
---

# /review & /simplify Protocol v2.3 (Token Budget Cap)

1. Read `.agent/rules/02-security.md` (Immutable Constitution).
2. Execute **Constitutional Security Guardrail Audit** across Architect, Security Auditor, and DB Expert personas.
3. **10,000 OUTPUT TOKEN BUDGET CAP**:
   During code refactoring (`/simplify`), monitor generated output tokens:
   - Maximum output token cap for refactor diffs: **10,000 tokens**.
   - If refactor diff exceeds 10,000 tokens without persona consensus, FREEZE refactoring immediately.
   - Retain the last working code snapshot and notify User.
