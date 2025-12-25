@echo off
echo === Uploading Portfolio to GitHub ===
echo GitHub Username: NITIN-SINGH-2611
echo.

REM Check if git is installed
git --version >nul 2>&1
if %errorlevel% neq 0 (
    echo Git is not installed or not in PATH
    echo Please install Git from: https://git-scm.com/download/win
    pause
    exit /b 1
)

echo Git is installed
echo.
echo Step 1: Initializing Git repository...

if not exist .git (
    git init
    echo Git repository initialized
) else (
    echo Git repository already initialized
)

echo.
echo Step 2: Adding all files...
git add .
echo Files added

echo.
echo Step 3: Creating initial commit...
git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer"
echo Initial commit created

echo.
echo Step 4: Setting up remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/NITIN-SINGH-2611/portfolio.git
echo Remote repository added

echo.
echo Step 5: Setting branch to main...
git branch -M main
echo Branch set to main

echo.
echo === IMPORTANT: Create Repository on GitHub First ===
echo.
echo Before pushing, create the repository on GitHub:
echo 1. Go to: https://github.com/new
echo 2. Repository name: portfolio
echo 3. Choose Public or Private
echo 4. DO NOT initialize with README
echo 5. Click 'Create repository'
echo.
pause

echo.
echo Step 6: Pushing to GitHub...
echo You will be prompted for your GitHub credentials.
echo.
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Repository uploaded!
    echo ========================================
    echo.
    echo Repository URL: https://github.com/NITIN-SINGH-2611/portfolio
    echo.
    echo ========================================
    echo   NEXT: Enable GitHub Pages
    echo ========================================
    echo.
    echo To make your portfolio accessible online:
    echo.
    echo 1. Go to: https://github.com/NITIN-SINGH-2611/portfolio/settings/pages
    echo 2. Under 'Source', select 'main' branch
    echo 3. Click 'Save'
    echo 4. Wait 1-2 minutes
    echo.
    echo Your portfolio will be live at:
    echo   https://NITIN-SINGH-2611.github.io/portfolio/
    echo.
    echo Simple link page:
    echo   https://NITIN-SINGH-2611.github.io/portfolio/nitin.html
    echo.
) else (
    echo.
    echo Error pushing to GitHub
    echo.
    echo Common issues:
    echo 1. Repository doesn't exist - create it first on GitHub
    echo 2. Authentication failed - use Personal Access Token
    echo 3. Check your internet connection
    echo.
    echo For help, see: COMPLETE_SETUP.md
)

echo.
pause

