# Quick Upload Guide - GitHub Account: NITIN-SINGH-2611

## Method 1: Using the Upload Script (Recommended)

### Step 1: Install Git (if not installed)
- Download from: https://git-scm.com/download/win
- Install with default settings

### Step 2: Run the Upload Script

**Option A: PowerShell (Recommended)**
```powershell
cd NITIN_SINGH
.\upload-to-github.ps1
```

**Option B: Command Prompt**
```cmd
cd NITIN_SINGH
upload-to-github.bat
```

The script will guide you through the process!

---

## Method 2: Manual Upload

### Step 1: Create Repository on GitHub
1. Go to: https://github.com/new
2. Repository name: `portfolio`
3. Description: `Personal Portfolio Website - Java Backend Developer & DevOps Engineer`
4. Choose **Public** or **Private**
5. **DO NOT** check "Initialize with README"
6. Click **"Create repository"**

### Step 2: Open Terminal in NITIN_SINGH Folder

### Step 3: Run These Commands

```bash
# Initialize git (if not already done)
git init

# Add all files
git add .

# Create commit
git commit -m "Initial commit: Portfolio website"

# Add remote repository
git remote add origin https://github.com/NITIN-SINGH-2611/portfolio.git

# Set branch to main
git branch -M main

# Push to GitHub
git push -u origin main
```

### Step 4: Authenticate
- You'll be prompted for username: `NITIN-SINGH-2611`
- For password, use a **Personal Access Token** (not your GitHub password)
  - Create token: https://github.com/settings/tokens
  - Select `repo` scope
  - Copy and use as password

---

## Method 3: Using GitHub Desktop (Easiest)

1. Download GitHub Desktop: https://desktop.github.com/
2. Sign in with your GitHub account (NITIN-SINGH-2611)
3. Click **File** > **Add Local Repository**
4. Select the `NITIN_SINGH` folder
5. Click **"Publish repository"**
6. Repository name: `portfolio`
7. Choose visibility (Public/Private)
8. Click **"Publish repository"**

---

## After Uploading

### Enable GitHub Pages (Host Your Portfolio Online)

1. Go to: https://github.com/NITIN-SINGH-2611/portfolio
2. Click **Settings** tab
3. Scroll to **Pages** section (left sidebar)
4. Under **Source**, select **main** branch
5. Click **Save**
6. Your portfolio will be live at:
   **https://NITIN-SINGH-2611.github.io/portfolio/**

---

## Repository URLs

- **GitHub Repository**: https://github.com/NITIN-SINGH-2611/portfolio
- **Live Portfolio** (after enabling Pages): https://NITIN-SINGH-2611.github.io/portfolio/

---

## Troubleshooting

### "Git is not recognized"
- Install Git from: https://git-scm.com/download/win
- Restart your terminal after installation

### "Authentication failed"
- Use Personal Access Token instead of password
- Create token: https://github.com/settings/tokens

### "Repository not found"
- Make sure you created the repository on GitHub first
- Check the repository name is exactly: `portfolio`

### "Remote origin already exists"
- Remove it first: `git remote remove origin`
- Then add again: `git remote add origin https://github.com/NITIN-SINGH-2611/portfolio.git`

---

**Need Help?** Check the detailed guide in `GITHUB_SETUP.md`

