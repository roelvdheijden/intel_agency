# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'intel_agency/version'

Gem::Specification.new do |spec|
  spec.name          = 'IntelAgency'
  spec.version       = IntelAgency::VERSION
  spec.license       = 'MIT'

  spec.description   = 'Intel Agency : Extract, Transform & Load'
  spec.summary       = 'Intel Agency application to Extract, Transform & Load data from and into sources.'
  spec.homepage      = 'https://github.com/roelvdheijden/intel_agency'

  spec.authors       = ['roelvdheijden']
  spec.email         = ['vdheijdenroel@gmail.com']

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.require_paths = ['lib']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^spec/})

  spec.add_development_dependency 'bundler', '~> 1.11'
  spec.add_development_dependency 'rake', '~> 10.0'
  # development : debugging/testing packages
  spec.add_development_dependency 'pry', '~> 0.10.3'
  spec.add_development_dependency 'pry-windows', '~> 0.1'
  spec.add_development_dependency 'rspec', '~> 3.0'
  # development : code metrics packages
  spec.add_development_dependency 'rubocop', '~> 0.36.0'
  spec.add_development_dependency 'simplecov', '~> 0.11.1'
  spec.add_development_dependency 'coveralls', '~> 0.8.10'

  # production dependencies
  # spec.add_runtime_dependency 'bundler', '~> 1.11'
end
