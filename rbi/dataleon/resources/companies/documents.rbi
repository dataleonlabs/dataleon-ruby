# typed: strong

module Dataleon
  module Resources
    class Companies
      class Documents
        # @api private
        sig { params(client: Dataleon::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
