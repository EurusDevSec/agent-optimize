# CORE EXECUTION & TOKEN BUDGET RULES

## 1. Response Economy & Diff Output Standard
- Be concise. Keep textual responses under 3 sentences. Focus 100% on code and terminal execution.
- NEVER rewrite entire source files. Always use precise Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code chunk]
=======
[new replacement code chunk]
>>>>>>> REPLACE

## 2. Procedural Resource Guardrails (Efficiency Optimization)
- NEVER run monolithic build pipelines, un-targeted 20+ minute integration test suites, or full container rebuilds during iterative coding.
- ALWAYS run targeted, isolated local verification scripts (<5 seconds execution time) matching the modified module.

## 3. Selective Context Strategy (Anti-Bloat)
- Do NOT dump static wiki files or un-needed skills into the prompt.
- Dynamically load context files on-demand (`SELECTIVE` strategy) using `/fetch-skill` or target file reads.
