source 'https://rubygems.org'
ruby '2.7.2'

git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails', branch: 'main'
gem 'rails', '~> 6.1.3', '>= 6.1.3.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'rspec-rails', '~> 5.0'
  gem "ffaker", "~> 2.18"
  gem "factory_bot_rails", "~> 6.1"
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Use sqlite3 as the database for Active Record

  gem 'rubocop-rspec', '~> 2.2'

  gem 'rubocop-performance', '~> 1.10'

  gem 'rubocop-rails', '~> 2.9'

  gem 'fasterer', '~> 0.9.0'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'rspec', '~> 3.10'
  gem 'rspec-core', '~> 3.10'
  gem 'rspec-expectations', '~> 3.10'
  gem 'rspec-mocks', '~> 3.10'
  gem 'rspec-support', '~> 3.10'
  gem 'selenium-webdriver'
  gem 'webdrivers'
  gem "database_cleaner-active_record", "~> 2.0"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

gem 'haml-rails', '~> 2.0'

gem 'pg', '~> 1.2'

gem 'figaro', '~> 1.2'

gem 'bundler', '~> 2.1'

gem 'rails-controller-testing', '~> 1.0'

gem 'site_prism', '~> 3.7'

gem 'simplecov', '~> 0.21.2'
