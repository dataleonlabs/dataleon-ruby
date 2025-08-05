# typed: strong

module Dataleon
  module Models
    class IndividualDeleteParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::IndividualDeleteParams, Dataleon::Internal::AnyHash)
        end

      sig do
        params(request_options: Dataleon::RequestOptions::OrHash).returns(
          T.attached_class
        )
      end
      def self.new(request_options: {})
      end

      sig { override.returns({ request_options: Dataleon::RequestOptions }) }
      def to_hash
      end
    end
  end
end
