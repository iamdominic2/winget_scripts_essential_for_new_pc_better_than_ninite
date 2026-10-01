# Run in PowerShell as Administrator
$life = @(
    "7zip.7zip",
    "RARLab.WinRAR",
    "Adobe.Acrobat.Reader.64-bit",
    "Anki.Anki",
    "Microsoft.PowerToys",
    "Microsoft.WindowsTerminal",
    "Microsoft.Office365.Client",
    "Git.Git",
    "Google.Chrome",
    "Grammarly.Grammarly",
    "Google.Drive",
    "Notepad++.Notepad++",
    "JohnMacFarlane.Pandoc",
    "Python.Python.3.12",
    "VideoLAN.VLC",
    "xanderfrangos.twinkletray",
    "Zoom.Zoom",
    "Microsoft.VisualStudioCode"
)



foreach ($soul in $life) {
    Write-Host "Installing $soul..."
    winget install --id $app -e --accept-package-agreements --accept-source-agreements
}

