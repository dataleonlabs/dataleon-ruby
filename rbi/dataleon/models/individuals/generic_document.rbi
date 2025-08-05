# typed: strong

module Dataleon
  module Models
    module Individuals
      class GenericDocument < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individuals::GenericDocument,
              Dataleon::Internal::AnyHash
            )
          end

        # Unique identifier of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # List of verification checks performed on the document.
        sig { returns(T.nilable(T::Array[Dataleon::Check])) }
        attr_reader :checks

        sig { params(checks: T::Array[Dataleon::Check::OrHash]).void }
        attr_writer :checks

        # Timestamp when the document was created or uploaded.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Type/category of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :document_type

        sig { params(document_type: String).void }
        attr_writer :document_type

        # Name or label for the document.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Signed URL for accessing the document file.
        sig { returns(T.nilable(String)) }
        attr_reader :signed_url

        sig { params(signed_url: String).void }
        attr_writer :signed_url

        # Current processing state of the document (e.g., WAITING, PROCESSED).
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # Status of the document reception or approval.
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # List of tables extracted from the document, each containing operations.
        sig do
          returns(
            T.nilable(T::Array[Dataleon::Individuals::GenericDocument::Table])
          )
        end
        attr_reader :tables

        sig do
          params(
            tables:
              T::Array[Dataleon::Individuals::GenericDocument::Table::OrHash]
          ).void
        end
        attr_writer :tables

        # Extracted key-value pairs from the document, including confidence scores.
        sig do
          returns(
            T.nilable(T::Array[Dataleon::Individuals::GenericDocument::Value])
          )
        end
        attr_reader :values

        sig do
          params(
            values:
              T::Array[Dataleon::Individuals::GenericDocument::Value::OrHash]
          ).void
        end
        attr_writer :values

        # Represents a general document with metadata, verification checks, and extracted
        # data.
        sig do
          params(
            id: String,
            checks: T::Array[Dataleon::Check::OrHash],
            created_at: Time,
            document_type: String,
            name: String,
            signed_url: String,
            state: String,
            status: String,
            tables:
              T::Array[Dataleon::Individuals::GenericDocument::Table::OrHash],
            values:
              T::Array[Dataleon::Individuals::GenericDocument::Value::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier of the document.
          id: nil,
          # List of verification checks performed on the document.
          checks: nil,
          # Timestamp when the document was created or uploaded.
          created_at: nil,
          # Type/category of the document.
          document_type: nil,
          # Name or label for the document.
          name: nil,
          # Signed URL for accessing the document file.
          signed_url: nil,
          # Current processing state of the document (e.g., WAITING, PROCESSED).
          state: nil,
          # Status of the document reception or approval.
          status: nil,
          # List of tables extracted from the document, each containing operations.
          tables: nil,
          # Extracted key-value pairs from the document, including confidence scores.
          values: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              checks: T::Array[Dataleon::Check],
              created_at: Time,
              document_type: String,
              name: String,
              signed_url: String,
              state: String,
              status: String,
              tables: T::Array[Dataleon::Individuals::GenericDocument::Table],
              values: T::Array[Dataleon::Individuals::GenericDocument::Value]
            }
          )
        end
        def to_hash
        end

        class Table < Dataleon::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dataleon::Individuals::GenericDocument::Table,
                Dataleon::Internal::AnyHash
              )
            end

          # List of operations or actions associated with the table.
          sig { returns(T.nilable(T::Array[T.anything])) }
          attr_reader :operation

          sig { params(operation: T::Array[T.anything]).void }
          attr_writer :operation

          sig do
            params(operation: T::Array[T.anything]).returns(T.attached_class)
          end
          def self.new(
            # List of operations or actions associated with the table.
            operation: nil
          )
          end

          sig { override.returns({ operation: T::Array[T.anything] }) }
          def to_hash
          end
        end

        class Value < Dataleon::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dataleon::Individuals::GenericDocument::Value,
                Dataleon::Internal::AnyHash
              )
            end

          # Confidence score (between 0 and 1) for the extracted value.
          sig { returns(T.nilable(Float)) }
          attr_reader :confidence

          sig { params(confidence: Float).void }
          attr_writer :confidence

          # Name or label of the extracted field.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # List of integer values related to the field (e.g., bounding box coordinates).
          sig { returns(T.nilable(T::Array[Integer])) }
          attr_reader :value

          sig { params(value: T::Array[Integer]).void }
          attr_writer :value

          sig do
            params(
              confidence: Float,
              name: String,
              value: T::Array[Integer]
            ).returns(T.attached_class)
          end
          def self.new(
            # Confidence score (between 0 and 1) for the extracted value.
            confidence: nil,
            # Name or label of the extracted field.
            name: nil,
            # List of integer values related to the field (e.g., bounding box coordinates).
            value: nil
          )
          end

          sig do
            override.returns(
              { confidence: Float, name: String, value: T::Array[Integer] }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
