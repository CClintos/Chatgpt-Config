$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot
$config = Get-Content -Raw (Join-Path $root '.codex\config.toml')
if ($config -notmatch 'model\s*=\s*"gpt-6-luna"') { throw 'Primary model is not Luna' }
if ($config -notmatch 'model_reasoning_effort\s*=\s*"high"') { throw 'Primary effort is not High' }
if ($config -notmatch 'max_concurrent_threads_per_session\s*=\s*1') { throw 'Concurrency is not capped at one' }
$astra = Get-Content -Raw (Join-Path $root '.codex\agents\astra-reviewer.toml')
if ($astra -notmatch 'model\s*=\s*"gpt-6-astra"' -or $astra -notmatch 'explicit user approval') { throw 'Astra guardrail missing' }
$rootAgents = Get-Content -Raw (Join-Path $root 'AGENTS.md')
if ($rootAgents -match 'crossover|Search Console|Helix|REW|WordPress') { throw 'Root instructions contain specialist detail' }
Write-Output 'Routing assertions: OK'
