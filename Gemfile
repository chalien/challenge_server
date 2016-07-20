source 'https://rubygems.org'


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 0.18'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
# gem 'rack-cors'

group :development do
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :development, :test do
  gem 'byebug'
  gem 'dotenv-rails', '~> 2'
end

group :test do
  gem 'minitest-rails', '3.0.0.rc1'
  gem 'blueprint_agreement', github: 'charly-palencia/blueprint-agreement', ref: '2375ca2463e5e3008b47bdf487faab990980d0a2'
  gem 'minitest-matchers'
  gem 'factory_girl_rails', '~> 4.6'
  gem 'faker', '~> 1.6', '>= 1.6.2'
  gem 'database_cleaner', '~> 1.5'
  #active record model test
  gem 'shoulda', '~> 3.5'
  gem 'shoulda-matchers', '~> 2.0'
  #mock http request
  gem 'webmock', '2.0.2'
  # stub objects
  gem 'mocha', '~> 1.1'
  gem 'rubycritic', '~> 2.9'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
