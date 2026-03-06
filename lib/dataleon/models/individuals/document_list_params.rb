# frozen_string_literal: true

module Dataleon
  module Models
    module Individuals
      # @see Dataleon::Resources::Individuals::Documents#list
      class DocumentListParams < Dataleon::Internal::Type::BaseModel
        extend Dataleon::Internal::Type::RequestParameters::Converter
        include Dataleon::Internal::Type::RequestParameters

        # @!attribute individual_id
        #
        #   @return [String]
        required :individual_id, String

        # @!method initialize(individual_id:, request_options: {})
        #   @param individual_id [String]
        #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
