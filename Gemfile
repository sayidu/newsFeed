source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.3.6'

gem 'bootsnap', '>= 1.1.0', require: false
gem 'news-api'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.0'
gem 'turbolinks', '~> 5'

group :development, :test do
  gem 'dotenv-rails'
  gem 'pry'
  gem 'rspec-rails'
end

group :test do
  gem 'capybara'
  gem 'capybara-webkit'
  gem 'rails-controller-testing'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
