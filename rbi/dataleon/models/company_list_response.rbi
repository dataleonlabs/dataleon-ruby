# typed: strong

module Dataleon
  module Models
    CompanyListResponse =
      T.let(
        Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration],
        Dataleon::Internal::Type::Converter
      )
  end
end
