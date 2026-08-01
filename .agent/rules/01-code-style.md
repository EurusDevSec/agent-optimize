# UNIVERSAL CODE STYLE & ENGINEERING PRINCIPLES

> **Scope**: Language-agnostic design principles applicable across all programming languages, frameworks, and stacks (TypeScript, Python, Go, Rust, Java, C++, etc.).

---

## 1. Explicit Boundary Constraints & Type Safety (Bản Chất: Triệt tiêu sự đoán mò)
- **Principle**: Never rely on implicit assumptions or unvalidated inputs.
- **Rule**: Whatever language is used, enforce strict type safety and explicit Guard Clauses at public boundaries to catch invalid inputs immediately.
- **Goal**: Provide rigid runtime & compile-time boundaries so AI and humans never have to guess state behavior.

## 2. Verbose Diagnostic Error Messages (Bản Chất: Phản hồi tự chẩn đoán)
- **Principle**: An error message is an immediate diagnostic tool for LLM self-correction.
- **Rule**: In all assertions, exception handles, and test suites, error messages MUST output explicit `[Expected State] vs [Actual State]` along with relevant variable context.
- **Goal**: Enable instantaneous root-cause diagnosis without requiring expensive re-scanning of the codebase.

## 3. Fast Isolated Verification (Bản Chất: Vòng phản hồi ngắn)
- **Principle**: Fast feedback loops preserve reasoning momentum and token economy.
- **Rule**: Prioritize running small, isolated unit/module tests (<5 seconds execution time) over full monolithic builds during iteration.
- **Goal**: Minimize context bloat and prevent broken reasoning states.

## 4. Modularity & Single Responsibility (Bản Chất: Tính dễ bảo trì)
- **Principle**: Small, pure, decoupled functions are easy to reason about and test.
- **Rule**: Keep functions focused on a single responsibility. Prefer composition over deep inheritance.
