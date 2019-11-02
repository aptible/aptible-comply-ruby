module Aptible
  module Comply
    class AssetReview < Resource
      belongs_to :asset
      has_many :asset_reviews

      field :asset_id
      field :review_type
      field :reviewer_id
      field :completed_at
      field :notes
    end
  end
end
