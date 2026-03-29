function fixomp {
    $profileContent = @(
        'fastfetch --logo "$HOME\hwk.txt"',
        'oh-my-posh init pwsh | Invoke-Expression',
        '# To repair this file again, type: fixomp'
    )
    $profileContent | Out-File -FilePath $PROFILE -Encoding utf8
    Write-Host "Profile repaired! Restart your terminal to see changes." -ForegroundColor Green
}
fastfetch --logo "$HOME\hwk.txt"
oh-my-posh init pwsh | Invoke-Expression

function Sync-Shells {
    Set-Location "C:\src\dotfiles"
    Write-Host "Updating from GitHub..." -ForegroundColor Cyan
    git pull origin main
    Write-Host "Backing up Windows config..." -ForegroundColor Cyan
    git add .
    git commit -m "Auto-sync Windows: $(Get-Date -Format 'yyyy-MM-dd HH:mm')"
    git push origin main
    Write-Host "Done! System is in sync." -ForegroundColor Green
    Set-Location $HOME
}
New-Alias -Name sync -Value Sync-Shells -Force