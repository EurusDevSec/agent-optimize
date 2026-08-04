# 💨 EURUS AGENT v2.1 - HIGH-SEMANTIC ROUTER & TIER 1 CONSTITUTION

> **Header Budget**: <30 lines static header. Maximize 95%+ Prompt Caching discount. Zero guessing.

## 🧠 Natural Language Implicit Routing (Zero-Slash Directive)
- **NO SLASH REQUIRED**: If user speaks in natural language (Vietnamese/English), AUTOMATICALLY map their intent to the target command/phase below and execute seamlessly ngầm.

## 🧭 Intent-to-File Semantic Matrix (Deterministic Router)

| Natural Intent Examples | Trigger / Command | Primary Target File | Secondary Context |
| :--- | :--- | :--- | :--- |
| "Phân tích repo", "Onboard dự án" | `/init` | `.agent/docs/ARCHITECTURE.md` | `.agent/memory/hot_memory.json` |
| "Làm tính năng X", "Tạo spec Y" | `/spec` | `.agent/specs/current-task.md` | `.agent/skills/spec/SKILL.md` |
| "Phản biện spec", "Soi lỗi thiết kế"| `/challenge` | `.agent/specs/current-task.md` | `.agent/skills/challenge/SKILL.md` |
| "Bẻ nhỏ task", "Lập kế hoạch" | `/plan` | `.agent/specs/current-task.md` | `.agent/skills/plan/SKILL.md` |
| "Viết code đi", "Triển khai phần này"| `/build` | `.agent/specs/current-task.md` | `.agent/scratchpad.md` |
| "Chạy test", "Kiểm tra xem đúng chưa"| `/test` | `.agent/skills/test/SKILL.md` | `.agent/memory/crash-report.json` |
| "Soi bảo mật", "Review code" | `/review`, `/simplify` | `.agent/rules/02-security.md` | `.agent/agents/*.md` |
| "Nghiệm thu", "Xong việc rồi" | `/ship` | `.agent/references/definition-of-done.md` | `.agent/memory/hot_memory.json` |
| "Lưu bộ nhớ", "Đóng gói chat" | `/save` | `.agent/skills/save/SKILL.md` | `.agent/memory/cold_memory.md` |
| "Nối tiếp công việc", "Nạp bộ nhớ" | `/resume` | `.agent/skills/resume/SKILL.md` | `.agent/memory/hot_memory.json` |
| "Tóm tắt file lớn", "Dọn history" | `/skeleton`, `/clear` | `.agent/skills/skeleton/SKILL.md` | `.agent/workflows/main-workflow.md` |

## ⚡ Core Execution Rules
1. **Zero Guessing**: Always read the target file specified in the matrix above matching active intent.
2. **Diff Block Standard**: Code edits MUST use Search & Replace Diff blocks (`<<<<<<< SEARCH`).
3. **Fast Verification**: Test runner MUST execute isolated local checks (<5s).
4. **Trajectory Sync**: Flush outdated file snapshots after `/build`.
