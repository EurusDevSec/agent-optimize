# UNIVERSAL SECURITY & DATA PROTECTION PRINCIPLES

> **Scope**: Stack-agnostic security guardrails for any codebase or storage system.

---

## 1. Zero Hardcoded Credentials (Principle: Secret Isolation)
- NEVER embed API keys, secrets, access tokens, or private certificates in source code or committed configs.
- ALWAYS load credentials dynamically from environment variables or encrypted secrets managers.

## 2. Strict Input Sanitization & Boundary Validation (Principle: Zero Trust Input)
- Treat all external input (HTTP parameters, CLI flags, file paths, IPC messages) as untrusted.
- Validate and sanitize input at boundaries to prevent Injection (SQL, Command, Path Traversal, XSS).

## 3. Least Privilege & Defensive Defaults (Principle: Minimal Surface Area)
- Expose only required APIs and public interfaces.
- Ensure default system configurations fail safely without exposing internal diagnostic stack traces.
