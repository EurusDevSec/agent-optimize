---
name: review
description: Fast slash command /review to execute Constitutional SDD security audit and quality check
argument-hint: [target-files]
---

# /review Protocol v2.0 (Constitutional SDD Audit)

1. Read `.agent/rules/02-security.md` (Immutable Constitution).
2. Execute **Constitutional Security Guardrail Audit**:
   - Scan diffs against Whitelisted packages and CWE security rules.
   - Verify zero hardcoded credentials or un-sanitized boundary inputs.
3. Perform Multi-Persona Review (Architect + Security Auditor + DB Expert).
4. Output structured PASS / FAIL verdict.
