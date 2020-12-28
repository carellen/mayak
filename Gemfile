source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.6'

gem 'rails', '~> 6.0.3', '>= 6.0.3.4'
gem 'dotenv-rails', require: 'dotenv/rails-now', groups: [:development, :test]
gem 'sqlite3', '~> 1.4'
gem 'puma', '~> 4.1'
gem 'sass-rails', '>= 6'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false
gem 'httparty'
gem 'hotwire-rails'
gem 'slim-rails'
gem 'html2slim'
gem 'view_component', require: 'view_component/engine'
gem 'hiredis', '~> 0.6.0'
gem 'redis', '~> 4.0', :require => ['redis', 'redis/connection/hiredis']
gem 'sidekiq', '~>6.1'
gem 'whenever', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
