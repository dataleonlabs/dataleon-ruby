# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Individuals#retrieve
    class IndividualRetrieveParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!attribute document
      #   Include document information
      #
      #   @return [Boolean, nil]
      optional :document, Dataleon::Internal::Type::Boolean

      # @!attribute scope
      #   Scope filter (id or scope)
      #
      #   @return [String, nil]
      optional :scope, String

      # @!method initialize(document: nil, scope: nil, request_options: {})
      #   @param document [Boolean] Include document information
      #
      #   @param scope [String] Scope filter (id or scope)
      #
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
