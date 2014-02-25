ENV["RAILS_ENV"] ||= 'test'

require 'rails_extras'
require 'rails_extras/helpers/tag'
require ::File.expand_path('../dummy/config/environment', __FILE__)
require 'rspec/rails'

#require 'coveralls'
#Coveralls.wear!

RSpec.configure do |config|
  config.color_enabled = true
  config.tty = true
  config.formatter = RailsExtras::RSpec::Formatters::NumericProgress
end
