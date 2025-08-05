# frozen_string_literal: true

module Dataleon
  module Models
    module Individuals
      class DocumentResponse < Dataleon::Internal::Type::BaseModel
        # @!attribute documents
        #   List of documents associated with the response.
        #
        #   @return [Array<Dataleon::Models::Individuals::DocumentResponse::Document>, nil]
        optional :documents,
                 -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::DocumentResponse::Document] }

        # @!attribute total_document
        #   Total number of documents available in the response.
        #
        #   @return [Integer, nil]
        optional :total_document, Integer

        # @!method initialize(documents: nil, total_document: nil)
        #   @param documents [Array<Dataleon::Models::Individuals::DocumentResponse::Document>] List of documents associated with the response.
        #
        #   @param total_document [Integer] Total number of documents available in the response.

        class Document < Dataleon::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier of the document.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute document_type
          #   Functional type of the document (e.g., identity document, invoice).
          #
          #   @return [String, nil]
          optional :document_type, String

          # @!attribute filename
          #   Original filename of the uploaded document.
          #
          #   @return [String, nil]
          optional :filename, String

          # @!attribute name
          #   Human-readable name of the document.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute signed_url
          #   Secure URL to access the document.
          #
          #   @return [String, nil]
          optional :signed_url, String

          # @!attribute state
          #   Processing state of the document (e.g., WAITING, STARTED, RUNNING, PROCESSED).
          #
          #   @return [String, nil]
          optional :state, String

          # @!attribute status
          #   Validation status of the document (e.g., need_review, approved, rejected).
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute workspace_id
          #   Identifier of the workspace to which the document belongs.
          #
          #   @return [String, nil]
          optional :workspace_id, String

          # @!method initialize(id: nil, document_type: nil, filename: nil, name: nil, signed_url: nil, state: nil, status: nil, workspace_id: nil)
          #   Represents a document stored and processed by the system, such as an identity
          #   card or a PDF contract.
          #
          #   @param id [String] Unique identifier of the document.
          #
          #   @param document_type [String] Functional type of the document (e.g., identity document, invoice).
          #
          #   @param filename [String] Original filename of the uploaded document.
          #
          #   @param name [String] Human-readable name of the document.
          #
          #   @param signed_url [String] Secure URL to access the document.
          #
          #   @param state [String] Processing state of the document (e.g., WAITING, STARTED, RUNNING, PROCESSED).
          #
          #   @param status [String] Validation status of the document (e.g., need_review, approved, rejected).
          #
          #   @param workspace_id [String] Identifier of the workspace to which the document belongs.
        end
      end
    end
  end
end
