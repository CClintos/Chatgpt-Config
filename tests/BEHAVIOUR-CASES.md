# Behavioral evaluation cases

These cases are evaluation criteria, not claims that offline tests can prove runtime model selection.

| Case | Expected behavior | Offline status |
| --- | --- | --- |
| Trivial edit | Use selected worker; complete edit and focused verification without a research detour | Manual scenario review |
| Bounded hard task | Directly use `luna-deep` when warranted | Inspectable config |
| Architecture/root cause | Use `sol-planner` with compact evidence | Inspectable config |
| Ordinary work | Never trigger Astra | Inspectable description/instructions |
| Astra review | Compact evidence only and explicit approval | Inspectable instruction |
| Routine SEO | Load `seo-operator`, not car-audio workflow | Skill trigger separation |
| Car audio | Load `car-audio-orchestrator`, defer specialised tuning | Skill trigger separation |
| Login/permission blocker | Resolve access/evidence, do not escalate model | Root/skill instructions |
| Repeated work | Read STATE before history/full audit | State templates |
| Risky production change | Reuse existing scope approval; preserve rollback and verify affected public result | Root/SEO/agent instructions |
| Approved SEO batch | Implement and verify the batch; no repeated request to begin | Manual scenario review |
| SEO review only | Produce actionable findings without publishing changes | Manual scenario review |
| Research-heavy SEO request | Investigate material unknowns and turn findings into the requested artifact or authorized changes | Manual scenario review |
| Missing SEO state template | Use actual project evidence and continue; do not create a competing state system | Manual scenario review |
| Indexing pending, header fix approved | Continue header implementation; avoid repeated unchanged indexing checks | Manual scenario review |
| Routine website improvement | SEO workflow applies; MSP one-test waiting does not | Manual scenario review |
| Extra High handoff | Recommend only for valuable deep planning | Handoff workflow |

Runtime activation, actual account model availability, usage accounting, and whether the desktop client exposes every custom-agent control must be tested in the target Codex release and account.
