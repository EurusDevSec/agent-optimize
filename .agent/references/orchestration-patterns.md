# AGENT ORCHESTRATION & FAN-OUT PATTERNS

## 1. Single-Threaded Pipeline (Default SDD)
`Boot -> /spec -> /plan -> /build -> /test -> /ship`

## 2. Parallel Fan-out Synthesis (For /review and /ship)
During `/review` or `/ship`, synthesize input from 3 distinct persona perspectives:
1. **Architect Persona**: Evaluates modular boundaries & ADR impact.
2. **Security Persona**: Evaluates secret isolation & boundary sanitization.
3. **Tester Persona**: Evaluates assertion coverage & edge case handling.

Merge all 3 perspectives into a single unified report.
