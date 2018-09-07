$:.push File.expand_path("../lib", __FILE__)
require "omniauth-zoom/version"

Gem::Specification.new do |gem|
  gem.name        = "omniauth-zoom"
  gem.version     = Omniauth::Zoom::VERSION
  gem.authors     = ["Nikhil Gupta"]
  gem.email       = ["me@nikhgupta.com"]
  gem.homepage    = "https://github.com/nikhgupta/omniauth-zoom"
  gem.description = %q{OmniAuth strategy for Zoom}
  gem.summary     = gem.description
  gem.licenses    = [ 'MIT' ]

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.required_ruby_version = '~> 2.0'

  gem.add_dependency 'omniauth-oauth2'
  gem.add_dependency 'httparty'

  gem.add_development_dependency "rspec", "> 3"
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'pry'

  gem.required_rubygems_version = Gem::Requirement.new('>= 1.3.6') if gem.respond_to? :required_rubygems_version=
end
