---
name: resume
description: Hydrate a fresh chat session in <1 second from hot_memory.json, cold_memory.md, and current spec with 0% hallucination
argument-hint: []
---

# /resume Protocol (Zero-Hallucination Session Hydration)

1. Read `.agent/memory/hot_memory.json` to load current project state.
2. Read `.agent/specs/current-task.md` to load active task contract and remaining `[ ]` checkboxes.
3. Read `.agent/memory/cold_memory.md` to load recent failure workarounds & architectural decisions.
4. **Synthesize Active Context**:
   - Output summary:
     - 📌 **Active Task**: [task_name]
     - 🎯 **Checkpoint**: [last_successful_checkpoint]
     - 📋 **Remaining Work**: [list of unchecked [ ] tasks]
     - 💡 **Key Learnings**: [top 2 recent learnings from cold memory]
   - State: *"Session restored cleanly! Ready to execute next task item."*
