oh-my-posh init pwsh | Invoke-Expression
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

Clear-Host

if (Get-Command fastfetch -ErrorAction SilentlyContinue) {
    fastfetch --config "$env:USERPROFILE\.config\fastfetch\config.jsonc"
}
