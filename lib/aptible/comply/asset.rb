module Aptible
  module Comply
    class Asset < Resource
      belongs_to :program
      belongs_to :vendor

      field :id
      field :asset_type
      field :name
      field :owner
      field :current_check_result
    end
  end
end
