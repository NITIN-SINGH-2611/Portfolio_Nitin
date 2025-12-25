# Complete Setup Guide - Upload Portfolio to GitHub

## 🚀 Quick Start (3 Steps)

### Step 1: Run the Auto-Upload Script

**Option A: PowerShell (Recommended)**
```powershell
cd NITIN_SINGH
.\auto-upload-github.ps1
```

**Option B: Command Prompt**
```cmd
cd NITIN_SINGH
upload-to-github.bat
```

The script will guide you through everything!

---

## 📋 Detailed Manual Steps

### Prerequisites

1. **Install Git** (if not installed)
   - Download: https://git-scm.com/download/win
   - Install with default settings
   - Restart your terminal after installation

2. **Create GitHub Personal Access Token**
   - Go to: https://github.com/settings/tokens
   - Click "Generate new token" > "Generate new token (classic)"
   - Name: "Portfolio Upload"
   - Select scope: **repo** (check the box)
   - Click "Generate token"
   - **COPY THE TOKEN** (you won't see it again!)

### Step 1: Open Terminal in NITIN_SINGH Folder

1. Open File Explorer
2. Navigate to: `C:\Users\Nitin1.Samant\Personal_Project\NITIN_SINGH`
3. Right-click in the folder
4. Select "Open in Terminal" or "Open PowerShell window here"

### Step 2: Initialize Git

```bash
git init
```

### Step 3: Configure Git (if first time)

```bash
git config user.name "Nitin Singh Samant"
git config user.email "19BCS2408@gmail.com"
```

### Step 4: Add All Files

```bash
git add .
```

### Step 5: Create Initial Commit

```bash
git commit -m "Initial commit: Portfolio website"
```

### Step 6: Create Repository on GitHub

1. Go to: https://github.com/new
2. **Repository name:** `portfolio` (exactly this, lowercase)
3. **Description:** `Personal Portfolio Website - Java Backend Developer & DevOps Engineer`
4. Choose **Public**
5. **DO NOT** check "Initialize with README"
6. **DO NOT** add .gitignore or license
7. Click **"Create repository"**

### Step 7: Connect and Push

```bash
git remote add origin https://github.com/NITIN-SINGH-2611/portfolio.git
git branch -M main
git push -u origin main
```

**When prompted:**
- **Username:** `NITIN-SINGH-2611`
- **Password:** Paste your Personal Access Token (NOT your GitHub password)

### Step 8: Enable GitHub Pages

1. Go to: https://github.com/NITIN-SINGH-2611/portfolio/settings/pages
2. Under **Source**, select **main** branch
3. Select **/ (root)** folder
4. Click **Save**
5. Wait 1-2 minutes

### Step 9: Access Your Portfolio

Your portfolio will be live at:
- **Main site:** https://NITIN-SINGH-2611.github.io/portfolio/
- **Simple link:** https://NITIN-SINGH-2611.github.io/portfolio/nitin.html

---

## ✅ Verify Everything Works

1. **Check Repository:**
   - Visit: https://github.com/NITIN-SINGH-2611/portfolio
   - You should see all your files

2. **Check GitHub Pages:**
   - Visit: https://NITIN-SINGH-2611.github.io/portfolio/
   - You should see your portfolio website

3. **Test Links:**
   - Click the "Nitin" button in your portfolio
   - Click your name in the navbar
   - Both should work!

---

## 🔧 Troubleshooting

### "Git is not recognized"
- Install Git: https://git-scm.com/download/win
- Restart terminal after installation

### "Authentication failed"
- Use Personal Access Token, not password
- Make sure token has `repo` scope
- Create new token if needed

### "Repository not found"
- Make sure you created the repository on GitHub first
- Check repository name is exactly: `portfolio` (lowercase)
- Verify your GitHub username: `NITIN-SINGH-2611`

### "Links not accessible"
- Enable GitHub Pages (Step 8 above)
- Wait 2-3 minutes after enabling
- Clear browser cache
- Check repository is Public

### "404 Error on GitHub Pages"
- Wait 3-5 minutes (first build takes time)
- Verify Pages is enabled in Settings
- Check that `index.html` is in the root folder
- Make sure branch is set to `main`

---

## 📱 Your Portfolio Links

Once everything is set up:

- **Main Portfolio:** https://NITIN-SINGH-2611.github.io/portfolio/
- **Simple "Nitin" Page:** https://NITIN-SINGH-2611.github.io/portfolio/nitin.html
- **GitHub Repository:** https://github.com/NITIN-SINGH-2611/portfolio

---

## 🔄 Updating Your Portfolio

Whenever you make changes:

```bash
cd NITIN_SINGH
git add .
git commit -m "Update portfolio"
git push
```

Your site will automatically update in 1-2 minutes!

---

## 💡 Pro Tips

1. **Use GitHub Desktop** for easier management:
   - Download: https://desktop.github.com/
   - Sign in and publish repository with one click

2. **Add to Email Signature:**
   ```
   Nitin Singh Samant
   Portfolio: https://NITIN-SINGH-2611.github.io/portfolio/
   ```

3. **Share on LinkedIn:**
   - Add portfolio link to your LinkedIn profile
   - Update your website field

---

**Need Help?** Check the other guides:
- `QUICK_UPLOAD_GUIDE.md` - Quick reference
- `ENABLE_GITHUB_PAGES.md` - Pages setup details
- `PORTFOLIO_LINK_GUIDE.md` - Link sharing guide

