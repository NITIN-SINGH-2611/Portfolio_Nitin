# GitHub Setup Script for Portfolio
# Run this script in PowerShell from the NITIN_SINGH directory

Write-Host "=== Portfolio GitHub Setup ===" -ForegroundColor Cyan
Write-Host ""

# Check if git is installed
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "Initializing Git repository..." -ForegroundColor Yellow

# Initialize git if not already initialized
if (-not (Test-Path .git)) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "Adding all files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer"
Write-Host "✓ Initial commit created" -ForegroundColor Green

Write-Host ""
Write-Host "=== Next Steps ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "1. Create a new repository on GitHub:" -ForegroundColor Yellow
Write-Host "   - Go to https://github.com/new" -ForegroundColor White
Write-Host "   - Repository name: portfolio (or your preferred name)" -ForegroundColor White
Write-Host "   - Description: Personal Portfolio Website" -ForegroundColor White
Write-Host "   - Choose Public or Private" -ForegroundColor White
Write-Host "   - DO NOT initialize with README" -ForegroundColor White
Write-Host "   - Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "2. Connect your local repository to GitHub:" -ForegroundColor Yellow
Write-Host "   git remote add origin https://github.com/YOUR_USERNAME/portfolio.git" -ForegroundColor White
Write-Host "   (Replace YOUR_USERNAME with your GitHub username)" -ForegroundColor Gray
Write-Host ""
Write-Host "3. Push to GitHub:" -ForegroundColor Yellow
Write-Host "   git branch -M main" -ForegroundColor White
Write-Host "   git push -u origin main" -ForegroundColor White
Write-Host ""
Write-Host "For detailed instructions, see GITHUB_SETUP.md" -ForegroundColor Cyan
Write-Host ""

