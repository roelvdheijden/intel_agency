require 'intel_agency/version'
require 'intel_agency/configuration'
require 'intel_agency/agency'

# Application module
module IntelAgency
  # Start up the application services
  def self.start(settings_file = nil)
    load_settings(settings_file)
    Agency.start
  end

  # Stops all application services
  def self.stop
    Agency.stop
  end

  # Stops all application services
  def self.load_settings(settings_file)
    settings_file ||= './config/intel_agency.yml'
    CONFIG.load_settings(settings_file)
  end
end
