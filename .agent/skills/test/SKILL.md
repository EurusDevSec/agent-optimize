---
name: test
description: Fast slash command /test to run test suite and handle failure recovery
argument-hint: [test-file-or-filter]
---

# /test Protocol

Target: $ARGUMENTS

1. Execute project test suite / linters.
2. If tests pass: update `hot_memory.json` checkpoint (`last_successful_checkpoint`).
3. If tests fail: log stdout/stderr to `.agent/scratchpad.md`, attempt Search/Replace diff fix.
4. Circuit Breaker: If test fails 2 times sequentially, STOP and prompt User.
