$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

# test helpers
require 'pry'

# test metrics
require 'simplecov'
SimpleCov.start

require 'coveralls'
Coveralls.wear!

# Rspec configuration
RSpec.configure do |config|
end

# application file
require 'intel_agency'
