# SECURITY RULES

- NEVER hardcode secrets, API keys, or private tokens in source code.
- Always load sensitive credentials from environment variables or `.env`.
- Ensure input validation and path traversal sanitization on all file/network operations.
