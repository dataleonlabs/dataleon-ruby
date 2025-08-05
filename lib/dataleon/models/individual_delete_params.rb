# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Individuals#delete
    class IndividualDeleteParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
