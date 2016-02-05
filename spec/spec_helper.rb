$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

# test metrics
require 'simplecov'
require 'coveralls'
Coveralls.wear!

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new [
  SimpleCov::Formatter::HTMLFormatter,
  Coveralls::SimpleCov::Formatter
]
SimpleCov.start

# test helpers
require 'pry'

# Rspec configuration
# RSpec.configure do |config|
# end

# application file
require 'intel_agency'
