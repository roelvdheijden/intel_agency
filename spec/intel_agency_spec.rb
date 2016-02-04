require 'spec_helper'

describe IntelAgency do
  it 'has an appliction name : IntelAgency' do
    expect(IA::APPLICATION).not_to be nil
    expect(IA::APPLICATION).to eq 'IntelAgency'
  end

  it 'has a version number' do
    expect(IA::VERSION).not_to be nil
  end

  context 'start/stop the application' do
    it '::start' do
      skip 'pending'
    end

    it '::stop' do
      skip 'pending'
    end
  end

  it 'missing something useful' do
    skip 'pending'
  end
end
