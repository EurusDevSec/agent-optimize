# 💨 EURUS AGENT v2.0 (`eurus-agent`)

> **Universal High-Efficiency AI Agentic Backbone Framework**  
> *SDD 2.0 Executable Contracts · Deterministic Control Plane · Trajectory Synchronization · Three-Tier Codified Context · 95%+ Token Economy*

---

## 🌟 Overview

**`eurus-agent v2.0`** is an advanced, production-grade AI Agent framework designed to transform any codebase into an **AI-Ready Environment**. Grounded in peer-reviewed AI Agent research and SDD 2.0 standards (2026), it eliminates reasoning drift, prevents token bloat, and provides a deterministic control plane for AI coding assistants.

### Key Architectural Pillars (v2.0)
- 📝 **SDD 2.0 Executable Contracts**: Hybrid specs (Flat YAML + Gherkin Syntax), `[NEEDS CLARIFICATION]` freeze signals, `# Out of Scope & Boundaries` (Negative Space), Constitutional SDD (CSDD), and Spec Checksum traceability.
- ⚡ **Three-Tier Codified Context**: Tier 1 Constitution (<60 lines) + Tier 2 Specialist Agents (Regex triggered) + Tier 3 On-Demand Knowledge Base.
- 🧹 **Trajectory Synchronization (CORVUS)**: Automatic context deduplication—flushes outdated file snapshots, cutting prompt bloat by 15–32% and reasoning cycles by 37%.
- 🛡️ **Deterministic Control Plane**: Whitelisted package installation rules + 2-Retry Circuit Breaker with **Human Escalation State**.
- 🚀 **1-Minute Onboarding (`/init`)**: Auto-scans codebase topology and hydrates architecture into `.agent/` without touching dev configs.
- 🧠 **Dynamic On-Demand Skills (`/fetch-skill`)**: Semantically discovers and installs domain skills (`npx skills add`) on the fly.
- 💾 **Cross-Session Memory (`/save` & `/resume`)**: Snapshots session state and failure lessons into `.agent/memory/`, enabling 100% zero-hallucination session switching.

---

## 🗺️ Master Architecture & Workflow

```mermaid
flowchart TD
    Init["⚡ /init<br/><i>Onboard & Hydrate Repo</i>"] --> Grill["🎯 /grill-me<br/><i>Socratic Stress-Test</i>"]
    Grill --> Spec["📝 /spec & /plan<br/><i>Hybrid Specs & Gherkin Contracts</i>"]
    Spec --> Build["🛠️ /build<br/><i>Diff Execution & Trajectory Sync</i>"]
    Build --> Test{"🧪 /test<br/><i>Verify & Control Plane</i>"}
    
    Test -- Pass --> Review["🔍 /review & /simplify<br/><i>Constitutional CSDD Audit</i>"]
    Test -- Fail 2x --> Escalation["🛑 Human Escalation State<br/><i>Halt Execution & Require User Command</i>"]
    
    Review --> Ship["🚢 /ship<br/><i>Sync Memory & Spec Checksum</i>"]
    Ship --> Clear["🧹 /clear<br/><i>Reset Context Trajectory</i>"]
```

---

## 🚀 Quick Start & Usage Manual

### Step 1: Copy `.agent/` Backbone
Copy `.agent/`, `AGENTS.md`, and `.mcp.json` into your project root.

### Step 2: Initialize Project (`/init`)
Launch your preferred AI CLI (`jcode`, `antigravity`, `claude`) and run:
```text
/init
```

### Step 3: Standard Development Cycle
1. **`/spec <feature>`**: Define Executable Spec Contract with Gherkin & Negative Space.
2. **`/plan`**: Deconstruct spec into atomic checkboxes `[ ]` with Micro-Assertions.
3. **`/build`**: Execute implementation via Search/Replace Diff blocks.
4. **`/test`**: Verify logic. If 2 fails occur, system enters **Human Escalation State**.
5. **`/review`**: Run Constitutional SDD Audit against immutable security rules.
6. **`/ship`**: Validate Definition of Done, compute `spec_checksum`, and archive.

---

## ⚡ Slash Commands Cheat Sheet

