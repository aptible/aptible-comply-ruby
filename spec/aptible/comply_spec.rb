require 'spec_helper'

describe Aptible::Comply do
  subject { Aptible::Comply::Protocol.new }

  it 'should have a configurable root_url' do
    config = described_class.configuration
    expect(config).to be_a GemConfig::Configuration
    expect(config.root_url).to eq 'https://compliance-os-dashboard.aptible.com'
  end

  skip 'uses ENV["COMPLY_ROOT_URL"] if defined' do
    config = described_class.configuration
    with_env 'COMPLY_ROOT_URL', 'http://foobar.com' do
      config.reset
      expect(config.root_url).to eq 'http://foobar.com'
    end
  end
end
