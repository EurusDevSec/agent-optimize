# 🧊 EURUS AGENT - COLD MEMORY & LEARNING ARCHIVE

> Persistent repository memory across chat sessions. Captures architectural decisions, failure logs, and workarounds.

## 1. Architectural Decisions (ADR Archive)
- **ADR-001**: SDD 2.0 Executable Contracts (Flat YAML + Gherkin Syntax).
- **ADR-002**: Three-Tier Codified Context Architecture (Tier 1 Constitution -> Tier 2 Specialist Regex -> Tier 3 On-Demand).
- **ADR-003**: Deterministic Control Plane with Human Escalation State on Circuit Breaker triggers.

## 2. Failure & Workaround Archive
- **Pattern**: Un-whitelisted package installation attempt.
  - *Fix*: Check `.agent/rules/02-security.md` package whitelist before running install commands.
- **Pattern**: Long session bloat causing reasoning drift.
  - *Fix*: Use `/save` to snapshot state, start fresh chat session, and run `/resume`.
