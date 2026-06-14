#!/usr/bin/env powershell
# Script to start Flutter frontend for BUMDes Jabar app

Write-Host "🚀 Starting BUMDes Frontend..." -ForegroundColor Cyan
Write-Host ""

Push-Location "bumdes_frontend"

# Check if dependencies are installed
if (-not (Test-Path "pubspec.lock")) {
    Write-Host "📦 Installing Flutter dependencies..." -ForegroundColor Yellow
    & flutter pub get
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Failed to install dependencies" -ForegroundColor Red
        Pop-Location
        exit 1
    }
}

Write-Host "✅ Dependencies ready" -ForegroundColor Green
Write-Host ""
Write-Host "📝 Launching Flutter app..." -ForegroundColor Cyan
Write-Host ""

# Run Flutter app
& flutter run

Pop-Location
