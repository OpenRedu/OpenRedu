source 'https://rubygems.org'

ruby "1.9.3"

gem 'aasm'
gem 'premailer-rails'
gem 'classy_enum', '~> 3.2'
gem 'activerecord-import'
gem 'acts_as_tree', '~> 0.1.1'
gem 'acts-as-taggable-on'
gem 'ajaxful_rating',
  git: 'git://github.com/edgarjs/ajaxful-rating.git',
  branch: 'rails3'
gem 'authlogic'
gem 'awesome_nested_fields'
gem 'bundler', '~> 1.2'
gem 'cancan', '~> 1.6.7'
gem 'ckeditor', '4.1.3'
gem 'daemons', '1.0.10'
gem 'date_validator'
gem 'deep_cloneable'
gem 'delayed_job_mongoid'
gem 'bson_ext'
gem 'dynamic_form'
gem 'em-http-request'
gem 'eventmachine'
gem 'exceptional'
gem 'factory_girl_rails'
gem "redu-has_friends", "~> 1.0", require: "has_friends"
gem 'invitable', git: 'https://github.com/OpenRedu/invitable.git'
gem 'jquery-rails', '>= 1.0.12'
gem 'kaminari', '~> 0.17'
gem 'mime-types'
gem "mysql2", '~> 0.3.21'
gem 'omniauth'
gem 'omniauth-facebook', '~> 4.0.0'
gem 'paperclip', '~> 2.7.5'
gem 'rails', '~> 3.2.13'
gem "rake", "~> 10.0.4"
gem 'remotipart', '~> 1.0'
gem 'scribd_fu', git: 'git://github.com/guiocavalcanti/scribd_fu.git',
  branch: 'without-scape'
gem 'simple-navigation', git: 'git://github.com/andi/simple-navigation.git'
gem 'sunspot_rails', '2.0'
gem 'route_translator'
gem 'useragent'
gem 'vis_client', git: 'git://github.com/openredu/vis_client.git',
  branch: 'ruby-1-9-3'
gem 'chronic' # Necessário ao whenever
gem 'whenever', require: false
gem 'untied-publisher', '~> 0.0.7.pre3'
gem 'yajl-ruby'
gem 'simple_acts_as_list'
gem 'ey_config'
gem 'destroy_soon'
gem 'redu_analytics', git: 'https://github.com/redu/analytics.git'
gem 'humanizer'
gem 'valium'
gem 'dalli'
gem 'simple-private-messages', '0.0.0', # A gem não possui .gemspec
  git: 'https://github.com/jongilbraith/simple-private-messages.git'
gem 'rails_autolink'
gem 'rubyzip', '~> 0.9', require: 'zip/zip'
gem 'truncate_html'
gem 'rest-client'
gem 'dotenv-rails'

# Gems específicos para a API
gem 'oauth-plugin', '~> 0.4.0'
gem 'rack-cors', require: 'rack/cors'
gem 'roar-rails'

group :assets do
  gem 'sass-rails',   '3.2'
  gem 'compass-rails'
  gem 'therubyracer', platforms: :ruby
  gem 'uglifier', '2.1'
  gem 'turbo-sprockets-rails3', '0.3.6'
end

# Gems específicos de algum ambiente
group :development, :test do
  gem 'jasmine'
  gem 'no_peeping_toms', git: 'https://github.com/patmaddox/no-peeping-toms.git'
  gem 'rails3-generators'
  gem "rspec-rails", "~> 2.13"
  gem 'sunspot_solr', '2.0'
end

group :test do
  gem 'shoulda-matchers', "~> 1"
  gem 'webmock'
  gem 'ruby-prof'
end

group :development do
  # gem 'uniform_notifier'

  # Gems úteis p/ análise performance
  # gem 'bullet'
  # gem 'rack-mini-profiler', '0.1.10'
  # gem 'rails-footnotes', '>= 3.7.5.rc4'
end

group :production do
  gem 'newrelic_rpm'
end

group :debug do
  gem 'debugger'
end
