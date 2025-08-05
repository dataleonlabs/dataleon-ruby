# frozen_string_literal: true

module Dataleon
  module Models
    # @type [Dataleon::Internal::Type::Converter]
    CompanyListResponse = Dataleon::Internal::Type::ArrayOf[-> { Dataleon::CompanyRegistration }]
  end
end
