# 🚀 Quick Email Setup - Get Your Contact Form Working!

## Why isn't it working?
The contact form needs EmailJS credentials to send emails. Right now it has placeholder values like `YOUR_SERVICE_ID` that need to be replaced with your actual keys.

## ⚡ Super Quick Setup (5 minutes)

### Step 1: Sign Up for EmailJS (FREE)
1. Go to: **https://www.emailjs.com/**
2. Click **"Sign Up"** (it's free - 200 emails/month)
3. Sign up with Google (easiest) or email

### Step 2: Connect Your Gmail
1. In EmailJS dashboard, click **"Email Services"** (left menu)
2. Click **"Add New Service"**
3. Choose **"Gmail"**
4. Click **"Connect Account"** and sign in with: **19BCS2408@gmail.com**
5. Give it a name like "Portfolio Contact"
6. **Copy the Service ID** (looks like: `service_abc123xyz`)

### Step 3: Create Email Template
1. Click **"Email Templates"** (left menu)
2. Click **"Create New Template"**
3. **To Email:** `19BCS2408@gmail.com`
4. **Subject:** `New Contact: {{subject}}`
5. **Content:**
   ```
   From: {{from_name}}
   Email: {{from_email}}
   Subject: {{subject}}
   
   Message:
   {{message}}
   ```
6. Click **"Save"**
7. **Copy the Template ID** (looks like: `template_xyz789abc`)

### Step 4: Get Your Public Key
1. Click **"Account"** → **"General"** (left menu)
2. Find **"Public Key"**
3. **Copy it** (looks like: `abc123xyz456`)

### Step 5: Update Your Code
Open `script.js` and find these lines (around line 97 and 178-180):

**Line ~97:**
```javascript
emailjs.init("YOUR_PUBLIC_KEY");
```
Replace with:
```javascript
emailjs.init("YOUR_ACTUAL_PUBLIC_KEY_HERE");
```

**Lines ~178-180:**
```javascript
const serviceID = 'YOUR_SERVICE_ID';
const templateID = 'YOUR_TEMPLATE_ID';
const publicKey = 'YOUR_PUBLIC_KEY';
```
Replace with:
```javascript
const serviceID = 'service_abc123xyz';      // Your actual Service ID
const templateID = 'template_xyz789abc';   // Your actual Template ID
const publicKey = 'abc123xyz456';           // Your actual Public Key
```

### Step 6: Upload to GitHub
```bash
git add script.js
git commit -m "Configure EmailJS for contact form"
git push
```

### Step 7: Test It!
1. Go to your live portfolio: https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/
2. Fill out the contact form
3. Click "Send Message"
4. Check your email: **19BCS2408@gmail.com** 📧

## ✅ That's it! Your contact form will now send emails directly to your inbox.

---

## 🆘 Need Help?

**Common Issues:**
- **"Email service not configured"** → You haven't updated the credentials in script.js
- **"Failed to send"** → Check that your Service ID, Template ID, and Public Key are correct
- **No email received** → Check spam folder, verify template "To Email" is correct

**Still stuck?** Check the browser console (F12) for error messages.

