# Push Portfolio to Existing GitHub Repository
# Repository: https://github.com/NITIN-SINGH-2611/Portfolio.git

$ErrorActionPreference = "Stop"
$GitHubUsername = "NITIN-SINGH-2611"
$RepoName = "Portfolio"
$RepoUrl = "https://github.com/$GitHubUsername/$RepoName.git"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Push Portfolio to GitHub" -ForegroundColor Cyan
Write-Host "  Repository: $RepoUrl" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check Git Installation
Write-Host "[1/6] Checking Git installation..." -ForegroundColor Yellow
$gitCheck = git --version 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Git is installed: $gitCheck" -ForegroundColor Green
} else {
    Write-Host "✗ Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    exit 1
}

# Step 2: Initialize Git Repository
Write-Host ""
Write-Host "[2/6] Initializing Git repository..." -ForegroundColor Yellow
if (-not (Test-Path .git)) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already exists" -ForegroundColor Green
}

# Step 3: Configure Git User (if not set)
Write-Host ""
Write-Host "[3/6] Configuring Git user..." -ForegroundColor Yellow
$gitUser = git config user.name 2>$null
$gitEmail = git config user.email 2>$null

if (-not $gitUser -or -not $gitEmail) {
    Write-Host "Setting up Git user..." -ForegroundColor Yellow
    git config user.name "Nitin Singh Samant"
    git config user.email "19BCS2408@gmail.com"
    Write-Host "✓ Git user configured" -ForegroundColor Green
} else {
    Write-Host "✓ Git user: $gitUser ($gitEmail)" -ForegroundColor Green
}

# Step 4: Add Remote Repository
Write-Host ""
Write-Host "[4/6] Setting up remote repository..." -ForegroundColor Yellow
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    if ($remoteExists -ne $RepoUrl) {
        Write-Host "Updating remote URL..." -ForegroundColor Yellow
        git remote set-url origin $RepoUrl
        Write-Host "✓ Remote updated to: $RepoUrl" -ForegroundColor Green
    } else {
        Write-Host "✓ Remote already configured correctly" -ForegroundColor Green
    }
} else {
    git remote add origin $RepoUrl
    Write-Host "✓ Remote repository added" -ForegroundColor Green
}

# Step 5: Add and Commit Files
Write-Host ""
Write-Host "[5/6] Adding files to Git..." -ForegroundColor Yellow
git add .
$commitResult = git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer" 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Files committed successfully" -ForegroundColor Green
} else {
    if ($commitResult -match "nothing to commit") {
        Write-Host "⚠ No changes to commit" -ForegroundColor Yellow
        Write-Host "  Files may already be committed. Proceeding to push..." -ForegroundColor Gray
    } else {
        Write-Host "✗ Error: $commitResult" -ForegroundColor Red
        exit 1
    }
}

# Step 6: Set Branch and Push
Write-Host ""
Write-Host "[6/6] Pushing to GitHub..." -ForegroundColor Yellow
git branch -M main

Write-Host ""
Write-Host "Pushing files to: $RepoUrl" -ForegroundColor Cyan
Write-Host ""
Write-Host "You will be prompted for credentials:" -ForegroundColor Yellow
Write-Host "  Username: $GitHubUsername" -ForegroundColor White
Write-Host "  Password: Use a Personal Access Token (NOT your GitHub password)" -ForegroundColor White
Write-Host ""
Write-Host "Create token: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host "  - Select 'repo' scope" -ForegroundColor Gray
Write-Host ""

git push -u origin main
if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Green
    Write-Host "  SUCCESS! Portfolio uploaded!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Green
    Write-Host ""
    Write-Host "Repository URL: https://github.com/$GitHubUsername/$RepoName" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Yellow
    Write-Host "  NEXT: Enable GitHub Pages" -ForegroundColor Yellow
    Write-Host "========================================" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "To make your portfolio accessible online:" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "1. Go to: https://github.com/$GitHubUsername/$RepoName/settings/pages" -ForegroundColor White
    Write-Host "2. Under 'Source', select 'main' branch" -ForegroundColor White
    Write-Host "3. Select '/ (root)' folder" -ForegroundColor White
    Write-Host "4. Click 'Save'" -ForegroundColor White
    Write-Host "5. Wait 1-2 minutes for GitHub to build" -ForegroundColor White
    Write-Host ""
    Write-Host "Your portfolio will be live at:" -ForegroundColor Green
    Write-Host "  https://$GitHubUsername.github.io/$RepoName/" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Simple link page:" -ForegroundColor Green
    Write-Host "  https://$GitHubUsername.github.io/$RepoName/nitin.html" -ForegroundColor Cyan
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "✗ Push failed. Common issues:" -ForegroundColor Red
    Write-Host "  1. Authentication failed - use Personal Access Token" -ForegroundColor Yellow
    Write-Host "  2. Repository does not exist or wrong permissions" -ForegroundColor Yellow
    Write-Host "  3. Network connection issue" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Try again or check: https://github.com/$GitHubUsername/$RepoName" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Manual push command:" -ForegroundColor Yellow
    Write-Host "  git push -u origin main" -ForegroundColor White
}

Write-Host ""

