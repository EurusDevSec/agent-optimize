# 🤖 AGENT SYSTEM OPERATIONAL GUIDE & PROTOCOL

> **Target Audience**: AI Agents (`jcode`, `claude code`, `antigravity`, `cursor`, `roo code`, etc.)
> **Purpose**: Standardized onboarding & execution protocol for zero-drift, token-efficient operation.

---

## 🚀 1. SYSTEM ARCHITECTURE & ONBOARDING

Upon starting any session in this repository, you MUST follow this initialization sequence:

1. **Read Rules (Once)**: Inspect `.agent/rules/00-core.md` for output format constraints.
2. **Load Hot Memory**: Read `.agent/memory/hot_memory.json` to understand the current milestone, active task, and recent learnings.
3. **Check Active Spec**: Read `specs/current-task.md` for the current checklist. If missing or empty, ask the User or invoke `/spec-writer`.

---

## 📜 2. DIRECTORY TAXONOMY

- `AGENTS.md` / `CLAUDE.md`: System entrypoints (<100 lines for 100% prompt cache hit).
- `.agent/rules/`: Static coding standards, security constraints, and response formatting rules.
- `.agent/skills/`: Executable playbooks (invoke via `/skill-name` or follow instructions inside).
- `.agent/agents/`: Specialized sub-agent profiles for isolated execution.
- `.agent/memory/hot_memory.json`: **[DYNAMIC]** Structured state JSON (<1KB). Must be updated after task completion.
- `.agent/memory/cold_memory.md`: **[DYNAMIC]** Architectural Decision Records (ADRs) and permanent logs.
- `.agent/specs/current-task.md`: **[DYNAMIC]** Single source of truth for the active task.
- `.agent/scratchpad.md`: **[TEMPORARY]** Reasoning, draft solutions, and test failure logs.

---

## ⚡ 3. EXECUTION PROTOCOL (SPEC → DIFF → VERIFY)

### Phase 1: Planning
- Do NOT jump straight to code edits.
- Ensure `specs/current-task.md` has clear atomic checkboxes `[ ]`.

### Phase 2: Execution via Diff Blocks
- Draft reasoning in `.agent/scratchpad.md` first.
- ONLY output code changes using Search & Replace Diff blocks:

```diff
<<<<<<< SEARCH
[exact original code chunk]
=======
[new replacement code chunk]
>>>>>>> REPLACE
```

### Phase 3: Verification & Anti-Loop
- Run automated tests/builds specified in `current-task.md`.
- If a test fails: log stdout/stderr to `.agent/scratchpad.md`, attempt fix.
- **Circuit Breaker**: If test fails **2 times**, STOP execution immediately. Record blocker in `hot_memory.json` and prompt User.

### Phase 4: Sync & Cleanup (Checkpoint)
When all task items are completed:
1. Update `.agent/memory/hot_memory.json` (`last_successful_checkpoint`, `learnings`).
2. Move finished task spec to `.agent/specs/archive/`.
3. Reset `.agent/scratchpad.md` to blank/template state.
4. Inform User and advise running `/clear` to reset context window.

---

## ⛔ 4. HARD CONSTRAINTS
- NEVER modify static files (`AGENTS.md`, `.agent/rules/*`) during task execution.
- NEVER rewrite full source code files—use Diff blocks exclusively.
- NEVER execute unconstrained search commands (`cat`, `find` over full root). Use `rg` and `fd`.
