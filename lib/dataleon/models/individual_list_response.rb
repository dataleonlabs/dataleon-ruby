# frozen_string_literal: true

module Dataleon
  module Models
    # @type [Dataleon::Internal::Type::Converter]
    IndividualListResponse = Dataleon::Internal::Type::ArrayOf[-> { Dataleon::Individual }]
  end
end
