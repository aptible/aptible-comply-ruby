# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'English'
require 'aptible/comply/version'

Gem::Specification.new do |spec|
  spec.name          = 'aptible-comply'
  spec.version       = Aptible::Comply::VERSION
  spec.authors       = ['Frank Macreery']
  spec.email         = ['frank@macreery.com']
  spec.description   = 'Ruby client for compliance-os-dashboard.aptible.com'
  spec.summary       = 'Ruby client for compliance-os-dashboard.aptible.com'
  spec.homepage      = 'https://github.com/aptible/comply-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($RS)
  spec.test_files    = spec.files.grep(%r{^spec\/})
  spec.require_paths = ['lib']

  spec.add_dependency 'aptible-auth', '>= 0.11.10'
  spec.add_dependency 'aptible-resource', '>= 0.3.7'
  spec.add_dependency 'gem_config'

  spec.add_development_dependency 'activesupport'
  spec.add_development_dependency 'aptible-tasks', '>= 0.4.0'
  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rspec-its'
end
