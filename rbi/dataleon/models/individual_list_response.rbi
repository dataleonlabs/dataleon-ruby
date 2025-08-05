# typed: strong

module Dataleon
  module Models
    IndividualListResponse =
      T.let(
        Dataleon::Internal::Type::ArrayOf[Dataleon::Individual],
        Dataleon::Internal::Type::Converter
      )
  end
end
