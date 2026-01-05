@echo off
REM Set Jekyll cache to a safe location without drive letters
set JEKYLL_CACHE_DIR=.jekyll-cache
set JEKYLL_REMOTE_THEME_CACHE=%TEMP%\jekyll-remote-theme

REM Run Jekyll
bundle exec jekyll serve %*
