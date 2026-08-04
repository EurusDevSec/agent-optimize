# TASK SPECIFICATION: [Task Title]

```yaml
# Flat YAML Schema Contract
task_id: "TASK-001"
version: "2.0"
api_contract:
  endpoint: "/api/v1/resource"
  method: "POST"
  input_schema: { id: "int", payload: "dict" }
  output_schema: { status: "string", code: "int" }
```

## 1. User Intent & Problem Statement
[Brief description of intent and rationale]

## 2. Acceptance Criteria (Gherkin Syntax)
- **Scenario 1: Successful Execution**
  - **Given** valid input payload and active user session
  - **When** request is submitted to endpoint
  - **Then** system returns HTTP 200 with valid data dict
- **Scenario 2: Boundary Error Handling**
  - **Given** invalid parameter or expired token
  - **When** request is processed
  - **Then** system returns HTTP 400 with explicit diagnostic error message

## 3. Out of Scope & Negative Space (Boundaries)
- 🚫 DO NOT modify legacy database migrations or existing schema tables without explicit approval.
- 🚫 DO NOT install un-whitelisted third-party packages outside pre-approved list.
- 🚫 DO NOT break backward compatibility with existing public API contracts.
