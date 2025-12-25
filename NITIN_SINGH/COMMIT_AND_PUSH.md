# 📤 Commit and Push Changes to GitHub

## Quick Commands

Run these commands in order from your project root or NITIN_SINGH folder:

### Step 1: Check Status (Optional)
```bash
git status
```
This shows what files have been changed.

### Step 2: Add All Changes
```bash
git add .
```
This stages all modified and new files.

### Step 3: Commit Changes
```bash
git commit -m "Update portfolio: Fix mobile overlap and update repository references"
```
Replace the message with a description of your changes.

### Step 4: Push to GitHub
```bash
git push
```
Or if it's the first push:
```bash
git push -u origin main
```

---

## Complete Command Sequence

Copy and paste all at once:

```bash
git add .
git commit -m "Update portfolio: Fix mobile overlap and update repository references"
git push
```

---

## If You Get Errors

### "No changes to commit"
- All changes are already committed
- Just run: `git push`

### "Authentication failed"
- Use Personal Access Token (not password)
- Create token: https://github.com/settings/tokens

### "Repository not found"
- Check remote: `git remote -v`
- Should show: `https://github.com/NITIN-SINGH-2611/Portfolio_Nitin.git`
- If wrong, fix with: `git remote set-url origin https://github.com/NITIN-SINGH-2611/Portfolio_Nitin.git`

---

## Quick One-Liner

```bash
git add . && git commit -m "Update portfolio" && git push
```

---

**After pushing, wait 1-2 minutes for GitHub Pages to update your live site!**

