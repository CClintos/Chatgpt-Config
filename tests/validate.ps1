$ErrorActionPreference = 'Stop'
$root = Split-Path -Parent $PSScriptRoot

python -c "import tomllib, pathlib; [tomllib.loads(p.read_text(encoding='utf-8')) for p in pathlib.Path(r'$root').rglob('*.toml')]; print('TOML: OK')"

$skills = Get-ChildItem (Join-Path $root '.agents\skills') -Directory
foreach ($skill in $skills) {
    $validator = 'C:\Users\Adroit\.codex\skills\.system\skill-creator\scripts\quick_validate.py'
    python $validator $skill.FullName
    $yaml = Join-Path $skill.FullName 'agents\openai.yaml'
    if (-not (Test-Path $yaml)) { throw "Missing openai.yaml: $($skill.Name)" }
}

$bad = rg -n -i --hidden --glob '!.git/**' --glob '!tests/validate.ps1' --glob '!*.md' '(api[_-]?key|password|secret|token|cookie|BEGIN (RSA|OPENSSH|PRIVATE))\s*[:=]' $root 2>$null
if ($LASTEXITCODE -eq 0) { throw "Possible secret pattern found:`n$bad" }

$required = @('README.md','START-HERE.md','AGENTS.md','.codex\config.toml','docs\MODEL-ROUTING.md','projects\seo\STATE.md','projects\car-audio\STATE.md')
foreach ($path in $required) { if (-not (Test-Path (Join-Path $root $path))) { throw "Missing required path: $path" } }
Write-Output 'Repository validation: OK'
