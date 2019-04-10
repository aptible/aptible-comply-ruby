require 'aptible/resource'

module Aptible
  module Comply
    class Resource < Aptible::Resource::Base
      def namespace
        'Aptible::Comply'
      end

      def root_url
        Aptible::Comply.configuration.root_url
      end
    end
  end
end

require 'aptible/comply/membership_notification'
