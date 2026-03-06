# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Companies#retrieve
    class CompanyRetrieveParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!attribute company_id
      #
      #   @return [String]
      required :company_id, String

      # @!attribute document
      #   Include document signed url
      #
      #   @return [Boolean, nil]
      optional :document, Dataleon::Internal::Type::Boolean

      # @!attribute scope
      #   Scope filter (id or scope)
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(company_id:, document: nil, scope: nil, request_options: {})
      #   @param company_id [String]
      #
      #   @param document [Boolean] Include document signed url
      #
      #   @param scope [String] Scope filter (id or scope)
      #
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
