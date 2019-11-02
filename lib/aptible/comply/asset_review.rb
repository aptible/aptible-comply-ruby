module Aptible
  module Comply
    class AssetReview < Resource
      belongs_to :asset

      field :review_type
      field :workflow_id
      field :reviewer_id
      field :completed_at, type: Time
      field :notes
    end
  end
end
