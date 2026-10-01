# Model routing

## Default

The project config selects `gpt-6-luna` with `model_reasoning_effort = "high"`. This is the default worker for browsing, repetitive investigation, inspection, ordinary edits, testing, validation, routine SEO, structured research, and bulk work.

## Direct escalation

- `luna-deep`: one difficult but bounded problem where Luna at `xhigh` is likely to cost less than a model-tier escalation.
- `sol-planner`: ambiguous architecture, difficult root-cause analysis, conflicting evidence, risky SEO decisions, or complex Skill design. Read-only, `gpt-6.1-sol` Medium.
- `sol-reviewer`: read-only review of a consequential plan/diff before implementation or release. `gpt-6.1-sol` High.
- `astra-reviewer`: rare one-shot frontier review. `gpt-6-astra` Low, read-only, compact evidence only, and explicit user approval required by project instructions.

Do not run a mandatory Luna-to-Sol-to-Astra ladder. Do not escalate a login, permission, missing-evidence, or unavailable-tool problem; resolve the access/evidence boundary instead.

## Verified product boundaries

Official documentation verifies project `.codex/config.toml`, project `.codex/agents/*.toml`, `[agents]`, and custom-agent fields `name`, `description`, and `developer_instructions`. The current docs also verify `model_reasoning_effort` and the model IDs used here: `gpt-6-luna`, `gpt-6.1-sol`, and `gpt-6-astra`.

The user-requested name “GPT-6 Sol” is not the current documented model ID for new configuration; current docs use `gpt-6.1-sol`. The repo does not invent a `gpt-6-sol` project default.

OpenAI documentation supports project defaults and custom agents, but does not establish an automatic primary-agent model ladder, a guaranteed “Extra High” spelling in every client, or automatic invocation of normal ChatGPT Extra High. Those are treated as documented workflow conventions/evaluation cases, not runtime guarantees.

Subagent concurrency is intentionally set to `1` because parallelism consumes more usage and is rarely needed for this personal workflow. The key is currently documented as `agents.max_concurrent_threads_per_session`; older configurations may use the legacy alias `agents.max_threads`.

## Official references checked 2026-10-01

- [Config basics](https://learn.chatgpt.com/docs/config-file/config-basic)
- [Configuration reference](https://learn.chatgpt.com/docs/config-file/config-reference)
- [Custom instructions with AGENTS.md](https://learn.chatgpt.com/docs/agent-configuration/agents-md)
- [Subagents and custom agents](https://learn.chatgpt.com/docs/agent-configuration/subagents)
- [Build skills](https://learn.chatgpt.com/docs/build-skills)
- [Using GPT-6](https://developers.openai.com/api/docs/guides/latest-model)
- [Model selection](https://developers.openai.com/api/docs/guides/model-selection)
