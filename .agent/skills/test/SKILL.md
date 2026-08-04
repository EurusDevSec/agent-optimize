---
name: test
description: Fast slash command /test to run test runner with Deterministic Control Plane Human Escalation Protocol
argument-hint: [test-filter]
---

# /test Protocol v2.0 (Deterministic Control Plane Escalation)

Target: $ARGUMENTS

1. Execute project test runner / fast validation script (<5s).
2. If Pass: Update `hot_memory.json` checkpoint.
3. If Fail Attempt 1: Log diagnostic error output (`Expected vs Actual`) to `scratchpad.md`, attempt 1 minimal diff fix.
4. **DETERMINISTIC CONTROL PLANE HUMAN ESCALATION (Circuit Breaker 2x)**:
   If test fails 2 times sequentially, STOP EXECUTION IMMEDIATELY.
   Do NOT attempt 3rd blind retry. Transition system to **HUMAN ESCALATION STATE**:
   - Output structured diagnostic error trace to User.
   - Require explicit User manual command intervention to resume.