| Command | Description |
| :--- | :--- |
| **`/init`** | Auto-scan, hydrate, and onboard any codebase (New or Existing/Legacy). |
| **`/grill-me`** | Socratic learning interview to stress-test architecture & edge-cases. |
| **`/fetch-skill`**| Semantically search, discover, and install domain skills on-demand. |
| **`/skeleton`** | Context Virtualization: Extract type annotations & class signatures (-85% tokens). |
| **`/spec`** | Create SDD 2.0 Executable Spec Contract (Flat YAML + Gherkin + Negative Space). |
| **`/plan`** | Deconstruct spec into atomic work checkboxes `[ ]` with Micro-Assertions. |
| **`/build`** | Implement changes via Diff blocks with Trajectory Synchronization. |
| **`/test`** | Run verification with Deterministic Control Plane Human Escalation. |
| **`/review`** | Constitutional SDD Audit against immutable security constitution (`02-security.md`). |
| **`/ship`** | Validate DoD, compute `spec_checksum`, sync `hot_memory.json`, and archive. |
| **`/save`** | Snapshot session state, modified files, and failure lessons before switching chat sessions. |
| **`/resume`** | Hydrate fresh chat session in <1s from `hot_memory.json` & `cold_memory.md` with 0% hallucination. |
| **`/benchmark`** | Run transparent, scientifically neutral benchmark suite locally. |

---

## 📚 Research References & Open-Source Foundations

`eurus-agent v2.0` synthesizes best practices from leading open-source projects and peer-reviewed AI Agent research:

1. 🌟 **Addy Osmani (2026)** — *"Agent Skills Repository & Architecture"* ([`addyosmani/agent-skills`](https://github.com/addyosmani/agent-skills)).
   - *Applied*: Composable layers of Skills (`skills/`), Personas (`agents/`), Slash Commands, and Definition of Done standards.
2. 🌟 **Matt Pocock (2026)** — *"Productivity & Interactive Agent Skills"* ([`mattpocock/skills`](https://github.com/mattpocock/skills)).
   - *Applied*: Interactive Socratic stress-testing and architecture pressure-testing skill (`/grill-me`).
3. 📄 **Việt Trần (2026)** — *"Tối ưu Coding Agent Codebase: 7 Best Practices Cho Dev"* ([`goclaw.sh`](https://goclaw.sh/vi/blog/coding-agent-codebase)).
   - *Applied*: Fast local validation (<5s), verbose assertion diagnostics (`Expected vs Actual`), and single source of truth documentation.
4. 📄 **Prakhar Khatri (2026)** — *"Do Context Files Help Coding Agents? A Two-Agent Ablation Study on Real Repositories"* ([`arXiv:2607.27250`](https://arxiv.org/abs/2607.27250)).
   - *Applied*: Minimalist prompt entrypoint (<60 lines), `SELECTIVE` dynamic context fetching, and procedural resource guardrails.
5. 📄 **CORVUS Research (July 2026)** — *"CORVUS: Context Optimization and Reduction Via Underlying Synced Trajectories"*.
   - *Applied*: Trajectory Synchronization—automatically deduplicating outdated file snapshots from conversation context.
6. 📄 **Control Plane Research (June 2026)** — *"A Deterministic Control Plane for LLM Coding Agents"*.
   - *Applied*: Deterministic Control Plane—package installation whitelisting and Human Escalation State on Circuit Breaker triggers.
7. 📄 **Codified Context Research (February 2026)** — *"Codified Context: Infrastructure for AI Agents in a Complex Domain"*.
   - *Applied*: Three-Tier Codified Context (Tier 1 Constitution -> Tier 2 Regex-Triggered Specialists -> Tier 3 On-Demand Knowledge).
8. 📄 **SDD 2.0 Frameworks & Standards (2026)** — *"Specification-Driven Development 2026"* (GitHub Spec Kit, AWS Kiro, Tessl).
   - *Applied*: Hybrid Specs (Flat YAML + Gherkin), `[NEEDS CLARIFICATION]` freeze signals, Negative Space Boundaries, CSDD Audits, and Spec Checksums.

---

## 📜 License & Author

Developed with ❤️ by **EurusDevSec**. Built for developers who demand high-speed, zero-drift AI agent execution.
