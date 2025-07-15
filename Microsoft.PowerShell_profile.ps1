# ─── Oh My Posh Prompt ──────────────────────────────
oh-my-posh init pwsh --config "$env:POSH_THEMES_PATH\clean-detailed.omp.json" | Invoke-Expression

# ─── Chocolatey Tab Completion ───────────────────────
$ChocolateyProfile = "$env:ChocolateyInstall\helpers\chocolateyProfile.psm1"
if (Test-Path($ChocolateyProfile)) {
  Import-Module "$ChocolateyProfile"
}

# ─── Terminal Icons ──────────────────────────────────
Import-Module -Name Terminal-Icons

# ─── zoxide Directory Jumper ─────────────────────────
Invoke-Expression (& { (zoxide init powershell | Out-String) })

