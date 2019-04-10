require 'aptible/auth'
require 'gem_config'

ActiveSupport::Inflector.inflections do |inflect|
  inflect.irregular 'criterion', 'criteria'
end

module Aptible
  module Comply
    include GemConfig::Base

    with_configuration do
      has :root_url,
          classes: [String],
          default: ENV['COMPLY_ROOT_URL'] ||
                   'https://compliance-os-dashboard.aptible.com'
    end
  end
end

require 'aptible/comply/resource'
require 'aptible/comply/agent'
