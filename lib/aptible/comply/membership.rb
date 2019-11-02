module Aptible
  module Comply
    class Membership < Resource
      belongs_to :group
      embeds_one :person
    end
  end
end
