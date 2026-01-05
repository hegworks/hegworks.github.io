# ⚠️ Ad Blocker Compatibility Issues

Your site currently has some features that don't work well with ad blockers.

## 🚫 What Ad Blockers Block:

1. **Header anchor links** (the # icons when you hover over headers)
2. **Table of Contents** functionality
3. **Mermaid diagrams** (blocked CDN)
4. **MathJax** math rendering (blocked CDN)

## ✅ Current Status:

I've disabled MathJax and Mermaid in `_config.yml` to prevent errors:
```yaml
mathjax: false
mermaid: false
chart: false
```

## 🔧 Solutions:

### Option 1: Tell users to disable ad blocker (Simple)
Add a note in your README or a banner on articles that use these features.

### Option 2: Self-host the libraries (Complex)
Download and host jQuery, anchor.js, etc. locally instead of CDNs. This requires:
- Downloading library files
- Adding them to `/assets/js/`
- Modifying theme includes

### Option 3: Remove features that need external JS (Current)
- ✅ Basic TOC still works (pure CSS)
- ❌ No anchor links on headers
- ❌ No Mermaid diagrams
- ❌ No Math equations

### Option 4: Switch to a simpler theme
Some themes don't rely on external CDNs and work fine with ad blockers.

## 📝 Recommendation:

**For now:** Keep it simple. Your content (code examples, tables, text) all work perfectly. The fancy features (diagrams, math) are nice-to-have but not essential for a programming portfolio.

**If you really need diagrams:** Create them as images (PNG/SVG) and embed them instead of using Mermaid.

**If you really need math:** Use images of equations or just write them in plain text.

---

**The core site works great with ad blockers enabled!** The only missing features are cosmetic enhancements.
