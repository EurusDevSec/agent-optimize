# 💨 EURUS AGENT v2.3 - HIGH-SEMANTIC ROUTER & TIER 1 CONSTITUTION

> **Header Budget**: <30 lines static header. Maximize 95%+ Prompt Caching discount. Zero guessing.

## 🧭 Intent-to-File Semantic Matrix (Deterministic Router)

| Goal / Phase | Trigger / Command | Primary Target File | Secondary Context |
| :--- | :--- | :--- | :--- |
| **Master Roadmap** | `/init` | `.agent/docs/ROADMAP.md` | `.agent/docs/ARCHITECTURE.md` |
| **Feature Spec (WHAT)** | `/spec` | `.agent/specs/SPEC-<id>_<name>.md` | `.agent/skills/spec/SKILL.md` |
| **Adversarial Audit** | `/challenge` | `.agent/specs/SPEC-<id>_<name>.md` | `.agent/skills/challenge/SKILL.md` |
| **Design & Tasks (HOW)**| `/plan` | `.agent/specs/SPEC-<id>_<name>.md` | `.agent/skills/plan/SKILL.md` |
| **Diff Execution** | `/build` | `.agent/specs/SPEC-<id>_<name>.md` | `.agent/scratchpad.md` |
| **Control Verification**| `/test` | `.agent/skills/test/SKILL.md` | `.agent/memory/crash-report.json` |
| **Constitutional Audit**| `/review`, `/simplify` | `.agent/rules/02-security.md` | `.agent/agents/*.md` |
| **Ship & DoD Sync** | `/ship` | `.agent/docs/ROADMAP.md` | `.agent/specs/archive/` |
| **Session Snapshot** | `/save` | `.agent/skills/save/SKILL.md` | `.agent/memory/cold_memory.md` |
| **Session Hydrate** | `/resume` | `.agent/skills/resume/SKILL.md` | `.agent/memory/hot_memory.json` |
| **Context Reduction** | `/skeleton`, `/clear` | `.agent/skills/skeleton/SKILL.md` | `.agent/workflows/main-workflow.md` |

## ⚡ Core Execution Rules
1. **Zero Guessing**: Always read the target file specified in the matrix above matching active intent.
2. **Diff Block Standard**: Code edits MUST use Search & Replace Diff blocks (`<<<<<<< SEARCH`).
3. **Fast Verification**: Test runner MUST execute isolated local checks (<5s).
4. **Trajectory Sync**: Flush outdated file snapshots after `/build`.
