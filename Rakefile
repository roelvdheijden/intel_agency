require 'bundler/gem_tasks'
require 'rspec/core/rake_task'

desc 'Run all tests'
RSpec::Core::RakeTask.new(:spec)
task default: :spec
# task test: :spec

desc 'Run all unit tests'
RSpec::Core::RakeTask.new(:unit_test) do |t|
  t.pattern = 'spec/unit/**/*.rb'
end

desc 'Run core unit tests only'
RSpec::Core::RakeTask.new(:unit_test_core) do |t|
  t.pattern = 'spec/unit/core/*.rb'
end
