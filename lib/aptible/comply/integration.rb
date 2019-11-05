module Aptible
  module Comply
    class Integration < Resource
      belongs_to :program

      field :integration_type
      field :env
    end
  end
end
