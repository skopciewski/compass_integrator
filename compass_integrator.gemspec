# coding: utf-8

begin
  require "./lib/compass_integrator/version"
rescue LoadError
  module CompassIntegrator; VERSION = "0"; end
end

Gem::Specification.new do |spec|
  spec.name          = "compass_integrator"
  spec.version       = CompassIntegrator::VERSION
  spec.authors       = ["Szymon Kopciewski"]
  spec.email         = "s.kopciewski@gmail.com"
  spec.summary       = "The tasks for assets managment with compass"
  spec.description   = "The tasks for assets managment with compass"
  spec.homepage      = "https://github.com/skopciewski/compass_integrator"
  spec.license       = "GPL-3.0"

  spec.require_paths = ["lib"]
  spec.files         = Dir.glob("{bin,lib,data}/**/*") + \
    %w(Gemfile LICENSE README.md CHANGELOG.md)

  spec.add_runtime_dependency "exec_executor", "~> 1.0"
  spec.add_runtime_dependency "system_executor", "~> 1.0"
  spec.add_runtime_dependency "stdout_outputter", "~> 1.0"
  spec.add_runtime_dependency "compass"
  spec.add_runtime_dependency "compass-rgbapng"
  spec.add_runtime_dependency "compass-blueprint"
  spec.add_runtime_dependency "sass-globbing", "1.1.0"

  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rspec-given"
  spec.add_development_dependency "pry"
end
