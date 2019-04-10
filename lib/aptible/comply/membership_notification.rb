module Aptible
  module Comply
    class MembershipNotification < Resource
      belongs_to :program

      field :id
      field :user_url
      field :role_url
    end
  end
end
