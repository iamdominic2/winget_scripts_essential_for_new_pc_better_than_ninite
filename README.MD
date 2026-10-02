Download Fun.ps1

````cmd
cd ~
cd /d %userprofile%
cd Downloads
.\Fun.ps1
````
Contents of Fun.ps1:
````powershell
# Run in PowerShell as Administrator
winget source reset --force
winget source add -n winget -t Microsoft.Rest -a https://cdn.winget.microsoft.pkgs.visualstudio.com/cache
$packages = @(
    "7zip.7zip",
    "RARLab.WinRAR",
    "Adobe.Acrobat.Reader.64-bit",
    "Anki.Anki",
    "Microsoft.PowerToys",
    "Microsoft.WindowsTerminal",
    "Microsoft.365Apps",
    "Git.Git",
    "Google.Chrome",
    "Grammarly.Grammarly",
    "Google.DriveFS",
    "Notepad++.Notepad++",
    "JohnMacFarlane.Pandoc",
    "Python.Python.3.12",
    "VideoLAN.VLC",
    "xanderfrangos.twinkletray",
    "Zoom.Zoom",
    "Microsoft.VisualStudioCode",
    "AntibodySoftware.WizTree"
)

foreach ($package in $packages) {
    Write-Host "Installing $package..."
    winget install --id $package -s winget -e --accept-package-agreements --accept-source-agreements --silent

    # Wait for active Windows Installer processes to release locks
    while (Get-Process -Name "msiexec" -ErrorAction SilentlyContinue) {
        Start-Sleep -Seconds 2
    }
}
````
