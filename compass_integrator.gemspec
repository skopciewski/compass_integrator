# coding: utf-8

require './lib/compass_integrator/version'

Gem::Specification.new do |spec|
  spec.name          = 'compass_integrator'
  spec.version       = CompassIntegrator::VERSION
  spec.authors       = ['Szymon Kopciewski']
  spec.email         = 's.kopciewski@gmail.com'
  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = 'https://github.com/skopciewski/compass_integrator'
  spec.license       = 'GPL-3.0'

  spec.files         = Dir.glob('{bin,lib}/**/*') + \
                       %w(Gemfile LICENSE README.md CHANGELOG.md)
  spec.require_paths = ['lib']

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-given'

end
