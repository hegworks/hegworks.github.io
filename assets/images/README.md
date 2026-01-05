# Image Assets

This directory contains images used throughout the site.

## Structure

- `projects/` - Project card images and screenshots
- `articles/` - Article cover images
- `avatar.jpg` - Your profile picture (optional)
- `hero-bg.jpg` - Homepage hero background (optional)

## Image Guidelines

### Project Images
- **Recommended size:** 800x600px or 1200x900px
- **Aspect ratio:** 4:3 or 16:9
- **Format:** JPG or PNG
- **File size:** Keep under 500KB for web performance

### Article Covers
- **Recommended size:** 1200x630px (social media optimal)
- **Aspect ratio:** 1.91:1
- **Format:** JPG or PNG
- **File size:** Keep under 300KB

### Avatar
- **Recommended size:** 200x200px
- **Format:** JPG or PNG
- **Style:** Professional headshot or logo

### Hero Background
- **Recommended size:** 1920x1080px
- **Format:** JPG
- **Style:** Dark or subtle to not distract from text
- **File size:** Keep under 500KB

## Adding Images

### For Projects
Add to your project front matter:
```yaml
---
title: My Project
image: /assets/images/projects/my-project.jpg
---
```

### For Articles
Add to your article front matter:
```yaml
---
title: My Article
cover: /assets/images/articles/my-article-cover.jpg
---
```

### For Avatar
Update `_config.yml`:
```yaml
author:
  avatar: /assets/images/avatar.jpg
```

## Placeholder Images

If you don't have images yet, you can:
1. Leave the `image` or `cover` field empty (they're optional)
2. Use placeholder services like:
   - https://placeholder.com/
   - https://unsplash.com/ (free stock photos)
   - https://via.placeholder.com/

## Optimization Tips

Before adding images:
1. **Resize** to recommended dimensions
2. **Compress** using tools like:
   - [TinyPNG](https://tinypng.com/)
   - [Squoosh](https://squoosh.app/)
   - ImageOptim (Mac)
3. **Use WebP** format for better compression (with JPG fallback)

---

*Images are currently empty. Add your own images following the guidelines above.*
