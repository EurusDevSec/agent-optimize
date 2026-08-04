# Eurus Agent 1-Line Installer for Windows PowerShell
$repoUrl = "https://github.com/EurusDevSec/eurus-agent.git"
$tempDir = "temp_eurus_installer"

Write-Host "💨 Installing eurus-agent v2.3 into current project..." -ForegroundColor Cyan

if (Test-Path $tempDir) { Remove-Item -Recurse -Force $tempDir }

git clone --depth 1 $repoUrl $tempDir

if (Test-Path "$tempDir\.agent") {
    if (-not (Test-Path ".agent")) { New-Item -ItemType Directory -Path ".agent" | Out-Null }
    Copy-Item -Path "$tempDir\.agent\*" -Destination ".agent" -Recurse -Force
    Copy-Item -Path "$tempDir\AGENTS.md" -Destination "AGENTS.md" -Force
    if (Test-Path "$tempDir\.mcp.json") { Copy-Item -Path "$tempDir\.mcp.json" -Destination ".mcp.json" -Force }
    Remove-Item -Recurse -Force $tempDir
    Write-Host "✅ SUCCESS: eurus-agent v2.3 successfully installed! Run '/init' in your AI CLI to start." -ForegroundColor Green
} else {
    Write-Host "❌ ERROR: Failed to clone eurus-agent repository." -ForegroundColor Red
}
