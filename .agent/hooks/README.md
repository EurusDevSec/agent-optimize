# 🪝 AGENT HOOKS SYSTEM

Hooks are automated scripts triggered before or after Agent tool executions to enforce safety and clean code standards.

## Supported Event Triggers

1. **`PreToolUse`**: Intercepts shell commands before execution (Blocks dangerous commands like `rm -rf` or `git push --force`).
2. **`PostToolUse`**: Triggers auto-formatters (`prettier`, `black`, `ruff`) immediately after the Agent writes/edits code files.
3. **`PostTask`**: Auto-runs verification script when a task spec is completed.

## Directory Structure
- `pre_tool_guard.py`: Safety Guard script for command validation.
- `post_edit_format.py`: Code Formatter hook script.
