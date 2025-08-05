# frozen_string_literal: true

module Dataleon
  module Resources
    class Individuals
      class Documents
        # @api private
        #
        # @param client [Dataleon::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
