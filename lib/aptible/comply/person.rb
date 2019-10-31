module Aptible
  module Comply
    class Person < Resource
      belongs_to :program

      field :first_name
      field :last_name
      field :email
    end
  end
end
