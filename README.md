# HegWorks Website

A Jekyll-based personal website for showcasing projects and articles.

## 🚀 Quick Start

### Local Development

1. **Install dependencies:**
   ```bash
   bundle install
   ```

2. **Run the site locally:**
   ```bash
   bundle exec jekyll serve
   ```

3. **View your site:**
   Open your browser and go to `http://localhost:4000`

The site will automatically reload when you make changes to files.

## 📁 Project Structure

```
hegworks/
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
└── README.md            # This file
```

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

## 🎨 Customization

### Changing Site Title and Description

Edit `_config.yml`:
```yaml
title: Your Site Name
description: Your site description
```

### Modifying Colors and Styles

Edit `assets/css/style.css` to change:
- Colors (search for color codes like `#2c3e50`)
- Fonts (modify `font-family` properties)
- Spacing and layout

### Changing the Layout

- **Navigation:** Edit `_layouts/default.html`
- **Home page:** Edit `index.md`
- **Projects page:** Edit `projects.md`
- **Articles page:** Edit `articles.md`

## 🌐 Deploying to GitHub Pages

1. **Create a GitHub repository** named `yourusername.github.io` (or any name)

2. **Initialize Git in your project:**
   ```bash
   cd D:\dev\web\hegworks
   git init
   git add .
   git commit -m "Initial commit"
   ```

3. **Connect to GitHub:**
   ```bash
   git remote add origin https://github.com/yourusername/yourrepo.git
   git branch -M main
   git push -u origin main
   ```

4. **Enable GitHub Pages:**
   - Go to your repository on GitHub
   - Click Settings → Pages
   - Under "Source", select "main" branch
   - Click Save

5. **Update `_config.yml` for GitHub Pages:**
   ```yaml
   url: "https://yourusername.github.io"
   baseurl: "/yourrepo"  # If not using yourusername.github.io
   ```

Your site will be live at `https://yourusername.github.io/yourrepo` in a few minutes!

## 📝 Markdown Tips

- `# Heading 1` → Main heading
- `## Heading 2` → Sub heading
- `**bold**` → **bold text**
- `*italic*` → *italic text*
- `[link text](url)` → clickable link
- `` `code` `` → inline code
- Lists: Start lines with `-` or `1.`

## 🔧 Useful Commands

- `bundle exec jekyll serve` - Run site locally
- `bundle exec jekyll serve --livereload` - Auto-refresh browser on changes
- `bundle exec jekyll build` - Build site for production
- `bundle update` - Update dependencies

## 📚 Learning Resources

- [Jekyll Documentation](https://jekyllrb.com/docs/)
- [Markdown Guide](https://www.markdownguide.org/)
- [GitHub Pages Documentation](https://docs.github.com/en/pages)

## 🆘 Troubleshooting

### Site not updating?
- Make sure you saved your files
- Restart the Jekyll server (Ctrl+C, then `bundle exec jekyll serve`)
- Clear your browser cache

### CSS not loading?
- Check that `assets/css/style.css` exists
- Make sure the link in `_layouts/default.html` is correct
- Try force-refreshing your browser (Ctrl+Shift+R)

### Port already in use?
Use a different port:
```bash
bundle exec jekyll serve --port 4001
```

---

**Need help?** Feel free to explore the files and customize them to your liking!
