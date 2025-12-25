# 📧 EmailJS Setup Guide - Contact Form Email Integration

## Overview

Your contact form is now integrated with EmailJS to send emails directly to **19BCS2408@gmail.com** when someone submits the form.

## 🚀 Quick Setup (5 Minutes)

### Step 1: Create EmailJS Account

1. Go to: https://www.emailjs.com/
2. Click **"Sign Up"** (free account)
3. Sign up with your email or Google account
4. Verify your email address

### Step 2: Create Email Service

1. After logging in, go to **"Email Services"**
2. Click **"Add New Service"**
3. Choose **"Gmail"** (or your email provider)
4. Click **"Connect Account"**
5. Follow the prompts to connect your Gmail account (19BCS2408@gmail.com)
6. Click **"Create Service"**
7. **Copy the Service ID** (you'll need this)

### Step 3: Create Email Template

1. Go to **"Email Templates"**
2. Click **"Create New Template"**
3. Use this template:

**Template Name:** Portfolio Contact Form

**Subject:** New Contact Form Message: {{subject}}

**Content:**
```
You have received a new message from your portfolio contact form.

From: {{from_name}}
Email: {{from_email}}
Subject: {{subject}}

Message:
{{message}}

---
This message was sent from your portfolio website.
```

4. Click **"Save"**
5. **Copy the Template ID** (you'll need this)

### Step 4: Get Your Public Key

1. Go to **"Account"** → **"General"**
2. Find **"Public Key"**
3. **Copy the Public Key** (you'll need this)

### Step 5: Update Your Code

Open `script.js` and replace these three values:

```javascript
const serviceID = 'YOUR_SERVICE_ID';      // Replace with your Service ID
const templateID = 'YOUR_TEMPLATE_ID';    // Replace with your Template ID
const publicKey = 'YOUR_PUBLIC_KEY';       // Replace with your Public Key
```

Also update the initialization at the top:

```javascript
emailjs.init("YOUR_PUBLIC_KEY"); // Replace with your Public Key
```

### Step 6: Test Your Form

1. Save the changes
2. Push to GitHub
3. Test the contact form on your live site
4. Check your email (19BCS2408@gmail.com) for the test message

---

## 📝 Example Configuration

After setup, your `script.js` should look like this:

```javascript
// Initialize EmailJS
(function() {
    emailjs.init("abc123xyz456"); // Your Public Key
})();

// ... rest of code ...

const serviceID = 'service_abc123';      // Your Service ID
const templateID = 'template_xyz789';    // Your Template ID
const publicKey = 'abc123xyz456';         // Your Public Key
```

---

## ✅ Verification Checklist

- [ ] EmailJS account created
- [ ] Email service connected (Gmail)
- [ ] Service ID copied
- [ ] Email template created
- [ ] Template ID copied
- [ ] Public Key copied
- [ ] Code updated in script.js
- [ ] Form tested and working
- [ ] Emails received in inbox

---

## 🎯 What Happens When Someone Submits

1. User fills out the contact form
2. Clicks "Send Message"
3. Form validates the input
4. EmailJS sends email to: **19BCS2408@gmail.com**
5. You receive email with:
   - Sender's name
   - Sender's email
   - Subject
   - Message content
6. User sees success message
7. Form resets automatically

---

## 🔧 Troubleshooting

### "Email not sending"
- Check that all three IDs are correct in script.js
- Verify EmailJS service is connected
- Check browser console for errors
- Make sure Public Key is correct

### "Service ID not found"
- Verify Service ID in EmailJS dashboard
- Check for typos in script.js

### "Template not found"
- Verify Template ID in EmailJS dashboard
- Check template variables match: {{from_name}}, {{from_email}}, {{subject}}, {{message}}

### "Public Key error"
- Verify Public Key in Account settings
- Make sure it's the Public Key, not Private Key

---

## 💡 Free Tier Limits

EmailJS free tier includes:
- **200 emails per month**
- Perfect for personal portfolios
- Upgrade if you need more

---

## 🔒 Security Note

The Public Key is safe to use in client-side code. It's designed to be public. Your Private Key should NEVER be exposed.

---

## 📧 Alternative: Direct Email Link

If you prefer not to use EmailJS, you can also use a simple mailto link:

```html
<a href="mailto:19BCS2408@gmail.com?subject=Portfolio Contact&body=Name: [name]%0AEmail: [email]%0AMessage: [message]">
    Send Email
</a>
```

But EmailJS provides a better user experience with form submission.

---

**After setup, your contact form will send emails directly to your inbox! 📬**

