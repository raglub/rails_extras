# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rails_extras/version'

Gem::Specification.new do |spec|
  spec.name          = "rails_extras"
  spec.version       = RailsExtras::VERSION
  spec.authors       = ["Michał Szyma"]
  spec.email         = ["raglub.ruby@gmail.com"]
  spec.description   = %q{This gem provides extras methods for Rails application.}
  spec.summary       = %q{This gem provides extras methods for Rails application.}
  spec.homepage      = "https://github.com/raglub/rails_extras"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec-rails', '>= 2.0.0'
  spec.add_dependency 'rails', '>= 3.0.0'
end
