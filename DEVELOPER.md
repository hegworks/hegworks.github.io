# 👨‍💻 Developer Guide

Complete guide for developing and maintaining this Jekyll portfolio website.

## 🚀 Quick Start

### Prerequisites

- Ruby (version 2.5.0 or higher)
- RubyGems
- Jekyll and Bundler gems
- Git

### Initial Setup

1. **Clone the repository:**
   ```bash
   git clone https://github.com/yourusername/portfolio.git
   cd portfolio
   ```

2. **Install dependencies:**
   ```bash
   bundle install
   ```

3. **Run locally:**
   ```bash
   bundle exec jekyll serve
   ```

4. **View site:**
   Open `http://localhost:4000`

---

## 📁 Project Structure

```
portfolio/
├── _config.yml          # Site configuration
├── _layouts/            # HTML templates
│   ├── default.html     # Main layout with nav and footer
│   ├── project.html     # Template for individual projects
│   └── article.html     # Template for individual articles
├── _projects/           # Your project files (add .md files here)
│   └── sample-project.md
├── _articles/           # Your article files (add .md files here)
│   └── sample-article.md
├── assets/
│   └── css/
│       └── style.css    # Main stylesheet
├── index.md             # Home page
├── projects.md          # Projects listing page
├── articles.md          # Articles listing page
├── Gemfile              # Ruby dependencies
├── .github/
│   └── workflows/
│       └── jekyll.yml   # GitHub Actions deployment
├── README.md            # Public readme
├── DEVELOPER.md         # This file
├── DEPLOYMENT.md        # Deployment instructions
└── WORKFLOW.md          # Git workflow guide
```

---

## ✍️ Adding Content

### Adding a New Project

1. Create a new file in `_projects/` folder (e.g., `my-awesome-project.md`)
2. Add front matter and content:

```markdown
---
title: My Awesome Project
date: 2025-01-05
---

Write about your project here using Markdown!

## Features
- Feature 1
- Feature 2

## Technologies
- Tech A
- Tech B
```

The project will automatically appear on the Projects page.

### Adding a New Article

1. Create a new file in `_articles/` folder (e.g., `my-first-article.md`)
2. Add front matter and content:

```markdown
---
title: My First Article
date: 2025-01-05
---

Write your article content here using Markdown!
```

The article will automatically appear on the Articles page.

### Markdown Tips

- `# Heading 1` → Main heading
- `## Heading 2` → Sub heading
- `**bold**` → **bold text**
- `*italic*` → *italic text*
- `[link text](url)` → clickable link
- `` `code` `` → inline code
- Lists: Start lines with `-` or `1.`
- Code blocks: Use triple backticks with language

---

## 🎨 Customization

### Site Configuration

Edit `_config.yml` to change:
```yaml
title: Your Site Name
description: Your site description
url: "https://yourusername.github.io"
baseurl: "/portfolio"  # If using project site
```

**Important:** Restart Jekyll server after changing `_config.yml`

### Styling

**Main stylesheet:** `assets/css/style.css`

Common customizations:
- **Colors:** Search for hex codes like `#2c3e50` and replace
- **Fonts:** Modify `font-family` properties
- **Spacing:** Adjust padding and margin values
- **Layout:** Modify grid and flexbox properties

### Layout Templates

- **Navigation:** `_layouts/default.html`
- **Home page:** `index.md`
- **Projects listing:** `projects.md`
- **Articles listing:** `articles.md`
- **Individual project:** `_layouts/project.html`
- **Individual article:** `_layouts/article.html`

### Collections

The site uses Jekyll collections for projects and articles. Configuration in `_config.yml`:

```yaml
collections:
  projects:
    output: true
    permalink: /projects/:name/
  articles:
    output: true
    permalink: /articles/:name/
```

---

## 🔧 Development Commands

### Run Site Locally
```bash
bundle exec jekyll serve
```

