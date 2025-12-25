// ============================================
// EMAIL CONFIGURATION HELPER
// ============================================
// 
// STEP 1: Get your EmailJS credentials:
//   1. Go to: https://www.emailjs.com/
//   2. Sign up (free)
//   3. Connect Gmail service → Copy Service ID
//   4. Create email template → Copy Template ID
//   5. Account → General → Copy Public Key
//
// STEP 2: Fill in your credentials below:
// ============================================

const EMAIL_CONFIG = {
    SERVICE_ID: 'YOUR_SERVICE_ID_HERE',      // Example: 'service_abc123xyz'
    TEMPLATE_ID: 'YOUR_TEMPLATE_ID_HERE',    // Example: 'template_xyz789abc'
    PUBLIC_KEY: 'YOUR_PUBLIC_KEY_HERE'       // Example: 'abc123xyz456'
};

// ============================================
// STEP 3: After filling above, copy these 3 values to script.js:
// ============================================
//
// In script.js, line ~97:
//   emailjs.init("PASTE_PUBLIC_KEY_HERE");
//
// In script.js, lines ~178-180:
//   const serviceID = 'PASTE_SERVICE_ID_HERE';
//   const templateID = 'PASTE_TEMPLATE_ID_HERE';
//   const publicKey = 'PASTE_PUBLIC_KEY_HERE';
//
// ============================================

