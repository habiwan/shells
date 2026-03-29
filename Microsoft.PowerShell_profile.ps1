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