### Run with Live Reload
```bash
bundle exec jekyll serve --livereload
```

### Build for Production
```bash
bundle exec jekyll build
```

### Run on Different Port
```bash
bundle exec jekyll serve --port 4001
```

### Update Dependencies
```bash
bundle update
```

### Clean Build Files
```bash
bundle exec jekyll clean
```

---

## 🧪 Testing

### Preview Drafts

Create a `_drafts` folder and add draft posts there. Run with:
```bash
bundle exec jekyll serve --drafts
```

### Check for Broken Links

Install html-proofer:
```bash
gem install html-proofer
```

Test the site:
```bash
bundle exec jekyll build
htmlproofer ./_site
```

---

## 🌐 Deployment

See **[DEPLOYMENT.md](DEPLOYMENT.md)** for complete deployment instructions.

**Quick summary:**
- Push to `main` branch
- GitHub Actions automatically builds and deploys
- Site updates in 1-2 minutes

---

## 🔀 Git Workflow

See **[WORKFLOW.md](WORKFLOW.md)** for complete git workflow guide.

**Quick summary:**
- Work on `dev` branch for drafts
- Merge to `main` to publish
- Only `main` triggers deployment

---

## 🆘 Troubleshooting

### Site Not Updating?
- Save your files
- Restart Jekyll server (Ctrl+C, then restart)
- Clear browser cache (Ctrl+Shift+R)

### CSS Not Loading?
- Check file path in `_layouts/default.html`
- Verify `assets/css/style.css` exists
- Force refresh browser

### Build Errors?
- Check YAML front matter syntax
- Ensure all files have proper encoding (UTF-8)
- Look for Liquid template errors in console

### Port Already in Use?
```bash
bundle exec jekyll serve --port 4001
```

### Dependency Issues?
```bash
bundle clean --force
bundle install
```

---

## 📚 Learning Resources

### Jekyll
- [Official Jekyll Docs](https://jekyllrb.com/docs/)
- [Jekyll Collections](https://jekyllrb.com/docs/collections/)
- [Liquid Template Language](https://shopify.github.io/liquid/)

### Markdown
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Flavored Markdown](https://github.github.com/gfm/)

### GitHub Pages
- [GitHub Pages Docs](https://docs.github.com/en/pages)
- [GitHub Actions](https://docs.github.com/en/actions)

### Design
- [CSS Tricks](https://css-tricks.com/)
- [MDN Web Docs](https://developer.mozilla.org/)

---

## 🔐 Environment Variables

No environment variables are needed for local development.

For production, GitHub Actions handles everything automatically.

---

## 📦 Dependencies

Main dependencies (see `Gemfile`):
- `jekyll` (~> 4.4) - Static site generator
- `jekyll-feed` - RSS feed generation
- `jekyll-seo-tag` - SEO optimization
- `tzinfo-data` - Timezone support (Windows)
- `wdm` - Directory monitoring (Windows)

---

## 🏗️ Build Process

1. Jekyll reads `_config.yml` for configuration
2. Processes Markdown files through layouts
3. Compiles collections (`_projects`, `_articles`)
4. Copies static assets to `_site/`
5. Generates final HTML files in `_site/`

---

## 📝 Best Practices

1. **Always work on dev branch** for drafts
2. **Preview locally** before pushing
3. **Write descriptive commit messages**
4. **Keep content and code separate**
5. **Test on multiple browsers**
6. **Optimize images** before adding
7. **Use semantic HTML** in layouts
8. **Keep CSS organized** with comments

---

## 🤝 Contributing

If others want to contribute:
1. Fork the repository
2. Create a feature branch
3. Make changes
4. Submit a pull request

---

## 📄 License

[Add license information here]

---

**Need more help?** Check the other documentation files:
- [DEPLOYMENT.md](DEPLOYMENT.md) - Deployment guide
- [WORKFLOW.md](WORKFLOW.md) - Git workflow
- [README.md](README.md) - Public readme
