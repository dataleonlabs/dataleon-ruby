# typed: strong

module Dataleon
  module Models
    class IndividualRetrieveParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::IndividualRetrieveParams, Dataleon::Internal::AnyHash)
        end

      # Include document information
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :document

      sig { params(document: T::Boolean).void }
      attr_writer :document

      # Scope filter (id or scope)
      sig { returns(T.nilable(String)) }
      attr_reader :scope

      sig { params(scope: String).void }
      attr_writer :scope

      sig do
        params(
          document: T::Boolean,
          scope: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Include document information
        document: nil,
        # Scope filter (id or scope)
        scope: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            document: T::Boolean,
            scope: String,
            request_options: Dataleon::RequestOptions
          }
        )
      end
      def to_hash
      end
    end
  end
end
