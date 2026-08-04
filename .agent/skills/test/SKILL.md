---
name: test
description: Run test runner with Deterministic Control Plane and Post-Mortem Crash Reporting (crash-report.json)
argument-hint: [test-filter]
---

# /test Protocol v2.1 (Post-Mortem Crash Reporting)

Target: $ARGUMENTS

1. Execute project test runner / fast validation script (<5s).
2. If Pass: Update `.agent/memory/hot_memory.json` checkpoint.
3. If Fail Attempt 1: Log diagnostic error output (`Expected vs Actual`) to `.agent/scratchpad.md` and attempt 1 minimal diff fix.
4. **DETERMINISTIC CONTROL PLANE & CRASH-REPORT.JSON (Circuit Breaker 2x)**:
   If test fails 2 times sequentially, STOP EXECUTION IMMEDIATELY.
   Generate `.agent/memory/crash-report.json`:
   ```json
   {
     "failed_checkbox": "Title of failed task item",
     "core_error_snippet": "Isolated assertion or error traceback",
     "suggested_fixes": ["Fix Option 1", "Fix Option 2"],
     "escalation_status": "REQUIRES_HUMAN_INTERVENTION",
     "timestamp": "2026-08-04"
   }
   ```
   Output summary pointing User directly to `.agent/memory/crash-report.json`.
