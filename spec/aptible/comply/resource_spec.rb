require 'spec_helper'

describe Aptible::Comply::Resource do
  its(:namespace) { should eq 'Aptible::Comply' }
  its(:root_url) { should eq 'https://comply-api.aptible.com' }
end
