# Upload Portfolio to GitHub - NITIN-SINGH-2611
# Run this script from the NITIN_SINGH directory

Write-Host "=== Uploading Portfolio to GitHub ===" -ForegroundColor Cyan
Write-Host "GitHub Username: NITIN-SINGH-2611" -ForegroundColor Yellow
Write-Host ""

# Check if git is installed
try {
    $gitVersion = git --version
    Write-Host "✓ Git is installed: $gitVersion" -ForegroundColor Green
} catch {
    Write-Host "✗ Git is not installed or not in PATH" -ForegroundColor Red
    Write-Host "Please install Git from: https://git-scm.com/download/win" -ForegroundColor Yellow
    Write-Host "After installing, restart PowerShell and run this script again." -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "Step 1: Initializing Git repository..." -ForegroundColor Yellow

# Initialize git if not already initialized
if (-not (Test-Path .git)) {
    git init
    Write-Host "✓ Git repository initialized" -ForegroundColor Green
} else {
    Write-Host "✓ Git repository already initialized" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 2: Adding all files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Step 3: Creating initial commit..." -ForegroundColor Yellow
git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer"
Write-Host "✓ Initial commit created" -ForegroundColor Green

Write-Host ""
Write-Host "Step 4: Setting up remote repository..." -ForegroundColor Yellow

# Check if remote already exists
$remoteExists = git remote get-url origin 2>$null
if ($remoteExists) {
    Write-Host "Remote 'origin' already exists: $remoteExists" -ForegroundColor Yellow
    $update = Read-Host "Do you want to update it? (y/n)"
    if ($update -eq 'y' -or $update -eq 'Y') {
        git remote set-url origin https://github.com/NITIN-SINGH-2611/portfolio.git
        Write-Host "✓ Remote updated" -ForegroundColor Green
    }
} else {
    git remote add origin https://github.com/NITIN-SINGH-2611/portfolio.git
    Write-Host "✓ Remote repository added" -ForegroundColor Green
}

Write-Host ""
Write-Host "Step 5: Setting branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch set to main" -ForegroundColor Green

Write-Host ""
Write-Host "=== IMPORTANT: Create Repository on GitHub First ===" -ForegroundColor Cyan
Write-Host ""
Write-Host "Before pushing, you need to create the repository on GitHub:" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to: https://github.com/new" -ForegroundColor White
Write-Host "2. Repository name: portfolio" -ForegroundColor White
Write-Host "3. Description: Personal Portfolio Website - Java Backend Developer & DevOps Engineer" -ForegroundColor White
Write-Host "4. Choose Public or Private" -ForegroundColor White
Write-Host "5. DO NOT initialize with README, .gitignore, or license" -ForegroundColor White
Write-Host "6. Click 'Create repository'" -ForegroundColor White
Write-Host ""
Write-Host "After creating the repository, press Enter to continue with push..." -ForegroundColor Yellow
Read-Host

Write-Host ""
Write-Host "Step 6: Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You will be prompted for your GitHub credentials." -ForegroundColor Yellow
Write-Host ""

try {
    git push -u origin main
    Write-Host ""
    Write-Host "✓ Successfully pushed to GitHub!" -ForegroundColor Green
    Write-Host ""
    Write-Host "Your portfolio is now available at:" -ForegroundColor Cyan
    Write-Host "https://github.com/NITIN-SINGH-2611/portfolio" -ForegroundColor White
    Write-Host ""
    Write-Host "To enable GitHub Pages (host your portfolio online):" -ForegroundColor Yellow
    Write-Host "1. Go to repository Settings > Pages" -ForegroundColor White
    Write-Host "2. Select 'main' branch as source" -ForegroundColor White
    Write-Host "3. Your site will be at: https://NITIN-SINGH-2611.github.io/portfolio/" -ForegroundColor White
} catch {
    Write-Host ""
    Write-Host "✗ Error pushing to GitHub" -ForegroundColor Red
    Write-Host "Make sure:" -ForegroundColor Yellow
    Write-Host "1. The repository exists on GitHub" -ForegroundColor White
    Write-Host "2. You have the correct credentials" -ForegroundColor White
    Write-Host "3. You may need to use a Personal Access Token instead of password" -ForegroundColor White
    Write-Host ""
    Write-Host "To push manually, run:" -ForegroundColor Yellow
    Write-Host "git push -u origin main" -ForegroundColor White
}

Write-Host ""

