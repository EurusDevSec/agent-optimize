---
name: skeleton
description: Context Virtualization skill to extract type annotations, class signatures, and function headers without loading full source code
argument-hint: <file-or-directory-path>
---

# /skeleton Protocol (Context Virtualization)

Target: $ARGUMENTS

1. **Extract Signatures Only**: Read target file/directory and extract ONLY:
   - Class declarations & docstrings.
   - Function signatures & Type Annotations (e.g. `def process(user_id: int) -> Dict[str, Any]:`).
   - Exported interfaces and constants.
2. **Omit Implementation**: Omit function bodies and internal logic loops (`...` or `pass`).
3. **Token Savings**: Reduces input token size by 85% while providing 100% of the required interface contract.
