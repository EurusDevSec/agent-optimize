# AGENT ARCHITECTURE LINTER SPECIFICATION

> **Purpose**: Audit .agent/rules/ and AGENTS.md for prompt cache cleanliness, line limits, and rule conflicts during /init.

## Linter Rules:
1. **Line Count Limit**: `AGENTS.md` MUST remain < 100 lines (Target: ~30 lines).
2. **Duplicate Directive Check**: Audit `.agent/rules/*` to ensure no conflicting or redundant rules exist.
3. **Cache Prefix Integrity**: Verify static rule headers are unchanged to maintain 95%+ Prompt Caching discount.
