source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '~> 3.0.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.0'
# Use SCSS for stylesheets
gem 'sassc-rails'
# Use Puma as the app server
gem 'puma', '~> 5.3'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.7'
gem 'panko_serializer'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.3'

gem 'slim-rails'
gem 'kaminari'
gem 'redis', '~> 4.1'
gem 'sidekiq'
gem 'sidekiq-cron'
gem 'searchkick'
gem 'rack'
gem 'knock'
gem 'simple_form', '>= 3.5.1'
gem 'pundit'
gem 'premailer-rails'
gem 'paper_trail'
gem 'blazer'
gem 'friendly_id'
gem 'stringex'
gem 'rollbar'
gem 'rack-cors', require: 'rack/cors'
gem 'devise'
gem 'react-rails'
gem 'sass-rails', '~> 6'
gem 'activeadmin'
gem 'toastr-rails'
gem 'active_link_to'
gem 'ransack'
gem 'pagy', '~> 3.5' # omit patch digit and use the latest if possible
gem 'gmaps4rails'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-turbolinks', '~> 2.1'
gem 'activeadmin_quill_editor'
gem 'rails-i18n'
gem 'mobility', '~> 1.1.3'
gem 'leaflet-rails'
gem 'hotwire-rails'
gem 'photoswipe-rails', '~> 4.1', '>= 4.1.2'
gem "http"
gem "turbo-rails", "~> 0.9"
gem "jbuilder", "~> 2.7"
gem "stimulus-rails", ">= 0.7"
gem 'elasticsearch-model', '7.1.1'
gem 'elasticsearch-rails', '7.1.1'




# Image uploads
gem 'shrine'
gem 'image_processing'
gem 'mini_magick'
gem 'aws-sdk-s3'

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]

  # Support #save_and_open_page in feature specs
  gem 'launchy'
  gem 'bundle-audit'
  gem 'brakeman'
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'pry-rails'

  gem 'rspec-rails'
  gem 'factory_bot_rails'
  gem 'dotenv-rails'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-performance', require: false

  # Automatically run the specs (like autotest)
  gem 'guard-rspec', require: false
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'rack-mini-profiler', '~> 2.0'
  gem 'listen', '~> 3.3'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'letter_opener'
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'

  gem 'simplecov', require: false
  gem 'email_spec'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

#gem "gem", "~> 0.0.1.alpha"
gem "active_material", "~> 1.5"

gem "stimulus_reflex", "~> 3.4"

gem "geared_pagination", "~> 1.1"
