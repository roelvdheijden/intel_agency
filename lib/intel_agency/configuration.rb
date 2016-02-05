require 'yaml'

module IntelAgency
  # Configuration data object inheriting from Hash
  # DO NOT instatiate this class; use IA::CONFIG constant variable
  class Configuration < Hash
    # returns true when configuration is valid (currently: size >= 1)
    def valid?
      return true if validate_configuration
      false
    end

    # load settings from a yaml file (environment is optional)
    def load_settings(yaml_file, environment = nil)
      load_yaml_file(yaml_file, environment)
    end

    private

    def validate_configuration
      size >= 1
    end

    def validate_yaml(yaml_string)
      yaml_string.instance_of?(String) && yaml_string[-4..-1].eql?('.yml')
    end

    def load_yaml_file(yaml_file, environment)
      fail ArgumentError unless validate_yaml yaml_file
      fail ArgumentError unless File.exist? yaml_file
      map_yaml_file YAML.load_file(yaml_file)[environment]
    end

    def map_yaml_file(data)
      # TODO: map data to hash
    end
  end

  # IA::CONFIG Constant variable for configuration settings
  CONFIG = Configuration.new
end
