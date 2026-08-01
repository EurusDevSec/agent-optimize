# TROUBLESHOOTING DECISION TREE

## Build / Execution Error Tree
1. **Read Log Output**: Is error an explicit assertion failure or environment crash?
   - If **Assertion Failure**: Read `Expected vs Actual` values -> Modify code via Search/Replace Diff block.
   - If **Environment Crash**: Check missing dependencies -> Request User environment fix.
2. **Retry Counter Check**:
   - Attempt 1: Log to `scratchpad.md` -> Apply minimal fix -> Re-test.
   - Attempt 2: Trigger Circuit Breaker -> STOP and prompt User.
