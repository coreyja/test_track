source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
if ENV['BUNDLE_GEMFILE']&.end_with?('Gemfile.next')
  gem 'rails', '~> 5.1.0'
else
  gem 'rails', '~> 5.0.0'
end

# Use postgresql as the database for Active Record
gem 'pg'
# Use SCSS for stylesheets
gem 'sass-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.1'
# See https://github.com/rails/execjs#readme for more supported runtimes
gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'
# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'nokogiri'
gem 'puma', '~> 2.14'

gem 'responders'

gem 'rack-timeout'

gem 'airbrake', '~> 4.3.2'

gem 'newrelic_rpm'

gem 'rails_semantic_logger', require: false

gem 'devise'
gem 'omniauth-saml'

gem 'simple_form'

gem 'aws-sdk', '~> 2.3.0'
gem 'paperclip', '~> 5.2'

gem 'attribute_normalizer', '~> 1.2.0'
gem 'style_closet', path: 'vendor/gems/style-closet'

gem 'delayed_job'
gem 'delayed_job_active_record'
gem 'foreman'

gem 'with_transactional_lock'

group :development, :test do
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'simplecov', require: false
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
  gem 'rspec-rails'
  gem 'rubocop-betterment'

  gem 'dotenv-rails'

  gem 'database_cleaner'
  gem 'poltergeist'
  gem 'selenium-webdriver'
  gem 'site_prism'

  gem 'factory_bot_rails'

  gem 'ruby_spec_helpers', path: 'vendor/gems/ruby_spec_helpers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'travis', '~> 1.8.0'
  gem 'web-console', '~> 2.0'
end

group :test do
  gem 'db-query-matchers'
  gem 'shoulda-matchers'
  gem 'timecop'
end
