---
name: spec
description: Dynamic Phase Extraction - Define WHAT to build (User Stories, Gherkin Scenarios, Flat YAML, 3 Negative Bounds)
argument-hint: [feature-name]
---

# /spec Protocol v2.3 (Single Feature Spec Engine)

Focus: $ARGUMENTS

1. Read `.agent/docs/ROADMAP.md` to identify the active incomplete Feature.
2. Generate single contiguous Spec Contract `.agent/specs/SPEC-<id>_<feature_name>.md`:
   - `# 🎯 1. BUSINESS REQUIREMENTS & GHERKIN`
     - User Story (Business goal).
     - Acceptance Criteria (`Given / When / Then` Gherkin scenarios).
   - `# 📐 2. TECHNICAL ARCHITECTURE & NEGATIVE SPACE`
     - API Flat YAML Schema (Endpoint, Method, Request/Response).
     - `⛔ Negative Space Boundaries`: 3 explicit negative bounds.
3. Lock Spec Contract and notify user to run `/challenge` for adversarial audit.
