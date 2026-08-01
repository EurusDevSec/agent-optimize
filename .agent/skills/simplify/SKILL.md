---
name: simplify
description: Fast slash command /simplify to refactor and simplify complex code
argument-hint: <file-path>
---

# /simplify Protocol

Target: $ARGUMENTS

1. Read target file.
2. Refactor complex functions to reduce cyclomatic complexity.
3. Remove redundant variables, dead code, and duplicate logic.
4. Output changes via Search & Replace Diff blocks.
