
# =============================================================================

# Choice a theme:

# $colorScheme = "Catppuccin Latte"
# $colorScheme = "Catppuccin Frappe"
# $colorScheme = "Catppuccin Macchiato"
$colorScheme = "Catppuccin Mocha"

# =============================================================================

$settingsPath = [IO.Path]::Combine(
    $env:LOCALAPPDATA,
    'Packages',
    'Microsoft.WindowsTerminal_8wekyb3d8bbwe',
    'LocalState',
    'settings.json'
)

if (-not (Test-Path $settingsPath)) {
    Write-Error (
        -join @(
            "Can not find the config file for Windows Terminal:"
            "$settingsPath"
        )
    )
    return
}

$timestamp = Get-Date -Format 'yyyyMMddTHHmmss'
$backupPath = "$settingsPath.backup.$timestamp.json"
Copy-Item -Path $settingsPath -Destination $backupPath -Force
Write-Host "Backup `"settings.json`" into: $backupPath"

$settingsRaw = Get-Content -Path $settingsPath -Raw
$settings = $settingsRaw | ConvertFrom-Json

# ConvertTo-Json $settings | Write-Host

if (-not $settings.profiles) {
    $settings | Add-Member -MemberType NoteProperty -Name profiles `
        -Value ([pscustomobject]@{})
}
if (-not $settings.profiles.defaults) {
    $settings.profiles | Add-Member -MemberType NoteProperty -Name defaults `
        -Value ([pscustomobject]@{})
}

$settings.profiles.defaults.colorScheme = $colorScheme

$schemes_json = @'
[
    {
        "background": "#303446",
        "black": "#51576D",
        "blue": "#8CAAEE",
        "brightBlack": "#626880",
        "brightBlue": "#8CAAEE",
        "brightCyan": "#81C8BE",
        "brightGreen": "#A6D189",
        "brightPurple": "#F4B8E4",
        "brightRed": "#E78284",
        "brightWhite": "#A5ADCE",
        "brightYellow": "#E5C890",
        "cursorColor": "#F2D5CF",
        "cyan": "#81C8BE",
        "foreground": "#C6D0F5",
        "green": "#A6D189",
        "name": "Catppuccin Frappe",
        "purple": "#F4B8E4",
        "red": "#E78284",
        "selectionBackground": "#626880",
        "white": "#B5BFE2",
        "yellow": "#E5C890"
    },
    {
        "background": "#EFF1F5",
        "black": "#5C5F77",
        "blue": "#1E66F5",
        "brightBlack": "#ACB0BE",
        "brightBlue": "#1E66F5",
        "brightCyan": "#179299",
        "brightGreen": "#40A02B",
        "brightPurple": "#EA76CB",
        "brightRed": "#D20F39",
        "brightWhite": "#BCC0CC",
        "brightYellow": "#DF8E1D",
        "cursorColor": "#DC8A78",
        "cyan": "#179299",
        "foreground": "#4C4F69",
        "green": "#40A02B",
        "name": "Catppuccin Latte",
        "purple": "#EA76CB",
        "red": "#D20F39",
        "selectionBackground": "#ACB0BE",
        "white": "#ACB0BE",
        "yellow": "#DF8E1D"
    },
    {
        "background": "#24273A",
        "black": "#494D64",
        "blue": "#8AADF4",
        "brightBlack": "#5B6078",
        "brightBlue": "#8AADF4",
        "brightCyan": "#8BD5CA",
        "brightGreen": "#A6DA95",
        "brightPurple": "#F5BDE6",
        "brightRed": "#ED8796",
        "brightWhite": "#A5ADCB",
        "brightYellow": "#EED49F",
        "cursorColor": "#F4DBD6",
        "cyan": "#8BD5CA",
        "foreground": "#CAD3F5",
        "green": "#A6DA95",
        "name": "Catppuccin Macchiato",
        "purple": "#F5BDE6",
        "red": "#ED8796",
        "selectionBackground": "#5B6078",
        "white": "#B8C0E0",
        "yellow": "#EED49F"
    },
    {
        "background": "#1E1E2E",
        "black": "#45475A",
        "blue": "#89B4FA",
        "brightBlack": "#585B70",
        "brightBlue": "#89B4FA",
        "brightCyan": "#94E2D5",
        "brightGreen": "#A6E3A1",
        "brightPurple": "#F5C2E7",
        "brightRed": "#F38BA8",
        "brightWhite": "#A6ADC8",
        "brightYellow": "#F9E2AF",
        "cursorColor": "#F5E0DC",
        "cyan": "#94E2D5",
        "foreground": "#CDD6F4",
        "green": "#A6E3A1",
        "name": "Catppuccin Mocha",
        "purple": "#F5C2E7",
        "red": "#F38BA8",
        "selectionBackground": "#585B70",
        "white": "#BAC2DE",
        "yellow": "#F9E2AF"
    }
]
'@

$themes_json = @'
[
    {
        "name": "Catppuccin Frappe",
        "tab": 
        {
            "background": "#303446FF",
            "iconStyle": "default",
            "showCloseButton": "always",
            "unfocusedBackground": null
        },
        "tabRow": 
        {
            "background": "#292C3CFF",
            "unfocusedBackground": "#232634FF"
        },
        "window": 
        {
            "applicationTheme": "dark",
            "experimental.rainbowFrame": false,
            "frame": null,
            "unfocusedFrame": null,
            "useMica": false
        }
    },
    {
        "name": "Catppuccin Latte",
        "tab": 
        {
            "background": "#EFF1F5FF",
            "iconStyle": "default",
            "showCloseButton": "always",
            "unfocusedBackground": null
        },
        "tabRow": 
        {
            "background": "#E6E9EFFF",
            "unfocusedBackground": "#DCE0E8FF"
        },
        "window": 
        {
            "applicationTheme": "light",
            "experimental.rainbowFrame": false,
            "frame": null,
            "unfocusedFrame": null,
            "useMica": false
        }
    },
    {
        "name": "Catppuccin Macchiato",
        "tab": 
        {
            "background": "#24273AFF",
            "iconStyle": "default",
            "showCloseButton": "always",
            "unfocusedBackground": null
        },
        "tabRow": 
        {
            "background": "#1E2030FF",
            "unfocusedBackground": "#181926FF"
        },
        "window": 
        {
            "applicationTheme": "dark",
            "experimental.rainbowFrame": false,
            "frame": null,
            "unfocusedFrame": null,
            "useMica": false
        }
    },
    {
        "name": "Catppuccin Mocha",
        "tab": 
        {
            "background": "#1E1E2EFF",
            "iconStyle": "default",
            "showCloseButton": "always",
            "unfocusedBackground": null
        },
        "tabRow": 
        {
            "background": "#181825FF",
            "unfocusedBackground": "#11111BFF"
        },
        "window": 
        {
            "applicationTheme": "dark",
            "experimental.rainbowFrame": false,
            "frame": null,
            "unfocusedFrame": null,
            "useMica": false
        }
    }
]
'@

$settings.schemes = @(($schemes_json | ConvertFrom-Json) | ForEach-Object { $_ })
$settings.themes = @(($themes_json | ConvertFrom-Json) | ForEach-Object { $_ })

$settings | ConvertTo-Json -Depth 64 | Set-Content $settingsPath -Encoding UTF8
Write-Host "Windows Terminal schemes/themes Catppuccin applied!"
