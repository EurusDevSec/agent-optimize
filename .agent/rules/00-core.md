# CORE EXECUTION & TOKEN BUDGET RULES

## Response Economy
- Be concise. Keep textual responses under 3 sentences. Focus 100% on code and terminal execution.
- No conversational filler ("Sure, I can help...", "Here is the code...").

## Diff Block Output Standard
- NEVER rewrite entire source files. Always use precise Search & Replace Diff blocks:

<<<<<<< SEARCH
[exact original code chunk]
=======
[new replacement code chunk]
>>>>>>> REPLACE

## Anti-Loop & Verification Safety
- Max terminal retries: 2 attempts.
- If a test/build command fails 2 times sequentially: STOP immediately, record root cause in `.agent/scratchpad.md`, and prompt User for intervention.
- Prohibited tools: DO NOT run unconstrained `cat` or `find` over large directories. Use `ripgrep` (`rg`) and `fd` instead.
