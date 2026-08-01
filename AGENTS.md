# AGENT BACKBONE INITIALIZATION

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
- `/fetch-skill <keyword>`: Auto-download and register domain skills on-demand from Whitelisted Repos.
- `/grill-me <topic>`: Pressure-test plan/architecture via interactive interview.
- `/spec <feature>`: Generate spec in `specs/current-task.md`.
- `/plan`: Break spec into atomic task checklist in `specs/current-task.md`.
- `/build`: Implement task using Search/Replace Diff blocks.
- `/test`: Run test suite & handle failure recovery.
- `/review`: Audit code for bugs, security & performance.
- `/simplify`: Refactor & simplify complex code.
- `/ship`: Commit task, update `hot_memory.json` checkpoint & archive spec.

## 3. Core Execution Protocol (Spec → Diff → Verify)
1. **Plan First**: Never write code without reading `specs/current-task.md` or running `/spec` / `/plan`.
2. **Scratchpad Thinking**: Draft solutions & log test output in `.agent/scratchpad.md`.
3. **Diff Enforcement**: Output code modifications ONLY in Search & Replace Diff blocks.
4. **Verification Gate**: Auto-run test suite after editing. Stop & log to scratchpad if failed twice.
