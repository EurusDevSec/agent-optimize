# UNIVERSAL SYSTEM VERIFICATION SCRIPT

> **Agent Instruction**: Execute this protocol during /test or system verification.

1. **Inspect Project Test Runner**: Read `ARCHITECTURE.md` or `hot_memory.json` to identify the native verification command (e.g. `npm test`, `cargo test`, `pytest`, `go test`).
2. **Execute Local Validation**: Run the detected verification command.
3. **Handle Results**:
   - If Pass: Update `hot_memory.json` checkpoint.
   - If Fail: Log diagnostic error output to `.agent/scratchpad.md`.
