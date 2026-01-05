# 🎨 TeXt Theme Setup Complete!

Your portfolio has been successfully migrated to TeXt Theme with all your custom requirements.

## ✅ What's Configured

### Theme Settings
- **Skin:** Dark theme
- **Code Highlighting:** Tomorrow-night
- **Navigation:** Header-based (Home | Projects | Articles)
- **TOC:** Sticky right sidebar with scroll sync

### Home Page
- Landing page with hero section
- Your bio/description
- Two prominent buttons: Projects & Articles
- Dark background with custom styling

### Projects Page
- Grid/card layout (responsive)
- Project metadata fields:
  - Client
  - Team
  - Technologies (as tags)
  - Thumbnail image
  - Excerpt
- Hover effects and smooth animations

### Articles Page
- List layout with cover images
- Article info: date and tags
- Excerpt preview
- "Read More" link
- Cover images (optional)

### Sample Content
- **Sample Project:** Custom Game Engine with rich content showcasing:
  - Code highlighting
  - Tables
  - Headers (which will appear in TOC)
  - Multiple sections
  - Metadata examples
  
- **Sample Article:** ECS Architecture deep-dive showcasing:
  - Cover image support
  - Tags
  - Long-form content with multiple headers
  - Code snippets
  - Tables and lists

## 🚀 Next Steps

### 1. Install Dependencies

```bash
bundle install
```

### 2. Run Locally

```bash
bundle exec jekyll serve
```

Then visit: `http://localhost:4000`

### 3. Customize Your Info

Edit `_config.yml`:
```yaml
title: HegWorks  # Your site name
author:
  name: Hesam  # Your name
  bio: Game Engine Programming student at BUas. I build tools and engines from scratch.
  avatar: /assets/images/avatar.jpg  # Add your photo
  email: your.email@example.com  # Your email
  github: yourusername  # Your GitHub username
```

### 4. Add Images (Optional)

Images are currently referenced but not present. You can:

**Option A:** Add your own images
- Project images: `assets/images/projects/`
- Article covers: `assets/images/articles/`
- Avatar: `assets/images/avatar.jpg`

**Option B:** Remove image references
- In project files, remove the `image:` line
- In article files, remove the `cover:` line

See `assets/images/README.md` for image guidelines.

### 5. Create New Content

**New Project:**
```bash
# Create file: _projects/my-project.md
---
title: My Project Title
date: 2025-01-05
client: Client Name (optional)
team: Solo / Team Size (optional)
technologies:
  - C++
  - OpenGL
  - ImGui
image: /assets/images/projects/my-project.jpg (optional)
excerpt: Short description for the card
---

Your project content here...
```

**New Article:**
```bash
# Create file: _articles/my-article.md
---
title: My Article Title
date: 2025-01-05
tags:
  - Game Development
  - C++
cover: /assets/images/articles/cover.jpg (optional)
excerpt: Article preview text
---

Your article content here...
```

## 🎨 Customization

### Change Colors

TeXt theme uses CSS variables. Create `assets/css/custom.scss`:

```scss
---
---

@import "{{ site.theme }}";

:root {
  --main-color-1: #your-brand-color;
  --text-color-d: #your-text-color;
}
```

Then add to `_config.yml`:
```yaml
paths:
  base: /
  home: /
custom_css: /assets/css/custom.scss
```

### Change Code Theme

Edit `_config.yml`:
```yaml
highlight_theme: tomorrow-night  # or: default, tomorrow, tomorrow-night-eighties, etc.
```

### Modify Layouts

To customize a layout:
1. Find the original in TeXt theme GitHub
2. Copy to your `_layouts/` folder
3. Modify as needed

## 📚 TeXt Theme Features

Your site now has access to:

- ✅ Sticky TOC with scroll sync
- ✅ Code syntax highlighting
- ✅ Responsive design
- ✅ Dark theme
- ✅ Header anchors (clickable #)
- ✅ Article tags
- ✅ SEO optimization
- ✅ RSS feed
- ✅ Social sharing (can enable)
- ✅ Comments (can enable - Disqus, Gitalk, etc.)
- ✅ Analytics (can enable - Google Analytics, etc.)
- ✅ Search (can enable)

See [TeXt Theme Docs](https://tianqi.name/jekyll-TeXt-theme/docs/en/quick-start) for more features.

## 🔧 Additional Features (Optional)

### Enable Search

Add to `_config.yml`:
```yaml
search:
  provider: default
```

### Enable Comments

Add to `_config.yml`:
```yaml
comments:
  provider: disqus
  disqus:
    shortname: your-disqus-shortname
```

### Enable Analytics

Add to `_config.yml`:
```yaml
analytics:
  provider: google
  google:
    tracking_id: UA-XXXXXXXXX-X
```

## 📖 Documentation

- **TeXt Theme:** [Official Docs](https://tianqi.name/jekyll-TeXt-theme/)
- **Your Developer Guide:** See `DEVELOPER.md`
- **Deployment:** See `DEPLOYMENT.md`
- **Git Workflow:** See `WORKFLOW.md`

## 🆘 Troubleshooting

### CSS Not Loading?
- Make sure you ran `bundle install`
- Clear browser cache (Ctrl+Shift+R)
- Check console for errors

### Images Not Showing?
- Check file paths (should start with `/assets/images/`)
- Verify images exist in the `assets/images/` directory
- Or remove the `image:`/`cover:` fields if you don't have images yet

### TOC Not Appearing?
- Make sure your content has headers (`##`, `###`)
- Headers must be H2 or H3 (not H1)
- Check that article layout is set to `article`

### Theme Not Loading?
- Run `bundle update` 
- Make sure `remote_theme: kitian616/jekyll-TeXt-theme` is in `_config.yml`
- Restart Jekyll server

---

**🎉 Your portfolio is ready! Start by running `bundle install` then `bundle exec jekyll serve`**

For questions about your workflow, see `DEVELOPER.md` and `WORKFLOW.md`.
