# 🔄 MASTER AGENT OPERATIONAL WORKFLOW & STATE MACHINE

> **Audience**: AI Coding Agents (`jcode`, `antigravity`, `claude`, `cursor`, `roo code`, etc.)
> **Purpose**: Complete end-to-end execution algorithm, state transitions, and recovery protocols.

---

## 🗺️ 1. END-TO-END STATE MACHINE DIAGRAM

```mermaid
flowchart TD
    P0["PHASE 0: Boot & Hydration<br/><i>Read AGENTS.md, ARCHITECTURE.md, rules/, hot_memory.json</i>"] --> P1["PHASE 1: Stress-Test & Interview<br/><i>[/grill-me] (Pressure-test new architectures)</i>"]
    P1 --> P2["PHASE 2: Specification & Contract<br/><i>[/spec] -> Create .agent/specs/current-task.md</i>"]
    P2 --> P3["PHASE 3: Task Decomposition<br/><i>[/plan] -> Break spec into atomic checkboxes [ ]</i>"]
    P3 --> P4["PHASE 4: Diff Execution<br/><i>[/build] -> Draft in scratchpad.md -> Output SEARCH/REPLACE Diff</i>"]
    P4 --> P5{"PHASE 5: Verification & Recovery<br/><i>[/test] -> Run test suite & linters</i>"}
    
    P5 -- Pass --> P6["PHASE 6: Quality Audit & Refactor<br/><i>[/review] & [/simplify] (Security audit & cleanup)</i>"]
    P5 -- Fail 1x --> P4
    P5 -- Fail 2x (Circuit Breaker) --> STOP["🛑 STOP IMMEDIATELY<br/><i>Record blocker in hot_memory.json & Prompt User</i>"]
    
    P6 --> P7["PHASE 7: Checkpoint & Sync<br/><i>[/ship] -> Update hot_memory.json & archive spec</i>"]
    P7 --> P8["PHASE 8: Context Reset<br/><i>Recommend User run [/clear] to reset Context to 0 token</i>"]
```

---

## ⚡ 2. TWO EXECUTION PATHWAYS

### Path A: Standard Feature Pathway (Full SDD)
Use when implementing any new feature, major refactor, or multi-file change.
- **Sequence**: `/grill-me` (optional) ➔ `/spec` ➔ `/plan` ➔ `/build` ➔ `/test` ➔ `/review` ➔ `/ship` ➔ `/clear`.

### Path B: Fast-Track Pathway (Mini Bug Fix)
Use ONLY for trivial 1-liner bug fixes, typo fixes, or single configuration tweaks.
- **Sequence**: Read `hot_memory.json` ➔ Draft quick plan in `.agent/scratchpad.md` ➔ `/build` Diff Edit ➔ `/test` ➔ `/ship`.

---

## 📋 3. STEP-BY-STEP PHASE ALGORITHM

### Phase 0: Boot & State Hydration
- **Actions**:
  1. Inspect `AGENTS.md` and `.agent/rules/00-core.md`.
  2. Inspect `ARCHITECTURE.md` to understand tech stack and directory boundaries.
  3. Inspect `.agent/memory/hot_memory.json` to load active milestone and checkpoint.
- **Constraint**: DO NOT modify static files to preserve 95%+ Prompt Caching discount.

### Phase 1: Interactive Stress-Test (`/grill-me`)
- **Trigger**: New architectural idea, underspecified feature, or user request.
- **Algorithm**:
  - Ask ONE focused question per turn.
  - Provide a sensible default recommended answer based on codebase inspection.
  - Iterate until all edge cases (error handling, security, performance) are resolved.

### Phase 2: Feature Specification (`/spec`)
- **Trigger**: `/spec <feature-name>`
- **Output**: Write `.agent/specs/current-task.md` containing:
  - Goal statement (1 sentence).
  - Scope boundaries & affected files.
  - Verification commands (project test runner).

### Phase 3: Task Decomposition (`/plan`)
- **Trigger**: `/plan`
- **Output**: Populate `.agent/specs/current-task.md` with atomic checkboxes `[ ]`. Each task must be < 15 minutes of work.

### Phase 4: Diff Execution (`/build`)
- **Trigger**: `/build`
- **Algorithm**:
  1. Write active thought process into `.agent/scratchpad.md`.
  2. Modify code ONLY using Search & Replace Diff blocks:
```diff
<<<<<<< SEARCH
[exact original code chunk]
=======
[replacement code chunk]
>>>>>>> REPLACE
```
  3. **Auto-check Completion**: Mark `- [ ]` as `- [x]` in `.agent/specs/current-task.md` for completed items.

### Phase 5: Automated Verification & Failure Recovery (`/test`)
- **Trigger**: `/test`
- **Algorithm**:
  1. Execute project test suite / linter.
  2. **If Pass**: Proceed to Phase 6.
  3. **If Fail Attempt 1**: Append error stdout/stderr to `.agent/scratchpad.md`, attempt 1 minimal diff fix, re-test.
  4. **If Fail Attempt 2 (Circuit Breaker)**: STOP immediately. Record blocker in `hot_memory.json` (`active_blockers`) and request User guidance. DO NOT loop infinitely.

### Phase 6: Code Audit & Simplification (`/review` & `/simplify`)
- **Trigger**: `/review` or `/simplify`
- **Algorithm**: Audit for OWASP top 10, memory leaks, and cyclomatic complexity. Simplify logic via Diff blocks.

### Phase 7: Checkpoint & Memory Sync (`/ship`)
- **Trigger**: `/ship <summary>`
- **Algorithm**:
  1. Ensure all `.agent/specs/current-task.md` checkboxes are completed `[x]`.
  2. Update `.agent/memory/hot_memory.json` (`last_successful_checkpoint`, `learnings`).
  3. Append major ADRs to `.agent/memory/cold_memory.md` if applicable.
  4. Move `.agent/specs/current-task.md` to `.agent/specs/archive/`.
  5. Reset `.agent/scratchpad.md`.

### Phase 8: Context Window Reset (`/clear`)
- **Action**: Inform User task is shipped and recommend running `/clear` to reset context window to 0 tokens.
