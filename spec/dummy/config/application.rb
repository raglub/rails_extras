#require 'rails/all'
require "action_controller/railtie"
require "action_mailer/railtie"
require "sprockets/railtie"
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Dummy
  class Application < Rails::Application
  end
end
