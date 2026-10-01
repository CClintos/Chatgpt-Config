# External Skills and agent-pattern review

Reviewed 2026-10-01. Decisions are intentionally selective to keep discovery and context costs low.

| Candidate | Decision | Reason |
| --- | --- | --- |
| Official OpenAI Skill Creator (`openai/skills`) | Borrow and integrate | Used the initializer and validation principles: concise skills, required frontmatter, progressive disclosure, matching UI metadata, and meaningful validation. |
| Official OpenAI Codex `AGENTS.md` guidance | Integrate | Root instructions stay short and scoped; nested Skills carry domain workflows. |
| Official OpenAI custom-agent examples | Integrate | Used project `.codex/agents/*.toml` with `name`, `description`, `developer_instructions`, model, effort, and read-only review agents. |
| Official OpenAI multi-agent guidance | Integrate selectively | Concurrency is capped at one because parallel subagents cost more and this workflow usually has dependent steps. |
| Public systematic-debugging pattern (`event4u-app/agent-config`) | Borrow one pattern | Reproduce/isolate/hypothesize/verify informs `msp-troubleshooter`; the full large skill was rejected as duplication. |
| Public debugger skills | Reject as-is | Several add generic logging infrastructure or broad triggers not present in this portable workspace. |
| Large planning/state-management skill collections | Reject as-is | The user needs compact state and logs, not a swarm of overlapping instructions. |
| Full Helix/REW tuning methodologies | Reject as duplication | The user already has a specialised tuning Skill; this repo only orchestrates and preserves state. |

No third-party files or scripts were copied or executed. License review is therefore not applicable to bundled code; external links are references only.
