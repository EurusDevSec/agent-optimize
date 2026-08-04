---
name: init
description: Onboard project and hydrate Master Roadmap (.agent/docs/ROADMAP.md) and architecture topology
argument-hint: []
---

# /init Protocol v2.3 (Master Roadmap Hydration)

1. Scan codebase root, git history, package manifests, and existing structure.
2. Hydrate **Level 0 Master Control Tower** (`.agent/docs/ROADMAP.md`):
   - **Problem Statement & Vision**: Executive summary of system goals.
   - **Tech Stack & System Boundaries**: Technology selections & core constraints.
   - **Multi-Phase Roadmap**: Phase 1, Phase 2, Phase 3 with explicitly listed Features.
3. Hydrate `.agent/docs/ARCHITECTURE.md` and `.agent/docs/FEATURES.md`.
4. Hydrate `.agent/memory/hot_memory.json` and append baseline ADRs to `.agent/memory/cold_memory.md`.
5. Ensure transient scratch files are in `.gitignore`.
