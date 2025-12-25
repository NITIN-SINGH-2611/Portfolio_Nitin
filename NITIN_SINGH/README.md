# Nitin Singh Samant - Portfolio Website

A modern, responsive portfolio website showcasing my work as a Java Backend Developer and DevOps Engineer.

## Features

- ✨ Modern and beautiful UI design
- 📱 Fully responsive (mobile, tablet, desktop)
- 🎨 Smooth animations and transitions
- 🔗 All links are clickable and functional
- 🎯 Smooth scrolling navigation
- 📧 Contact form with validation
- 🌙 Dark theme with gradient accents

## Sections

1. **Hero Section** - Introduction with call-to-action buttons
2. **About Section** - Personal information and statistics
3. **Skills Section** - Technical skills and technologies
4. **Projects Section** - Featured projects with links
5. **Contact Section** - Contact information and form

## How to Use

1. Open `index.html` in your web browser
2. All navigation links are clickable and will scroll smoothly to their sections
3. Social media links in the hero and contact sections are functional
4. Project links (GitHub and Live Demo) are ready to be updated with your actual URLs
5. Contact form includes validation (update the form action to connect to your backend)

## Customization

### Update Personal Information

1. **Name and Title**: Edit the hero section in `index.html` (lines 37-40)
2. **About Section**: Update the about text in `index.html` (lines 95-110)
3. **Statistics**: Modify the numbers in the about-stats section (lines 111-125)
4. **Skills**: Update skill tags in the skills section (lines 130-160)
5. **Projects**: Replace project information with your actual projects (lines 165-250)
6. **Contact Info**: Update email, phone, and location in the contact section (lines 255-280)

### Update Links

1. **Social Media Links**: 
   - Hero section (lines 46-57)
   - Contact section (lines 290-297)
   - Replace placeholder URLs with your actual profiles

2. **Project Links**:
   - Update GitHub repository URLs
   - Update live demo URLs
   - Located in each project card (lines 180-250)

3. **Email Link**:
   - Update `mailto:` link in hero section (line 53)
   - Update email in contact section (line 265)

### Color Scheme

The color scheme can be customized in `styles.css` by modifying the CSS variables at the top:

```css
:root {
    --primary-color: #6366f1;
    --secondary-color: #8b5cf6;
    --accent-color: #ec4899;
    /* ... */
}
```

## File Structure

```
NITIN_SINGH/
├── index.html      # Main HTML file
├── styles.css      # All styling and responsive design
├── script.js       # JavaScript for interactivity
└── README.md       # This file
```

## Browser Support

- Chrome (latest)
- Firefox (latest)
- Safari (latest)
- Edge (latest)

## Notes

- The contact form currently shows an alert on submission. To make it functional, you'll need to:
  1. Set up a backend API endpoint
  2. Update the form submission handler in `script.js` (lines 80-110)
  3. Uncomment and configure the fetch API call

- All external links open in a new tab for better user experience
- The website uses Font Awesome icons via CDN
- Smooth scrolling is enabled for all anchor links

## License

This portfolio template is free to use and customize for personal or commercial projects.

---

Built with ❤️ by Nitin Singh Samant

## About

I'm a results-driven Java Backend Developer with hands-on DevOps experience, specializing in building scalable Spring Boot microservices, REST APIs, and cloud-native automation workflows. With over 2 years of professional experience, I focus on creating high-performance backend services and improving deployment efficiency through automation.

**Technologies:** Java, Spring Boot, Azure Cloud, GitHub Actions, CI/CD, Neo4j, Microservices, REST APIs

**Contact:** 19BCS2408@gmail.com | [LinkedIn](https://www.linkedin.com/in/nitin-singh-samant-1a4227301)

