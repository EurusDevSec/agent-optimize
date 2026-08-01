---
name: review
description: Fast slash command /review to audit code for bugs, security, and performance
argument-hint: <file-or-diff-to-review>
---

# /review Protocol

Target: $ARGUMENTS

Adopt Senior Code Auditor Persona. Review target for:
1. Logic errors & unhandled null/async edge cases.
2. Security vulnerabilities (OWASP top 10, secrets leakage).
3. Performance bottlenecks.

Output findings with severity levels: [CRITICAL | HIGH | MEDIUM | LOW] and exact fix suggestions.
