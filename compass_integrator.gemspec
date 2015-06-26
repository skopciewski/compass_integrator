# coding: utf-8

begin
  require './lib/compass_integrator/version'
rescue LoadError
  module CompassIntegrator; VERSION = '0'; end
end

Gem::Specification.new do |spec|
  spec.name          = 'compass_integrator'
  spec.version       = CompassIntegrator::VERSION
  spec.authors       = ['Szymon Kopciewski']
  spec.email         = 's.kopciewski@gmail.com'
  spec.summary       = ''
  spec.description   = ''
  spec.homepage      = 'https://github.com/skopciewski/compass_integrator'
  spec.license       = 'GPL-3.0'

  spec.files         = Dir.glob('{bin,lib,data}/**/*') + \
                       %w(Gemfile LICENSE README.md CHANGELOG.md)
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'system_executor', '~> 1.0'
  spec.add_runtime_dependency 'stdout_outputter', '~> 1.0'

  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rspec-given'

end
