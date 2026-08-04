# AGENT BACKBONE INITIALIZATION

> **Paper Alignment Note**: Minimalist operational entrypoint (<100 lines). Zero generic code style bloat.

## 1. System Rules & Context Loading
- Read `README.md` & `WORKFLOW.md` for complete agent operational protocol and state machine algorithm.
- Read `ARCHITECTURE.md` to understand tech stack, directory layout & data flow.
- Read `FEATURES.md` for functional roadmap & project scope.
- Read `.agent/rules/00-core.md` ONCE at startup.
- Read `.agent/memory/hot_memory.json` to load current project state.
- Read `.agent/references/definition-of-done.md` for completion criteria.
- Inspect `.agent/hooks/` for automated pre/post tool triggers.
- NEVER modify static files (`AGENTS.md`, `ARCHITECTURE.md`, `FEATURES.md`, `.agent/rules/*`) during task execution to preserve Prompt Cache.

## 2. Slash Commands Lifecycle Shortcuts
- `/init`: Auto-scan, hydrate, and onboard ANY codebase (New or Existing/Legacy).
- `/benchmark`: Run transparent benchmark suite comparing baselines.
- `/fetch-skill <keyword>`: Auto-download and register domain skills on-demand from Whitelisted Repos (`SELECTIVE` context).
- `/skeleton <path>`: Extract type annotations & interface signatures (Context Virtualization).
- `/grill-me <topic>`: Pressure-test plan/architecture via interactive Socratic interview.
- `/spec <name>`: Define task contract in `.agent/specs/current-task.md`.
- `/plan`: Deconstruct spec into atomic work checkboxes (`[ ]` < 15 mins each).
- `/build`: Execute task changes via Search/Replace Diff blocks.
- `/test`: Run fast local verification runner with 2-retry Circuit Breaker.
- `/review`: Multi-persona code, security & architecture audit.
- `/ship`: Validate DoD, sync `hot_memory.json`, and archive spec.
