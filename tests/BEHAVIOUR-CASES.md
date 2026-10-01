# Behavioral evaluation cases

These cases are evaluation criteria, not claims that offline tests can prove runtime model selection.

| Case | Expected behavior | Offline status |
| --- | --- | --- |
| Trivial edit | Stay on Luna worker; no specialist | Inspectable instruction |
| Bounded hard task | Directly use `luna-deep` when warranted | Inspectable config |
| Architecture/root cause | Use `sol-planner` with compact evidence | Inspectable config |
| Ordinary work | Never trigger Astra | Inspectable description/instructions |
| Astra review | Compact evidence only and explicit approval | Inspectable instruction |
| Routine SEO | Load `seo-operator`, not car-audio workflow | Skill trigger separation |
| Car audio | Load `car-audio-orchestrator`, defer specialised tuning | Skill trigger separation |
| Login/permission blocker | Resolve access/evidence, do not escalate model | Root/skill instructions |
| Repeated work | Read STATE before history/full audit | State templates |
| Risky production change | Review and verify before mutation | Root/SEO/agent instructions |
| Extra High handoff | Recommend only for valuable deep planning | Handoff workflow |

Runtime activation, actual account model availability, usage accounting, and whether the desktop client exposes every custom-agent control must be tested in the target Codex release and account.
