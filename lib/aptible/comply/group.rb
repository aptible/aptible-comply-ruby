module Aptible
  module Comply
    class Group < Resource
      belongs_to :program
      has_many :memberships
      embeds_many :memberships

      field :name
    end
  end
end
