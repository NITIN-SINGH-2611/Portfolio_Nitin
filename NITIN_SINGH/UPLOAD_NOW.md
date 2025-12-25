# 🚀 Upload Your Portfolio to GitHub NOW

## Repository: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin.git

## Quick Method (Choose One)

### Option 1: Run the Script (Easiest)

**PowerShell:**
```powershell
cd NITIN_SINGH
.\push-to-github.ps1
```

**Command Prompt:**
```cmd
cd NITIN_SINGH
push-to-github.bat
```

---

### Option 2: Manual Commands

Open PowerShell or Command Prompt in the `NITIN_SINGH` folder and run:

```bash
# Initialize Git (if not already done)
git init

# Configure Git user
git config user.name "Nitin Singh Samant"
git config user.email "19BCS2408@gmail.com"

# Add remote repository
git remote add origin https://github.com/NITIN-SINGH-2611/Portfolio_Nitin.git

# Add all files
git add .

# Create commit
git commit -m "Initial commit: Portfolio website"

# Set branch to main
git branch -M main

# Push to GitHub
git push -u origin main
```

**When prompted:**
- **Username:** `NITIN-SINGH-2611`
- **Password:** Use a **Personal Access Token** (NOT your GitHub password)

---

## Create Personal Access Token

1. Go to: https://github.com/settings/tokens
2. Click "Generate new token" > "Generate new token (classic)"
3. Name: "Portfolio Upload"
4. Select scope: **repo** (check the box)
5. Click "Generate token"
6. **COPY THE TOKEN** (you won't see it again!)
7. Use this token as your password when pushing

---

## After Uploading - Enable GitHub Pages

1. Go to: https://github.com/NITIN-SINGH-2611/Portfolio_Nitin/settings/pages
2. Under **Source**, select **main** branch
3. Select **/ (root)** folder
4. Click **Save**
5. Wait 1-2 minutes

## Your Live Portfolio Links

After enabling Pages:
- **Main Portfolio:** https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/
- **Simple "Nitin" Link:** https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/nitin.html

---

## Troubleshooting

**"Authentication failed"**
→ Use Personal Access Token, not password

**"Repository not found"**
→ Make sure repository exists: https://github.com/NITIN-SINGH-2611/Portfolio

**"Git not found"**
→ Install Git: https://git-scm.com/download/win

---

**Ready? Run the script or use the manual commands above!**

