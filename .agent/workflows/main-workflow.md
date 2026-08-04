# 💨 EURUS AGENT v2.3 - MASTER STATE MACHINE WORKFLOW

```mermaid
flowchart TD
    Init["⚡ /init<br/>Onboard Repo & Hydrate ROADMAP.md"] --> L0["🎯 LEVEL 0: ROADMAP MASTER (Vĩ Mô)<br/><code>.agent/docs/ROADMAP.md</code><br/><i>Phase 1 ➔ Feature 1.1, Feature 1.2, Feature 1.3</i>"]
    
    L0 -- "/spec (Feature 1.3)" --> L1["📜 LEVEL 1: DEFINE WHAT<br/><code>.agent/specs/SPEC-1.3_Login_API.md</code><br/><i>Requirements + Scenarios + Negative Space</i>"]
    
    L1 -- "/challenge" --> Audit["🥊 AUDIT / STRESS-TEST<br/><i>Principal Engineer Review</i>"]
    Audit -- "/plan" --> L2["📝 LEVEL 2 & 3: DESIGN HOW & TASKS<br/><i>Technical Architecture + Task Matrix [NEW]</i>"]
    
    L2 -- "/build" --> Execution["🛠️ EXECUTE DIFFS<br/><i>Search & Replace + Spec-Reflector Sync</i>"]
    Execution -- "/test" --> Verification{"🧪 FAST VERIFICATION<br/><i><5s Test Runner Check</i>"}
    
    Verification -- Pass --> Review["🔍 /review & /simplify<br/><i>Constitutional Audit & 10k Cap</i>"]
    Verification -- Fail 2x --> Crash["🚨 crash-report.json<br/><i>Post-Mortem Crash Summary</i>"] --> Escalation["🛑 Human Escalation State"]
    
    Review --> Ship["🚢 /ship & DOD<br/><i>Update ROADMAP.md Feature [x] & Archive Spec</i>"]
    Ship --> Save["💾 /save & /resume<br/><i>Session Snapshot & Git Checksum Hydrate</i>"]
    Save --> Clear["🧹 /clear<br/><i>Reset Context Trajectory</i>"]
```

## 🔄 Execution Phases

### Phase 0: Master Roadmap Hydration (`/init`)
- Scans repository architecture topology and creates `.agent/docs/ROADMAP.md`.

### Phase 1: Feature Spec Definition (`/spec`)
- Dynamic Phase Extraction generating `.agent/specs/SPEC-<id>_<name>.md`.
- Defines Business Requirements, Gherkin Scenarios, Flat YAML API Schemas, and 3 Negative Space Boundaries.

### Phase 2: Adversarial Audit (`/challenge`)
- Principal Engineer stress-test for architectural & edge-case risks before `/plan`.

### Phase 3: Technical Design & Tasks (`/plan`)
- Appends Technical Architecture Topology, Affected Files `[NEW]`, and Hierarchical Task Tree Matrix (Parent Tasks ➔ Sub-task Checkboxes `- [ ]`) with Micro-Assertions.

### Phase 4: Diff Execution & Spec-Reflector Sync (`/build`)
- Executes Level 3 sub-tasks via Search & Replace Diff blocks.
- Auto-creates empty files for `[NEW]` targets.
- Real-time `Spec-Reflector` sync updates Technical Architecture if diff alters code structure.
- Deterministic Parent Checkbox Protection: Only child sub-tasks checked by Agent.

### Phase 5: Verification & Safety Guardrails (`/test`, `/review`)
- Fast local test runner (<5s). Triggers `crash-report.json` on 2x fail.
- Multi-persona Constitutional Audit with 10,000 Output Token Cap.

### Phase 6: Launch & Milestone Auto-Update (`/ship`)
- Computes SHA256 `spec_checksum`, marks Feature as `- [x] COMPLETED` in `ROADMAP.md`, moves Spec to `specs/archive/`, and points `hot_memory.json` to the next Feature.
