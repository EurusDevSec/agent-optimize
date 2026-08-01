---
name: test
description: Fast slash command /test to run test suite and handle failure recovery with diagnostic logs
argument-hint: [target-module-or-filter]
---

# /test Protocol (Diagnostic Failure Recovery)

Target: $ARGUMENTS

1. Execute project test runner or fast validation scripts (<5s preferred).
2. If tests pass: update `hot_memory.json` checkpoint (`last_successful_checkpoint`).
3. If tests fail:
   - Extract VERBOSE diagnostic output (Expected State vs Actual State).
   - Log diagnostic output to `.agent/scratchpad.md`.
   - Attempt 1 minimal Search/Replace Diff fix based on diagnostic evidence.
4. Circuit Breaker: If test fails 2 times sequentially, STOP immediately and prompt User for intervention.
