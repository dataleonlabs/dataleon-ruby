# frozen_string_literal: true

module Dataleon
  module Models
    module Companies
      # @see Dataleon::Resources::Companies::Documents#list
      class DocumentListParams < Dataleon::Internal::Type::BaseModel
        extend Dataleon::Internal::Type::RequestParameters::Converter
        include Dataleon::Internal::Type::RequestParameters

        # @!attribute company_id
        #
        #   @return [String]
        required :company_id, String

        # @!method initialize(company_id:, request_options: {})
        #   @param company_id [String]
        #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
