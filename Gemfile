source 'https://rubygems.org'

gem 'rails', '3.2.10'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


group :production do
  gem 'pg'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
  gem 'sass-rails-bootstrap'
end

group :test, :development do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'guard'
  gem 'guard-rspec'
  gem 'rb-fsevent', '~> 0.9.1'
  gem 'growl', :require => false # for Mac
  gem 'libnotify', :require => false # for *nix
  gem 'pry-rails'
  gem 'sqlite3'
end

gem 'jquery-rails'

gem "haml-rails"
gem 'omniauth-github'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
