source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.2.6'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
# gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem "rails-i18n"
gem 'bootstrap-sass', '~> 3.3.6'
gem 'simple_form'
gem 'devise'
gem 'simple_captcha2', require: 'simple_captcha'
gem 'omniauth-facebook'
gem "omniauth-google-oauth2"
gem 'omniauth-github'
gem 'letter_opener_web'
gem 'figaro'
gem 'holder_rails'
gem "font-awesome-rails"

# user profile
gem 'haml-rails'

gem 'mini_magick'
gem 'gravtastic'

gem 'ckeditor'
gem 'ckeditor-imgur'

gem 'carrierwave', '>= 1.0.0.beta', '< 2.0'
gem 'mini_magick'
gem 'carrierwave-qiniu', '>= 0.2.4'

gem 'figaro'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', group: :development
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'pry'
  gem 'pry-nav'
  gem "awesome_rails_console"
end

group :production do
  gem "pg"
  gem "rails_12factor"
end
