module Aptible
  module Comply
    class Grant < Resource
      belongs_to :asset
      embeds_one :access_recipient

      field :status
    end
  end
end
