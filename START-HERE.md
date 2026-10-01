# Start here

1. Clone this private repository and open its root in Codex.
2. Trust the project when Codex asks. Project `.codex/` configuration is ignored for untrusted projects.
3. Sign in separately to ChatGPT/Codex and to any browser services you need.
4. Read the relevant compact state file before continuing a long-running project.
5. Use the normal Codex worker for routine work. Ask for a custom agent only when the bounded escalation rules fit.
6. Record a lightweight usage row after meaningful tasks in `projects/usage/USAGE-LOG.csv`.

The root `AGENTS.md` is intentionally short. Domain workflows are progressively loaded from `.agents/skills/` only when relevant. The two state files are safe summaries; detailed history belongs in their logs.

Normal Chat Extra High is separate from Codex. When a difficult planning problem would benefit from it, fill in `handoffs/EXTRA-HIGH-REQUEST.md`, paste it into a normal ChatGPT conversation, and save the answer as `handoffs/EXTRA-HIGH-RESPONSE.md`. Codex cannot invoke that allowance automatically.
