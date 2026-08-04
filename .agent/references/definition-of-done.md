# DEFINITION OF DONE (DoD) CHECKLIST

A task or spec is considered 100% DONE only when ALL criteria are satisfied:

- [ ] **Functional Verification**: All atomic checkboxes in `specs/SPEC-<id>_<name>.md` are marked completed `[x]`.
- [ ] **Diagnostic Testing**: Test suite / validation scripts pass with 0 errors.
- [ ] **Zero Linter/Type Warnings**: Code compiles without unresolved type errors or linting warnings.
- [ ] **Security Sanitization**: No hardcoded secrets, unhandled inputs, or injection risks.
- [ ] **Memory & Log Sync**: `hot_memory.json` updated with checkpoint; `scratchpad.md` cleared.
