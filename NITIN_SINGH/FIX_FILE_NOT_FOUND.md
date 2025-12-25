# 🔧 Fix "File Not Found" Error

## The Problem
You're seeing: "File not found - The site configured at this address does not contain the requested file."

This means GitHub Pages can't find your `index.html` file in the root of your repository.

---

## ✅ Step-by-Step Fix

### Step 1: Verify Files Are in Repository Root

1. **Go to your repository:**
   - https://github.com/NITIN-SINGH-2611/Portfolio_Nitin

2. **Check the file structure:**
   - You should see `index.html` directly in the root (not in a subfolder)
   - It should look like this:
     ```
     Portfolio_Nitin/
     ├── index.html          ← Must be here!
     ├── styles.css
     ├── script.js
     ├── profile-picture.jfif
     └── ...
     ```

3. **If files are in a subfolder (like `NITIN_SINGH/`):**
   - This is the problem! Files need to be in the root.

---

### Step 2: Fix File Location

**Option A: If files are in a subfolder, move them to root**

1. **In GitHub:**
   - Go to your repository
   - Click on the subfolder (e.g., `NITIN_SINGH`)
   - For each file, click it → Click "Edit" → Copy the content
   - Go back to root → "Add file" → "Create new file"
   - Paste content and save

2. **Or use Git commands (easier):**
   ```bash
   cd NITIN_SINGH
   git mv index.html ../
   git mv styles.css ../
   git mv script.js ../
   git mv profile-picture.jfif ../
   git mv nitin.html ../
   git mv portfolio-link.html ../
   git commit -m "Move files to root for GitHub Pages"
   git push
   ```

**Option B: If files are already in root, check GitHub Pages settings**

1. Go to: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin/settings/pages
2. Under "Source":
   - Select **"main"** branch
   - Select **"/ (root)"** folder (NOT a subfolder)
3. Click "Save"
4. Wait 2-3 minutes

---

### Step 3: Verify index.html Exists

1. **Check in GitHub:**
   - Go to: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin
   - You should see `index.html` in the file list
   - Click on it to verify it exists

2. **Check file name:**
   - Must be exactly: `index.html` (lowercase, no spaces)
   - NOT: `Index.html`, `INDEX.HTML`, or `index.HTML`

---

### Step 4: Push All Files to GitHub

If you haven't pushed all files yet:

```bash
cd NITIN_SINGH
git add .
git commit -m "Add all portfolio files"
git push
```

Or use the script:
```powershell
.\push-to-github.ps1
```

---

### Step 5: Re-enable GitHub Pages

1. Go to: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin/settings/pages
2. If "Source" shows "None", select:
   - Branch: **"main"**
   - Folder: **"/ (root)"**
3. Click "Save"
4. Wait 2-3 minutes

---

## 🚨 Common Issues & Solutions

### Issue 1: Files in Subfolder
**Problem:** Files are in `NITIN_SINGH/` folder, not root
**Solution:** Move files to root (Step 2 above)

### Issue 2: Wrong Branch Selected
**Problem:** Pages is set to wrong branch
**Solution:** Select "main" branch in Pages settings

### Issue 3: Wrong Folder Selected
**Problem:** Pages is set to subfolder instead of root
**Solution:** Select "/ (root)" in Pages settings

### Issue 4: index.html Not Pushed
**Problem:** File exists locally but not on GitHub
**Solution:** Push files to GitHub (Step 4 above)

### Issue 5: Case Sensitivity
**Problem:** File is `Index.html` instead of `index.html`
**Solution:** Rename to lowercase `index.html`

---

## 📋 Quick Checklist

- [ ] `index.html` exists in repository root (not in subfolder)
- [ ] File name is exactly `index.html` (lowercase)
- [ ] All files are pushed to GitHub
- [ ] GitHub Pages enabled in Settings
- [ ] Branch selected: "main"
- [ ] Folder selected: "/ (root)"
- [ ] Waited 2-3 minutes after enabling

---

## 🔍 Verify Your Setup

1. **Check repository structure:**
   - https://github.com/NITIN-SINGH-2611/Portfolio_Nitin
   - Files should be directly visible (not in a folder)

2. **Check Pages settings:**
   - https://github.com/NITIN-SINGH-2611/Portfolio_Nitin/settings/pages
   - Should show: "Deployed from main / (root)"

3. **Check build status:**
   - Go to "Actions" tab
   - Look for "pages build and deployment"
   - Should have green checkmark

---

## 💡 Quick Fix Script

Run this to check and fix:

```powershell
.\quick-fix-404.ps1
```

---

## ✅ After Fixing

Your portfolio should be accessible at:
- https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/

Wait 2-3 minutes after making changes, then test the link!

---

**Most common issue: Files are in a subfolder instead of root. Make sure `index.html` is in the repository root!**

