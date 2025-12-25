# 🚀 START HERE - Email Setup (5 Minutes)

## ⚠️ You're seeing the error because EmailJS needs your credentials!

I can't configure it automatically - you need to get 3 values from EmailJS and paste them into `script.js`.

---

## 📋 Quick Setup (Follow These Steps)

### **Step 1: Create EmailJS Account** (1 min)
1. Go to: **https://www.emailjs.com/**
2. Click **"Sign Up"** (FREE - 200 emails/month)
3. Sign up with **Google** (easiest) or email

### **Step 2: Connect Gmail** (2 min)
1. After login, click **"Email Services"** (left menu)
2. Click **"Add New Service"**
3. Choose **"Gmail"**
4. Click **"Connect Account"**
5. Sign in with: **19BCS2408@gmail.com**
6. Allow permissions
7. Click **"Create Service"**
8. **📋 COPY the Service ID** (looks like: `service_abc123xyz`)

### **Step 3: Create Email Template** (2 min)
1. Click **"Email Templates"** (left menu)
2. Click **"Create New Template"**
3. Fill in:
   - **To Email:** `19BCS2408@gmail.com`
   - **Subject:** `New Contact: {{subject}}`
   - **Content:**
     ```
     From: {{from_name}}
     Email: {{from_email}}
     Subject: {{subject}}
     
     Message:
     {{message}}
     ```
4. Click **"Save"**
5. **📋 COPY the Template ID** (looks like: `template_xyz789abc`)

### **Step 4: Get Public Key** (1 min)
1. Click **"Account"** → **"General"** (left menu)
2. Scroll to **"Public Key"**
3. **📋 COPY the Public Key** (looks like: `abc123xyz456`)

### **Step 5: Update script.js** ⭐ **THIS IS THE IMPORTANT PART**

Open `script.js` and find these lines:

**Line 97:**
```javascript
emailjs.init("YOUR_PUBLIC_KEY");
```
**Replace with:**
```javascript
emailjs.init("PASTE_YOUR_PUBLIC_KEY_HERE");
```

**Lines 178-180:**
```javascript
const serviceID = 'YOUR_SERVICE_ID';
const templateID = 'YOUR_TEMPLATE_ID';
const publicKey = 'YOUR_PUBLIC_KEY';
```
**Replace with:**
```javascript
const serviceID = 'PASTE_YOUR_SERVICE_ID_HERE';
const templateID = 'PASTE_YOUR_TEMPLATE_ID_HERE';
const publicKey = 'PASTE_YOUR_PUBLIC_KEY_HERE';
```

### **Step 6: Upload to GitHub**
```bash
git add script.js
git commit -m "Configure EmailJS"
git push
```

### **Step 7: Test It!**
1. Go to: https://NITIN-SINGH-2611.github.io/Portfolio_Nitin/
2. Fill the contact form
3. Click "Send Message"
4. Check your email! 📧

---

## ✅ What You Need (3 Values):

1. **Service ID** → From Email Services page
2. **Template ID** → From Email Templates page
3. **Public Key** → From Account → General page

---

## 🆘 Still Need Help?

- See `EMAIL_SETUP_STEPS.txt` for detailed instructions
- Check browser console (F12) for errors
- Make sure all 3 values are pasted correctly (no extra spaces)

**Once you paste the 3 values into script.js and push, your contact form will work!** 🎉

