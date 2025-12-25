@echo off
echo ========================================
echo   Push Portfolio to GitHub
echo   Repository: Portfolio
echo ========================================
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
    echo Git repository already exists
)

echo.
echo Step 2: Configuring Git user...
git config user.name "Nitin Singh Samant"
git config user.email "19BCS2408@gmail.com"
echo Git user configured

echo.
echo Step 3: Setting up remote repository...
git remote remove origin 2>nul
git remote add origin https://github.com/NITIN-SINGH-2611/Portfolio.git
echo Remote repository configured

echo.
echo Step 4: Adding files...
git add .
echo Files added

echo.
echo Step 5: Creating commit...
git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer"
echo Commit created

echo.
echo Step 6: Setting branch to main...
git branch -M main
echo Branch set to main

echo.
echo ========================================
echo   Pushing to GitHub
echo ========================================
echo.
echo You will be prompted for credentials:
echo   Username: NITIN-SINGH-2611
echo   Password: Use Personal Access Token (NOT password)
echo.
echo Create token: https://github.com/settings/tokens
echo   - Select 'repo' scope
echo.
pause

echo.
echo Pushing files...
git push -u origin main

if %errorlevel% equ 0 (
    echo.
    echo ========================================
    echo   SUCCESS! Portfolio uploaded!
    echo ========================================
    echo.
    echo Repository: https://github.com/NITIN-SINGH-2611/Portfolio
    echo.
    echo ========================================
    echo   NEXT: Enable GitHub Pages
    echo ========================================
    echo.
    echo 1. Go to: https://github.com/NITIN-SINGH-2611/Portfolio/settings/pages
    echo 2. Select 'main' branch
    echo 3. Click 'Save'
    echo 4. Wait 1-2 minutes
    echo.
    echo Your portfolio will be live at:
    echo   https://NITIN-SINGH-2611.github.io/Portfolio/
    echo.
) else (
    echo.
    echo Push failed. Check:
    echo 1. Use Personal Access Token for password
    echo 2. Repository exists and you have access
    echo 3. Internet connection is working
)

echo.
pause

