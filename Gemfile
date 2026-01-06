# frozen_string_literal: true

source "https://rubygems.org"

gemspec

# Required plugins
gem "jekyll", "~> 4.3.0"
gem "jekyll-paginate"
gem "jekyll-include-cache"
gem "jekyll-seo-tag"
gem "jekyll-archives"
gem "jekyll-sitemap"

# Ruby 3.4+ compatibility
gem "csv"
gem "logger"
gem "base64"

gem "html-proofer", "~> 5.0", group: :test

platforms :windows, :jruby do
  gem "tzinfo", ">= 1", "< 3"
  gem "tzinfo-data"
end

gem "wdm", "~> 0.2.0", :platforms => [:windows]
