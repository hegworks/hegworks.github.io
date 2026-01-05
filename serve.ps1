# Set environment to suppress Sass warnings
$env:SASS_SILENCE_DEPRECATIONS = "import global-builtin color-functions slash-div if-function"
$env:JEKYLL_ENV = "development"

# Run Jekyll serve
bundle exec jekyll serve $args
