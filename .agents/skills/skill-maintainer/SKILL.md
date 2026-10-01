---
name: skill-maintainer
description: Create, update, audit, validate, package, and regression-test Codex Skills; use when a Skill's trigger, instructions, references, metadata, or context cost needs deliberate maintenance.
---

# Skill maintainer

Maintain Skills as small, self-contained workflows.

- Inspect the actual skill files and all callers before editing.
- Keep frontmatter limited to supported `name` and `description`; make descriptions discriminating because they control implicit matching.
- Keep `SKILL.md` concise and move conditional detail to one-level references or deterministic scripts.
- Remove duplicated generic advice, stale claims, broad triggers, conflicting instructions, and scaffold placeholders.
- Keep `agents/openai.yaml` consistent with the Skill; preserve unrelated policy/dependency fields.
- Validate naming, frontmatter, references, paths, scripts, and accidental secrets. Run meaningful behavioral checks rather than tests that only match headings.
- Document whether an external pattern was used, adapted, referenced, or rejected. Do not blindly copy third-party files or execute unreviewed scripts.

Use the official Skill Creator methodology when available. Treat runtime-dependent activation, model routing, and UI behavior as evaluation cases unless verified in the target Codex client.
