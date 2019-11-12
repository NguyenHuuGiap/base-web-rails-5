source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

gem "rails", "~> 5.2.1", ">= 5.2.1.1"
gem "mysql2", ">= 0.4.4", "< 0.6.0"
gem "puma", "~> 3.11"
gem "sass-rails", "~> 5.0"
gem "uglifier", ">= 1.3.0"
gem "jbuilder", "~> 2.5"
gem "figaro", "~> 1.1.1"
gem "bcrypt", "~> 3.1.7"
gem "devise", ">= 4.7.1"
gem "config"
gem "paranoia", "~> 2.4"
gem "sidekiq"
gem "kaminari"
gem "simple_form", ">= 5.0.0"
gem "mini_magick"
gem "ransack", "~> 2.1"
gem "redis"
gem "redis-rails"
gem "sidekiq-cron"

group :development, :test do
  gem "bootsnap", ">= 1.1.0", require: false
  gem "pry"
  gem "pry-byebug"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "faker"
  gem "factory_bot_rails"
  gem "rubocop", require: false
end

group :staging do
  gem "pry"
  gem "pry-byebug"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "faker"
  gem "factory_bot_rails"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
end

group :test do
  gem "simplecov-rcov", require: false
  gem "simplecov-json"
  gem "shoulda-matchers", "~> 3.1.2"
  gem "rspec-rails", "~> 3.8"
  gem "database_cleaner"
  gem "timecop"
  gem "capybara", ">= 2.15"
  gem "selenium-webdriver"
  gem "chromedriver-helper"
end

group :production, :staging do
  gem "capistrano", "3.8.1"
  gem "capistrano-bundler"
  gem "capistrano-rails"
  gem "capistrano-rvm"
  gem "capistrano-sidekiq"
  gem "capistrano3-puma"
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
