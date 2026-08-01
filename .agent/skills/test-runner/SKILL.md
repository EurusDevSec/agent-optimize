---
name: test-runner
description: Universal test runner skill to execute project test suite and capture diagnostic logs
---

# Universal Test Runner Protocol

1. Discover and execute the project's configured test suite / validation script.
2. If all pass: update `.agent/memory/hot_memory.json` checkpoint.
3. If failures occur: capture verbose diagnostic error context into `.agent/scratchpad.md` and suggest minimal diff fix.
