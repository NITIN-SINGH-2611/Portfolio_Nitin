# GitHub Setup Instructions

Follow these steps to upload your portfolio to GitHub:

## Prerequisites
1. Make sure Git is installed on your system
   - Download from: https://git-scm.com/download/win
   - Or check if installed: `git --version`

2. Create a GitHub account (if you don't have one)
   - Sign up at: https://github.com

## Step 1: Initialize Git Repository

Open terminal/command prompt in the `NITIN_SINGH` folder and run:

```bash
cd NITIN_SINGH
git init
```

## Step 2: Add All Files

```bash
git add .
```

## Step 3: Create Initial Commit

```bash
git commit -m "Initial commit: Portfolio website"
```

## Step 4: Create GitHub Repository

1. Go to https://github.com and sign in
2. Click the "+" icon in the top right corner
3. Select "New repository"
4. Repository name: `portfolio` (or any name you prefer)
5. Description: "Personal Portfolio Website - Java Backend Developer & DevOps Engineer"
6. Choose Public or Private
7. **DO NOT** initialize with README, .gitignore, or license (we already have these)
8. Click "Create repository"

## Step 5: Connect Local Repository to GitHub

After creating the repository, GitHub will show you commands. Use these:

```bash
git remote add origin https://github.com/YOUR_USERNAME/portfolio.git
```

Replace `YOUR_USERNAME` with your actual GitHub username.

## Step 6: Push to GitHub

```bash
git branch -M main
git push -u origin main
```

You'll be prompted for your GitHub username and password (or personal access token).

## Alternative: Using GitHub Desktop

If you prefer a GUI:
1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your GitHub account
3. Click "File" > "Add Local Repository"
4. Select the `NITIN_SINGH` folder
5. Click "Publish repository" button
6. Choose repository name and visibility
7. Click "Publish repository"

## Enable GitHub Pages (Optional - to host your portfolio)

1. Go to your repository on GitHub
2. Click "Settings" tab
3. Scroll down to "Pages" section
4. Under "Source", select "main" branch
5. Click "Save"
6. Your portfolio will be live at: `https://YOUR_USERNAME.github.io/portfolio/`

## Update Your Portfolio

Whenever you make changes:

```bash
git add .
git commit -m "Description of changes"
git push
```

---

**Note:** If you encounter authentication issues, you may need to use a Personal Access Token instead of password:
1. Go to GitHub Settings > Developer settings > Personal access tokens
2. Generate a new token with `repo` permissions
3. Use this token as your password when pushing

