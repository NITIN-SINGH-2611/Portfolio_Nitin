# Automated GitHub Upload Script for NITIN-SINGH-2611
# This script will upload your portfolio to GitHub automatically

param(
    [string]$GitHubToken = "",
    [string]$RepoName = "portfolio"
)

$ErrorActionPreference = "Stop"
$GitHubUsername = "NITIN-SINGH-2611"
$RepoUrl = "https://github.com/$GitHubUsername/$RepoName"

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Automated GitHub Upload Script" -ForegroundColor Cyan
Write-Host "  GitHub Account: $GitHubUsername" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Step 1: Check Git Installation
Write-Host "[1/7] Checking Git installation..." -ForegroundColor Yellow
try {
    $gitVersion = git --version 2>&1
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "After installation, restart PowerShell and run this script again." -ForegroundColor Yellow
    exit 1
}

# Step 2: Check GitHub CLI (optional but helpful)
Write-Host ""
Write-Host "[2/7] Checking GitHub CLI (gh)..." -ForegroundColor Yellow
$hasGhCli = $false
try {
    $ghVersion = gh --version 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ GitHub CLI is installed" -ForegroundColor Green
        $hasGhCli = $true
    }
} catch {
    Write-Host "⚠ GitHub CLI not found (optional)" -ForegroundColor Yellow
    Write-Host "  You can install it from: https://cli.github.com/" -ForegroundColor Gray
}

# Step 3: Initialize Git Repository
Write-Host ""
Write-Host "[3/7] Initializing Git repository..." -ForegroundColor Yellow
if (-not (Test-Path .git)) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already exists" -ForegroundColor Green
}

# Step 4: Configure Git User (if not set)
Write-Host ""
Write-Host "[4/7] Configuring Git user..." -ForegroundColor Yellow
$gitUser = git config user.name 2>$null
$gitEmail = git config user.email 2>$null

if (-not $gitUser -or -not $gitEmail) {
    Write-Host "Git user not configured. Setting up..." -ForegroundColor Yellow
    git config user.name "Nitin Singh Samant"
    git config user.email "19BCS2408@gmail.com"
    Write-Host "✓ Git user configured" -ForegroundColor Green
} else {
    Write-Host "✓ Git user already configured: $gitUser <$gitEmail>" -ForegroundColor Green
}

# Step 5: Add and Commit Files
Write-Host ""
Write-Host "[5/7] Adding files to Git..." -ForegroundColor Yellow
git add .
$commitResult = git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer" 2>&1
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Files committed successfully" -ForegroundColor Green
} else {
    if ($commitResult -match "nothing to commit") {
        Write-Host "⚠ No changes to commit (files already committed)" -ForegroundColor Yellow
    } else {
        Write-Host "✗ Error committing files: $commitResult" -ForegroundColor Red
        exit 1
    }
}

# Step 6: Set Branch to Main
Write-Host ""
Write-Host "[6/7] Setting branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch set to main" -ForegroundColor Green

# Step 7: Create Repository and Push
Write-Host ""
Write-Host "[7/7] Setting up GitHub repository..." -ForegroundColor Yellow

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "Remote 'origin' already exists: $remoteExists" -ForegroundColor Yellow
    $update = Read-Host "Update it to point to $RepoUrl? (y/n)"
    if ($update -eq 'y' -or $update -eq 'Y') {
        git remote set-url origin "https://github.com/$GitHubUsername/$RepoName.git"
        Write-Host "✓ Remote updated" -ForegroundColor Green
    }
} else {
    git remote add origin "https://github.com/$GitHubUsername/$RepoName.git"
    Write-Host "✓ Remote repository added" -ForegroundColor Green
}

