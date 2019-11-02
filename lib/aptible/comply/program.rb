module Aptible
  module Comply
    class Program < Resource
      has_many :assets
      has_many :vendors
      has_many :people
      has_many :groups

      field :id

      def organization_url
        links['organization'].href
      end

      def organization
        return @organization if @organization

        auth = Aptible::Auth::Organization.new(token: token, headers: headers)
        @organization = auth.find_by_url(organization_url)
      end
    end
  end
end
