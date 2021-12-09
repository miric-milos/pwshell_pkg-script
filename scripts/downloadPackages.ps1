# Install chocolatey
Write-Host "Installing Chocolatey package manager"
Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

$packages = 
    "git",
    "docker-desktop",
    "wsl2", 
    "vscode",
    "postman",
    "visualstudio2022community";

Write-Host "Installing required packages"
# Install each package while confirming all prompts
foreach ($p in $packages) {
    Write-Host "Installing package: $p"
    choco install $p --yes
}