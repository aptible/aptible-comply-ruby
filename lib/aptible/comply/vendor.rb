module Aptible
  module Comply
    class Vendor < Resource
      belongs_to :program
      belongs_to :vendor

      field :name
      field :description
      field :aptible_products
      field :claimed
      field :logo_url
      field :website_url
      field :banner_meta
      field :badges
    end
  end
end
