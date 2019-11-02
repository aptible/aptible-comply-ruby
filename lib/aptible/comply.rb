require 'aptible/auth'
require 'gem_config'

module Aptible
  module Comply
    include GemConfig::Base

    with_configuration do
      has :root_url,
          classes: [String],
          default: ENV['APTIBLE_COMPLY_ROOT_URL'] ||
                   'https://comply-api.aptible.com'
    end
  end
end

require 'aptible/comply/resource'
require 'aptible/comply/agent'
