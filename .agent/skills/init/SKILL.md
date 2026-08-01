---
name: init
description: Smart agent-native slash command /init to automatically scan, hydrate, and onboard ANY codebase (New or Existing/Legacy) with zero language dependencies
---

# /init Protocol (Automated Codebase Onboarding & Hydration)

You are an Intelligent Codebase Onboarding Agent. Your goal is to inspect the current repository and automatically configure the `eurus-agent` backbone WITHOUT breaking or overwriting existing user configurations.

## Onboarding Protocol:

### Step 1: Detect Project Scenario
- Inspect directory for existing source files, build manifests (`package.json`, `pyproject.toml`, `Cargo.toml`, `go.mod`, `Makefile`, etc.), and git history.
- **Scenario A (Fresh Project)**: No code exists. Initialize clean defaults in `hot_memory.json` and prompt user to run `/spec`.
- **Scenario B (Existing/Legacy Project)**: Codebase exists. Proceed to Hydration Steps below.

### Step 2: Codebase Hydration (For Existing Projects)
1. **Analyze Tech Stack & Structure**:
   - Inspect build manifests & dependencies.
   - Populate `ARCHITECTURE.md` across all 4 standard sections (Core Tech Stack, Directory Layout, System Data Flow Mermaid Diagram, Key Invariants) based on actual project topology.
2. **Analyze Features & Tests**:
   - Run existing test suite / inspect passing tests.
   - Populate `FEATURES.md` with completed features `[x]` (passing tests) vs in-progress features `[ ]`.
3. **Hydrate Hot Memory (`hot_memory.json`)**:
   - Read `git log -n 5` to set `last_successful_checkpoint` to the latest commit summary.
4. **HYDRATE COLD MEMORY (`cold_memory.md`) - CRITICAL**:
   - Extract historical Architectural Decision Records (ADRs), major refactors, and core design patterns from git log & existing docs.
   - Append initial baseline architecture ADR to `.agent/memory/cold_memory.md` for permanent reference.

### Step 3: Preserved Integration & Auto-Ignore
1. **Zero Overwrite**: Never overwrite or delete user source files or existing linter/formatter configs (`.prettierrc`, `tsconfig.json`, `eslint`).
2. **Update `.gitignore`**: Ensure `.agent/scratchpad.md` and `.agent/specs/current-task.md` are appended to the project's `.gitignore` if not already present.
3. **Adapt Hooks**: Inspect existing project formatter/linter and ensure `.agent/hooks/post_edit_format.py` uses the project's native formatter.

### Step 4: User Confirmation
Present a concise summary of detected architecture, features, and cold memory baseline to the user.
