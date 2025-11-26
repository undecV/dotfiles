oh-my-posh init pwsh --config "$env:USERPROFILE\.config\oh-my-posh\catppuccin.omp.json" | Invoke-Expression
fnm env --use-on-cd --shell powershell | Out-String | Invoke-Expression

if (Get-Command lsd -ErrorAction SilentlyContinue) {

    # Force override a built-in alias
    if (Get-Alias ls -ErrorAction SilentlyContinue) {
        Remove-Item alias:ls -Force
    }

    function ls { lsd @args }

    function la { lsd -a @args }
    function ll { lsd -lh @args }
    function lla { lsd -alh @args }
    function tree { lsd --tree @args }
    function lz { lsd -alhZ @args }

    Set-Alias l ll
    Set-Alias lt tree
    Set-Alias llz lz
}
