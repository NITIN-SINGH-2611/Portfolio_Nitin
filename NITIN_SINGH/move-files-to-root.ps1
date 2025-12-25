# Move Files to Repository Root for GitHub Pages
# This script helps move files from NITIN_SINGH folder to root

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Move Files to Repository Root" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "This script will help you move files to the repository root" -ForegroundColor Yellow
Write-Host "so GitHub Pages can find your index.html file." -ForegroundColor Yellow
Write-Host ""

# Check if we're in the right directory
if (-not (Test-Path "index.html")) {
    Write-Host "⚠ Warning: index.html not found in current directory" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Are your files in a subfolder?" -ForegroundColor Yellow
    Write-Host "If yes, navigate to that folder first." -ForegroundColor White
    Write-Host ""
    $continue = Read-Host "Continue anyway? (y/n)"
    if ($continue -ne 'y' -and $continue -ne 'Y') {
        exit
    }
}

Write-Host "Step 1: Checking Git status..." -ForegroundColor Yellow
$gitStatus = git status 2>&1
if ($LASTEXITCODE -ne 0) {
    Write-Host "⚠ Not a Git repository. Initializing..." -ForegroundColor Yellow
    git init
    git remote add origin https://github.com/NITIN-SINGH-2611/Portfolio_Nitin.git 2>$null
}

Write-Host ""
Write-Host "Step 2: Current file structure..." -ForegroundColor Yellow
Get-ChildItem -File | Select-Object Name | Format-Table -AutoSize

Write-Host ""
Write-Host "Step 3: Checking if index.html exists..." -ForegroundColor Yellow
if (Test-Path "index.html") {
    Write-Host "✓ index.html found!" -ForegroundColor Green
} else {
    Write-Host "✗ index.html NOT found!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Your files might be in a subfolder." -ForegroundColor Yellow
    Write-Host "Please navigate to the folder containing index.html" -ForegroundColor Yellow
    Write-Host "and run this script again." -ForegroundColor Yellow
    exit 1
}

Write-Host ""
Write-Host "Step 4: Adding all files..." -ForegroundColor Yellow
git add .
Write-Host "✓ Files added" -ForegroundColor Green

Write-Host ""
Write-Host "Step 5: Creating commit..." -ForegroundColor Yellow
git commit -m "Ensure files are in root for GitHub Pages" 2>&1 | Out-Null
if ($LASTEXITCODE -eq 0) {
    Write-Host "✓ Commit created" -ForegroundColor Green
} else {
    Write-Host "⚠ No changes to commit (files already committed)" -ForegroundColor Yellow
}

Write-Host ""
Write-Host "Step 6: Setting branch to main..." -ForegroundColor Yellow
git branch -M main
Write-Host "✓ Branch set to main" -ForegroundColor Green

Write-Host ""
Write-Host "Step 7: Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "You will be prompted for credentials." -ForegroundColor Yellow
Write-Host ""
Write-Host "Username: NITIN-SINGH-2611" -ForegroundColor White
Write-Host "Password: Use Personal Access Token" -ForegroundColor White
Write-Host ""

$push = Read-Host "Push to GitHub now? (y/n)"
if ($push -eq 'y' -or $push -eq 'Y') {
    git push -u origin main
    if ($LASTEXITCODE -eq 0) {
        Write-Host ""
        Write-Host "========================================" -ForegroundColor Green
        Write-Host "  SUCCESS! Files pushed to GitHub" -ForegroundColor Green
        Write-Host "========================================" -ForegroundColor Green
        Write-Host ""
        Write-Host "Next steps:" -ForegroundColor Yellow
        Write-Host "1. Go to: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin/settings/pages" -ForegroundColor White
        Write-Host "2. Select 'main' branch" -ForegroundColor White
        Write-Host "3. Select '/ (root)' folder" -ForegroundColor White
        Write-Host "4. Click 'Save'" -ForegroundColor White
        Write-Host "5. Wait 2-3 minutes" -ForegroundColor White
        Write-Host ""
        Write-Host "Your portfolio will be at:" -ForegroundColor Green
        Write-Host "  https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/" -ForegroundColor Cyan
    } else {
        Write-Host ""
        Write-Host "✗ Push failed. Check your credentials." -ForegroundColor Red
    }
} else {
    Write-Host ""
    Write-Host "Files are ready. Push manually with:" -ForegroundColor Yellow
    Write-Host "  git push -u origin main" -ForegroundColor White
}

Write-Host ""