# Try to create repository using GitHub CLI
if ($hasGhCli) {
    Write-Host ""
    Write-Host "Attempting to create repository using GitHub CLI..." -ForegroundColor Yellow
    
    # Check if authenticated
    $authStatus = gh auth status 2>&1
    if ($LASTEXITCODE -eq 0) {
        Write-Host "✓ GitHub CLI is authenticated" -ForegroundColor Green
        
        # Check if repo exists
        $repoExists = gh repo view "$GitHubUsername/$RepoName" 2>&1
        if ($LASTEXITCODE -eq 0) {
            Write-Host "✓ Repository already exists on GitHub" -ForegroundColor Green
        } else {
            Write-Host "Creating repository on GitHub..." -ForegroundColor Yellow
            gh repo create $RepoName --public --description "Personal Portfolio Website - Java Backend Developer & DevOps Engineer" --source=. --remote=origin --push 2>&1
            if ($LASTEXITCODE -eq 0) {
                Write-Host "✓ Repository created and pushed to GitHub!" -ForegroundColor Green
                Write-Host ""
                Write-Host "========================================" -ForegroundColor Green
                Write-Host "  SUCCESS! Repository uploaded!" -ForegroundColor Green
                Write-Host "========================================" -ForegroundColor Green
                Write-Host ""
                Write-Host "Repository URL: $RepoUrl" -ForegroundColor Cyan
                Write-Host ""
                Write-Host "Next: Enable GitHub Pages (see instructions below)" -ForegroundColor Yellow
                exit 0
            }
        }
    } else {
        Write-Host "⚠ GitHub CLI not authenticated" -ForegroundColor Yellow
        Write-Host "  Run: gh auth login" -ForegroundColor Gray
    }
}

# Manual repository creation required
Write-Host ""
Write-Host "========================================" -ForegroundColor Yellow
Write-Host "  MANUAL STEP REQUIRED" -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Yellow
Write-Host ""
Write-Host "Please create the repository on GitHub:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Open: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: $RepoName" -ForegroundColor White
Write-Host "3. Description: Personal Portfolio Website - Java Backend Developer & DevOps Engineer" -ForegroundColor White
Write-Host "4. Choose: Public" -ForegroundColor White
Write-Host "5. DO NOT check 'Initialize with README'" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "After creating, press Enter to continue with push..." -ForegroundColor Yellow
Read-Host

# Push to GitHub
Write-Host ""
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You will be prompted for credentials:" -ForegroundColor Yellow
Write-Host "  Username: $GitHubUsername" -ForegroundColor White
Write-Host "  Password: Use a Personal Access Token (not your GitHub password)" -ForegroundColor White
Write-Host "  Create token: https://github.com/settings/tokens" -ForegroundColor Gray
Write-Host ""

try {
    git push -u origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  SUCCESS! Repository uploaded!" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Repository URL: $RepoUrl" -ForegroundColor Cyan
    } else {
        Write-Host ""
        Write-Host "✗ Push failed. Common issues:" -ForegroundColor Red
        Write-Host "  1. Repository doesn't exist on GitHub" -ForegroundColor Yellow
        Write-Host "  2. Authentication failed (use Personal Access Token)" -ForegroundColor Yellow
        Write-Host "  3. Network connection issue" -ForegroundColor Yellow
        exit 1
    }
} catch {
    Write-Host ""
    Write-Host "✗ Error pushing: $_" -ForegroundColor Red
    exit 1
}

# Enable GitHub Pages instructions
Write-Host ""
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  ENABLE GITHUB PAGES" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "To make your portfolio accessible online:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to: $RepoUrl/settings/pages" -ForegroundColor White
Write-Host "2. Under 'Source', select 'main' branch" -ForegroundColor White
Write-Host "3. Click 'Save'" -ForegroundColor White
Write-Host "4. Wait 1-2 minutes for GitHub to build your site" -ForegroundColor White
Write-Host ""
Write-Host "Your portfolio will be live at:" -ForegroundColor Green
Write-Host "  https://$GitHubUsername.github.io/$RepoName/" -ForegroundColor Cyan
Write-Host ""
Write-Host "Simple link page:" -ForegroundColor Green
Write-Host "  https://$GitHubUsername.github.io/$RepoName/nitin.html" -ForegroundColor Cyan
Write-Host ""

