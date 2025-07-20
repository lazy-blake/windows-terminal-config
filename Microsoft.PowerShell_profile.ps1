try {
    # --- Oh-My-Posh Initialization ---
    # Loads Oh My Posh theme safely using environment variable
    $ompConfigPath = Join-Path $env:POSH_THEMES_PATH 'easy-term.omp.json'
    if (Test-Path $ompConfigPath) {
        oh-my-posh init pwsh --config $ompConfigPath | Invoke-Expression
    }

    # --- Chocolatey Tab Completion Support ---
    $chocoProfile = Join-Path $env:ChocolateyInstall 'helpers\chocolateyProfile.psm1'
    if (Test-Path $chocoProfile) {
        Import-Module $chocoProfile -ErrorAction SilentlyContinue
    }

    # --- Terminal-Icons Module ---
    Import-Module Terminal-Icons -ErrorAction SilentlyContinue

    # --- Zoxide Initialization ---
    if (Get-Command zoxide -ErrorAction SilentlyContinue) {
        Invoke-Expression (& { (zoxide init powershell | Out-String) })
    }

    # --- PSReadLine Autosuggestions from History ---
    # Make sure to run this command before enabling the prediction source.
    # (Install-Module -Name PSReadLine -Force)

    # This provides command suggestions based on your history.
    Set-PSReadLineOption -PredictionSource History -ErrorAction SilentlyContinue
}
catch {
    # This block will safely catch any errors from the commands above.
    # It prevents the terminal from crashing and shows you the error message.
    Write-Warning "An error occurred while loading the PowerShell profile."
    # The $_ variable contains the actual error record.
    Write-Warning $_.Exception.Message
}
