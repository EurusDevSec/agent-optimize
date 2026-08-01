---
name: test-runner
description: Runs test suite and automatically logs failures to scratchpad
---

# Test Runner Protocol

1. Run the project test suite (e.g., `npm test` or `pytest`).
2. If all pass: update `.agent/memory/hot_memory.json` checkpoint.
3. If failures occur: append error logs to `.agent/scratchpad.md` and suggest minimal diff fix.
