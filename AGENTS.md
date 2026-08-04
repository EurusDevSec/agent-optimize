# 💨 EURUS AGENT v2.0 - TIER 1 CONSTITUTION

> **Scope**: Always-On Core Constitution (<60 lines). Maximize 95%+ Prompt Caching discount.

## 1. System Context Architecture
- **Tier 1 (Constitution)**: Read `AGENTS.md` and `.agent/rules/00-core.md` ONCE at boot.
- **Tier 2 (Specialist Agents)**: Dynamically trigger agents in `.agent/agents/` based on file regex patterns (`*.sql`, `auth/*`, `tests/*`).
- **Tier 3 (Knowledge Base)**: Query `.agent/memory/cold_memory.md` & MCP tools ON-DEMAND (`SELECTIVE` strategy).

## 2. Core Execution Commandments
- **Response Economy**: Keep responses < 3 sentences. Focus 100% on execution.
- **Diff Standard**: Use ONLY Search & Replace Diff blocks (`<<<<<<< SEARCH`).
- **Resource Guardrail**: NEVER run 20+ min full builds. Use fast local verification (<5s).
- **Trajectory Sync**: Flush outdated file snapshots from context trajectory after `/build`.

## 3. Slash Commands Shortcuts
`/init`, `/spec`, `/plan`, `/build`, `/test`, `/review`, `/simplify`, `/ship`, `/save`, `/resume`, `/clear`, `/skeleton`, `/fetch-skill`, `/benchmark`, `/grill-me`
