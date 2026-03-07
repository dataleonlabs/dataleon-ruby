# typed: strong

module Dataleon
  module Models
    class CompanyDeleteParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::CompanyDeleteParams, Dataleon::Internal::AnyHash)
        end

      sig { returns(String) }
      attr_accessor :company_id

      sig do
        params(
          company_id: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(company_id:, request_options: {})
      end

      sig do
        override.returns(
          { company_id: String, request_options: Dataleon::RequestOptions }
        )
      end
      def to_hash
      end
    end
  end
end
