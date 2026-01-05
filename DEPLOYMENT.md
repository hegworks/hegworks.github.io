# 🚀 Deploying to GitHub Pages

Follow these steps to deploy your HegWorks website to GitHub Pages.

## Prerequisites

- A GitHub account
- Git installed on your computer (you already have this ✓)

---

## Step 1: Create a GitHub Repository

1. Go to [GitHub](https://github.com) and sign in
2. Click the **+** icon in the top right → **New repository**
3. Choose a repository name:
   - **Option A**: `yourusername.github.io` (your site will be at `https://yourusername.github.io`)
   - **Option B**: Any name like `hegworks` or `portfolio` (your site will be at `https://yourusername.github.io/reponame`)
4. Keep it **Public**
5. **Do NOT** initialize with README, .gitignore, or license (we already have these)
6. Click **Create repository**

---

## Step 2: Push Your Code to GitHub

Open PowerShell in `D:\dev\web\portfolio` and run these commands:

```bash
# Initialize git (if not already done)
git init

# Add all files to git
git add .

# Create your first commit
git commit -m "Initial commit: Jekyll website setup"

# Rename branch to main
git branch -M main

# Add your GitHub repository as the remote
# Replace 'yourusername' and 'yourrepo' with your actual values
git remote add origin https://github.com/yourusername/yourrepo.git

# Push to GitHub
git push -u origin main
```

**Example:**
```bash
git remote add origin https://github.com/hesam/hegworks.git
git push -u origin main
```

---

## Step 3: Enable GitHub Pages with Actions

1. Go to your repository on GitHub
2. Click **Settings** (top menu)
3. Click **Pages** (left sidebar)
4. Under **"Source"**, select **GitHub Actions**
5. That's it! No need to click "Save" - it's automatic

GitHub will now automatically build and deploy your site using the workflow I created!

---

## Step 4: Configure URLs in `_config.yml`

### If you used `yourusername.github.io` as repo name:

Keep these settings in `_config.yml`:
```yaml
url: "https://yourusername.github.io"
baseurl: ""
```

### If you used a project name (like `hegworks`):

Update `_config.yml` to:
```yaml
url: "https://yourusername.github.io"
baseurl: "/hegworks"  # Your repository name
```

After updating, commit and push:
```bash
git add _config.yml
git commit -m "Update URL configuration"
git push
```

---

## Step 5: View Your Live Site!

- **User site** (`yourusername.github.io` repo): `https://yourusername.github.io`
- **Project site** (any other repo name): `https://yourusername.github.io/reponame`

The first deployment takes 1-2 minutes. You can watch the progress:
1. Go to your repo on GitHub
2. Click **Actions** tab
3. You'll see your workflow running

Once it shows a green checkmark ✓, your site is live!

---

## 🔄 Future Updates

Whenever you make changes to your site:

```bash
git add .
git commit -m "Describe your changes here"
git push
```

GitHub will automatically rebuild and redeploy your site within 1-2 minutes!

---

## 📝 Quick Reference

### Check Git Status
```bash
git status
```

### See Your Commits
```bash
git log --oneline
```

### View Remote URL
```bash
git remote -v
```

### Change Remote URL (if needed)
```bash
git remote set-url origin https://github.com/newusername/newrepo.git
```

---

## 🆘 Troubleshooting

### Site not loading?
- Make sure GitHub Actions is enabled (Settings → Pages → Source: GitHub Actions)
- Check the Actions tab for any build errors
- Verify your `_config.yml` has correct `url` and `baseurl`

### 404 Error?
- If using project site, make sure `baseurl` is set correctly
- Try accessing `https://yourusername.github.io/reponame/` (with trailing slash)

### Build failing?
- Check the Actions tab for error messages
- Make sure all files are committed and pushed
- Verify Gemfile has no syntax errors

---

## ✅ What Happens Automatically

I've set up a GitHub Actions workflow that:
- ✓ Runs automatically when you push to `main` branch
- ✓ Installs Ruby and all dependencies
- ✓ Builds your Jekyll site
- ✓ Deploys to GitHub Pages
- ✓ No manual steps needed!

The workflow file is at `.github/workflows/jekyll.yml` - you can customize it if needed.

---

**Ready to push? Follow Step 2 above and you'll be live in minutes!** 🎉
