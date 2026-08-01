---
name: fetch-skill
description: Smart slash command /fetch-skill to semantically search, discover, and auto-install remote skills for ANY domain task (AI, Data, Observability, DevOps, etc.)
argument-hint: <task-description-or-domain>
---

# /fetch-skill Protocol (Semantic Dynamic Skill Discovery)

Task / Domain: $ARGUMENTS

You are a Smart Skill Orchestrator. When a task requires specialized domain knowledge (e.g., AI model evaluation, data filtering, OpenTelemetry observability, DB migrations) that is NOT present in local `.agent/skills/`:

## Execution Protocol:

1. **Local Check**: Search `.agent/skills/` for any existing matching skill. If found, execute immediately.
2. **Semantic Search Query Generation**:
   - Extract the core domain task keywords from `$ARGUMENTS` (e.g. `llm-eval`, `data-cleaning`, `opentelemetry-observability`).
3. **Execute Remote Discovery**:
   - Use web search or GitHub search across trusted registries defined in `.agent/skills.json` to find the exact skill package repository URL and skill name.
   - Example CLI execution:
     `npx skills find "$ARGUMENTS"` OR search `github.com/addyosmani/agent-skills` / `github.com/mattpocock/skills` / `github.com/anthropic/skills`.
4. **Auto-Install & Sanitize**:
   - Download the discovered skill using `npx skills add <repo_url> --skill <skill_name>`.
   - Inspect the downloaded `SKILL.md` to ensure it contains valid step-by-step instructions.
5. **Register & Execute**:
   - Register the new skill in `.agent/memory/hot_memory.json` (`installed_dynamic_skills`).
   - Execute the fetched `SKILL.md` immediately to complete the user's task.
