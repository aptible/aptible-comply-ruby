module Aptible
  module Comply
    class Program < Resource
      has_many :membership_notifications

      field :id
    end
  end
end
