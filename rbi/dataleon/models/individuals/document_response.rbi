# typed: strong

module Dataleon
  module Models
    module Individuals
      class DocumentResponse < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individuals::DocumentResponse,
              Dataleon::Internal::AnyHash
            )
          end

        # List of documents associated with the response.
        sig do
          returns(
            T.nilable(
              T::Array[Dataleon::Individuals::DocumentResponse::Document]
            )
          )
        end
        attr_reader :documents

        sig do
          params(
            documents:
              T::Array[
                Dataleon::Individuals::DocumentResponse::Document::OrHash
              ]
          ).void
        end
        attr_writer :documents

        # Total number of documents available in the response.
        sig { returns(T.nilable(Integer)) }
        attr_reader :total_document

        sig { params(total_document: Integer).void }
        attr_writer :total_document

        sig do
          params(
            documents:
              T::Array[
                Dataleon::Individuals::DocumentResponse::Document::OrHash
              ],
            total_document: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # List of documents associated with the response.
          documents: nil,
          # Total number of documents available in the response.
          total_document: nil
        )
        end

        sig do
          override.returns(
            {
              documents:
                T::Array[Dataleon::Individuals::DocumentResponse::Document],
              total_document: Integer
            }
          )
        end
        def to_hash
        end

        class Document < Dataleon::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dataleon::Individuals::DocumentResponse::Document,
                Dataleon::Internal::AnyHash
              )
            end

          # Unique identifier of the document.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Functional type of the document (e.g., identity document, invoice).
          sig { returns(T.nilable(String)) }
          attr_reader :document_type

          sig { params(document_type: String).void }
          attr_writer :document_type

          # Original filename of the uploaded document.
          sig { returns(T.nilable(String)) }
          attr_reader :filename

          sig { params(filename: String).void }
          attr_writer :filename

          # Human-readable name of the document.
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Secure URL to access the document.
          sig { returns(T.nilable(String)) }
          attr_reader :signed_url

          sig { params(signed_url: String).void }
          attr_writer :signed_url

          # Processing state of the document (e.g., WAITING, STARTED, RUNNING, PROCESSED).
          sig { returns(T.nilable(String)) }
          attr_reader :state

          sig { params(state: String).void }
          attr_writer :state

          # Validation status of the document (e.g., need_review, approved, rejected).
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Identifier of the workspace to which the document belongs.
          sig { returns(T.nilable(String)) }
          attr_reader :workspace_id

          sig { params(workspace_id: String).void }
          attr_writer :workspace_id

          # Represents a document stored and processed by the system, such as an identity
          # card or a PDF contract.
          sig do
            params(
              id: String,
              document_type: String,
              filename: String,
              name: String,
              signed_url: String,
              state: String,
              status: String,
              workspace_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier of the document.
            id: nil,
            # Functional type of the document (e.g., identity document, invoice).
            document_type: nil,
            # Original filename of the uploaded document.
            filename: nil,
            # Human-readable name of the document.
            name: nil,
            # Secure URL to access the document.
            signed_url: nil,
            # Processing state of the document (e.g., WAITING, STARTED, RUNNING, PROCESSED).
            state: nil,
            # Validation status of the document (e.g., need_review, approved, rejected).
            status: nil,
            # Identifier of the workspace to which the document belongs.
            workspace_id: nil
          )
          end

          sig do
            override.returns(
              {
                id: String,
                document_type: String,
                filename: String,
                name: String,
                signed_url: String,
                state: String,
                status: String,
                workspace_id: String
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
