# Set environment variables for Jekyll remote theme cache
$env:TMPDIR = "$PSScriptRoot\.jekyll-tmp"
$env:JEKYLL_ENV = "development"

# Create temp directory if it doesn't exist
if (-not (Test-Path $env:TMPDIR)) {
    New-Item -ItemType Directory -Path $env:TMPDIR | Out-Null
}

# Run Jekyll serve
bundle exec jekyll serve $args
