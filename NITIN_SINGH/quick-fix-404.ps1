# Quick Fix for 404 Error - GitHub Pages
# This script helps you diagnose and fix the 404 error

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "  Fix 404 Error - GitHub Pages" -ForegroundColor Cyan
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

$repoUrl = "https://github.com/NITIN-SINGH-2611/Portfolio_Nitin"
$pagesUrl = "https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/"

Write-Host "Step 1: Checking if files are uploaded..." -ForegroundColor Yellow
Write-Host ""
Write-Host "Open this URL in your browser:" -ForegroundColor White
Write-Host "  $repoUrl" -ForegroundColor Cyan
Write-Host ""
Write-Host "Do you see your files (index.html, styles.css, etc.)?" -ForegroundColor Yellow
$hasFiles = Read-Host "Type 'yes' if files are there, 'no' if repository is empty"

if ($hasFiles -eq 'no' -or $hasFiles -eq 'n') {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Yellow
    Write-Host "  UPLOAD FILES FIRST" -ForegroundColor Yellow
    Write-Host "========================================" -ForegroundColor Yellow
    Write-Host ""
    Write-Host "Run these commands:" -ForegroundColor White
    Write-Host ""
    Write-Host "  git init" -ForegroundColor Gray
    Write-Host "  git remote add origin $repoUrl.git" -ForegroundColor Gray
    Write-Host "  git add ." -ForegroundColor Gray
    Write-Host "  git commit -m 'Initial commit'" -ForegroundColor Gray
    Write-Host "  git branch -M main" -ForegroundColor Gray
    Write-Host "  git push -u origin main" -ForegroundColor Gray
    Write-Host ""
    Write-Host "Or run: .\push-to-github.ps1" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "After uploading, run this script again." -ForegroundColor Yellow
    exit
}

Write-Host ""
Write-Host "Step 2: Enable GitHub Pages" -ForegroundColor Yellow
Write-Host ""
Write-Host "1. Go to: $repoUrl/settings/pages" -ForegroundColor White
Write-Host "2. Under 'Source', select 'main' branch" -ForegroundColor White
Write-Host "3. Select '/ (root)' folder" -ForegroundColor White
Write-Host "4. Click 'Save'" -ForegroundColor White
Write-Host ""
Write-Host "Have you enabled GitHub Pages?" -ForegroundColor Yellow
$pagesEnabled = Read-Host "Type 'yes' if enabled, 'no' if not"

if ($pagesEnabled -eq 'no' -or $pagesEnabled -eq 'n') {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Red
    Write-Host "  ENABLE GITHUB PAGES FIRST!" -ForegroundColor Red
    Write-Host "========================================" -ForegroundColor Red
    Write-Host ""
    Write-Host "Go to: $repoUrl/settings/pages" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Then:" -ForegroundColor Yellow
    Write-Host "  1. Select 'main' branch" -ForegroundColor White
    Write-Host "  2. Select '/ (root)' folder" -ForegroundColor White
    Write-Host "  3. Click 'Save'" -ForegroundColor White
    Write-Host "  4. Wait 2-3 minutes" -ForegroundColor White
    Write-Host ""
    Write-Host "After enabling, your site will be at:" -ForegroundColor Green
    Write-Host "  $pagesUrl" -ForegroundColor Cyan
    exit
}

Write-Host ""
Write-Host "Step 3: Wait for Build" -ForegroundColor Yellow
Write-Host ""
Write-Host "GitHub needs 1-3 minutes to build your site." -ForegroundColor White
Write-Host ""
Write-Host "Check build status:" -ForegroundColor Yellow
Write-Host "  $repoUrl/actions" -ForegroundColor Cyan
Write-Host ""
Write-Host "Look for 'pages build and deployment' with green checkmark" -ForegroundColor White
Write-Host ""

$wait = Read-Host "Have you waited 2-3 minutes? (yes/no)"
if ($wait -eq 'no' -or $wait -eq 'n') {
    Write-Host ""
    Write-Host "Please wait 2-3 minutes, then try:" -ForegroundColor Yellow
    Write-Host "  $pagesUrl" -ForegroundColor Cyan
    exit
}

Write-Host ""
Write-Host "========================================" -ForegroundColor Green
Write-Host "  YOUR PORTFOLIO SHOULD BE LIVE!" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Green
Write-Host ""
Write-Host "Visit: $pagesUrl" -ForegroundColor Cyan
Write-Host ""
Write-Host "If still getting 404:" -ForegroundColor Yellow
Write-Host "  1. Clear browser cache" -ForegroundColor White
Write-Host "  2. Try incognito/private mode" -ForegroundColor White
Write-Host "  3. Wait another minute" -ForegroundColor White
Write-Host "  4. Check Pages settings again" -ForegroundColor White
Write-Host ""

