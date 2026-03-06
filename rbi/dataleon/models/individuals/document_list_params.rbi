# typed: strong

module Dataleon
  module Models
    module Individuals
      class DocumentListParams < Dataleon::Internal::Type::BaseModel
        extend Dataleon::Internal::Type::RequestParameters::Converter
        include Dataleon::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individuals::DocumentListParams,
              Dataleon::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :individual_id

        sig do
          params(
            individual_id: String,
            request_options: Dataleon::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(individual_id:, request_options: {})
        end

        sig do
          override.returns(
            { individual_id: String, request_options: Dataleon::RequestOptions }
          )
        end
        def to_hash
        end
      end
    end
  end
end
