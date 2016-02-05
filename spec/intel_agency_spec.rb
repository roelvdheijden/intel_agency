require 'spec_helper'

describe IntelAgency do
  context 'application constants' do
    let(:ia) { IntelAgency }

    it 'has a version number' do
      expect(ia::VERSION).not_to be nil
    end

    it 'has a configuration hash' do
      expect(ia::CONFIG).not_to be nil
      expect(ia::CONFIG).to be_kind_of Hash
    end
  end

  context 'start/stop the application' do
    it '::start' do
      expect(IntelAgency).to respond_to :start
    end

    it '::start can receive a yaml_file as param' do
      skip 'test implementation'
    end

    it '::start loads the configuration hash' do
      skip 'test implementation'
    end

    it '::stop' do
      expect(IntelAgency).to respond_to :stop
    end

    it '::load_settings' do
      expect(IntelAgency).to respond_to :load_settings
    end
    it '::load_settings can load a given yaml file into the configuration hash' do
      skip 'test implementation'
    end
    it '::load_settings loads the default yaml file location when no param is given' do
      skip 'test implementation'
    end
  end

  context IntelAgency::Configuration do
    let(:ia_config) { IntelAgency::CONFIG }

    it '#valid?' do
      ia_config.clear
      expect(ia_config.valid?).to be false
      ia_config[1] = 2
      expect(ia_config.valid?).to be true
      ia_config.clear
    end

    it '#load_settings' do
      expect(ia_config).to respond_to :load_settings
    end
    it '#load_settings raises an error on missing or invalid yaml string or file' do
      expect { ia_config.load_settings }.to raise_error ArgumentError
      expect { ia_config.load_settings('test') }.to raise_error ArgumentError
      expect { ia_config.load_settings('tst.yml') }.to raise_error ArgumentError
    end

    it '#load_settings loads a yaml file into its hash' do
      skip 'test implementation'
      expect(ia_config.load_settings('test.yml')).to respond_to :load_settings
    end
  end
end
