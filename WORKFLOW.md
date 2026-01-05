# 🔀 Git Workflow Guide

This guide explains how to work with `dev` and `main` branches for your portfolio.

## Branch Strategy

- **`dev` branch**: Your development/draft branch - push changes here freely
- **`main` branch**: Production branch - only merge here when ready to publish
- GitHub Actions only deploys from `main` branch

---

## Initial Setup (One-Time)

After your first push to `main`, create and switch to a `dev` branch:

```bash
# Create and switch to dev branch
git checkout -b dev

# Push dev branch to GitHub
git push -u origin dev
```

---

## Daily Workflow

### 1. Working on Changes (Dev Branch)

```bash
# Make sure you're on dev branch
git checkout dev

# Make your changes to files...

# Check what changed
git status

# Add your changes
git add .

# Commit with a descriptive message
git commit -m "Add new project about game engine"

# Push to dev branch (won't trigger deployment)
git push
```

**Your changes are now on GitHub but NOT published to the live site!** ✓

### 2. Preview Your Dev Changes Locally

```bash
# While on dev branch, run:
bundle exec jekyll serve

# Visit http://localhost:4000 to preview
```

### 3. Publishing Changes (Merge to Main)

When you're ready to publish:

```bash
# Switch to main branch
git checkout main

# Merge dev into main
git merge dev

# Push to main (this triggers deployment!)
git push
```

**Your changes are now live in 1-2 minutes!** 🚀

---

## Common Commands

### Check which branch you're on
```bash
git branch
```
The branch with `*` is your current branch.

### Switch branches
```bash
git checkout dev    # Switch to dev
git checkout main   # Switch to main
```

### See all branches (local and remote)
```bash
git branch -a
```

### View commit history
```bash
git log --oneline --graph --all
```

---

## Visual Workflow

```
dev branch:   A --- B --- C --- D --- E
                          ↓
                      (merge when ready)
                          ↓
main branch:  1 --- 2 --- C --- 3 --- E
                          ↑           ↑
                     (deployed)  (deployed)
```

---

## Advanced: Working on Multiple Features

### Create feature branches from dev

```bash
# Switch to dev
git checkout dev

# Create a feature branch
git checkout -b feature/new-article

# Work on your feature...
git add .
git commit -m "Draft: new article about C++"

# Push feature branch
git push -u origin feature/new-article

# When done, merge back to dev
git checkout dev
git merge feature/new-article

# Push dev
git push
```

---

## Quick Reference Table

| Action | Command | Deploys? |
|--------|---------|----------|
| Work on dev | `git checkout dev` | No |
| Save to dev | `git push` (on dev) | No |
| Publish | `git checkout main && git merge dev && git push` | Yes! |
| Preview locally | `bundle exec jekyll serve` | No |

---

## 🆘 Troubleshooting

### "I'm not sure which branch I'm on"
```bash
git branch
# Look for the one with *
```

### "I made changes on the wrong branch!"

If you made changes on `main` but wanted `dev`:
```bash
# Don't commit yet! First stash your changes
git stash

# Switch to dev
git checkout dev

# Apply your changes here
git stash pop

# Now commit on dev
git add .
git commit -m "Your message"
git push
```

### "I want to discard uncommitted changes"
```bash
git checkout -- .
# This will reset all files to last commit
```

### "I accidentally pushed to main"

You can revert the last commit:
```bash
git checkout main
git revert HEAD
git push
```

---

## Tips

1. **Always work on dev** - Make it a habit to check your branch before making changes
2. **Commit often** - Small, frequent commits are better than large ones
3. **Descriptive messages** - Write clear commit messages
4. **Test locally first** - Always preview with `bundle exec jekyll serve`
5. **Merge regularly** - Don't let dev get too far ahead of main

---

## Example Daily Routine

```bash
# Morning: Start working
git checkout dev
git pull  # Get latest changes

# Work on your content...
# Add a new article, fix typos, etc.

# Save your work
git add .
git commit -m "Draft: Add article about ECS architecture"
git push

# Preview locally
bundle exec jekyll serve
# Check http://localhost:4000

# If happy, publish:
git checkout main
git merge dev
git push
# Site updates in 1-2 minutes!

# Back to dev for more work
git checkout dev
```

---

**Pro tip:** Set your default branch to `dev` locally so you always start there:
```bash
git config --local branch.autoSetupMerge always
```
