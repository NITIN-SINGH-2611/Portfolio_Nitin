@echo off
echo === Portfolio GitHub Setup ===
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
echo Initializing Git repository...

if not exist .git (
    git init
    echo Git repository initialized
) else (
    echo Git repository already initialized
)

echo.
echo Adding all files...
git add .
echo Files added

echo.
echo Creating initial commit...
git commit -m "Initial commit: Portfolio website - Java Backend Developer & DevOps Engineer"
echo Initial commit created

echo.
echo === Next Steps ===
echo.
echo 1. Create a new repository on GitHub:
echo    - Go to https://github.com/new
echo    - Repository name: portfolio
echo    - Choose Public or Private
echo    - DO NOT initialize with README
echo    - Click 'Create repository'
echo.
echo 2. Connect your local repository:
echo    git remote add origin https://github.com/YOUR_USERNAME/portfolio.git
echo    (Replace YOUR_USERNAME with your GitHub username)
echo.
echo 3. Push to GitHub:
echo    git branch -M main
echo    git push -u origin main
echo.
echo For detailed instructions, see GITHUB_SETUP.md
echo.
pause

