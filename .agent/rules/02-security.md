# DETERMINISTIC CONTROL PLANE & SECURITY GUARDRAILS

## 1. Package Installation Whitelist (Anti-Typosquatting)
- Agent is STRICTLY PROHIBITED from running un-whitelisted package installations (`npm install`, `pip install`, `cargo add`).
- Only pre-approved, whitelisted project dependencies may be installed. Any un-whitelisted installation attempt MUST trigger immediate User Confirmation.

## 2. Zero Hardcoded Credentials & Boundary Sanitization
- NEVER embed secrets, private keys, or API tokens in source code.
- Sanitize all public API inputs against Injection attacks.
