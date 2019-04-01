source 'https://rubygems.org'
ruby '~> 2.4.6'

gem 'rails', '~> 4.2.3'

gem 'pg'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

gem 'camaleon_cms', git: 'https://github.com/immense/camaleon-cms.git'
# gem "camaleon_post_clone", github: "owen2345/camaleon-post-clone"
# gem "camaleon_post_order", github: 'owen2345/camaleon-post-order-plugin'
# gem 'camaleon_ecommerce', github:  'owen2345/camaleon-ecommerce'

# Use Puma as the app server
gem 'puma'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

group :production do
  gem 'rails_12factor', group: :production
end

#################### Camaleon CMS include all gems for plugins and themes #################### 
require './lib/plugin_routes' 
instance_eval(PluginRoutes.draw_gems)
