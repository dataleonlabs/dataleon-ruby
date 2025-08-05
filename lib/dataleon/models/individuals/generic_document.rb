# frozen_string_literal: true

module Dataleon
  module Models
    module Individuals
      class GenericDocument < Dataleon::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier of the document.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute checks
        #   List of verification checks performed on the document.
        #
        #   @return [Array<Dataleon::Models::Check>, nil]
        optional :checks, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Check] }

        # @!attribute created_at
        #   Timestamp when the document was created or uploaded.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute document_type
        #   Type/category of the document.
        #
        #   @return [String, nil]
        optional :document_type, String

        # @!attribute name
        #   Name or label for the document.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute signed_url
        #   Signed URL for accessing the document file.
        #
        #   @return [String, nil]
        optional :signed_url, String

        # @!attribute state
        #   Current processing state of the document (e.g., WAITING, PROCESSED).
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute status
        #   Status of the document reception or approval.
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute tables
        #   List of tables extracted from the document, each containing operations.
        #
        #   @return [Array<Dataleon::Models::Individuals::GenericDocument::Table>, nil]
        optional :tables,
                 -> {
                   Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument::Table]
                 }

        # @!attribute values
        #   Extracted key-value pairs from the document, including confidence scores.
        #
        #   @return [Array<Dataleon::Models::Individuals::GenericDocument::Value>, nil]
        optional :values,
                 -> {
                   Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument::Value]
                 }

        # @!method initialize(id: nil, checks: nil, created_at: nil, document_type: nil, name: nil, signed_url: nil, state: nil, status: nil, tables: nil, values: nil)
        #   Represents a general document with metadata, verification checks, and extracted
        #   data.
        #
        #   @param id [String] Unique identifier of the document.
        #
        #   @param checks [Array<Dataleon::Models::Check>] List of verification checks performed on the document.
        #
        #   @param created_at [Time] Timestamp when the document was created or uploaded.
        #
        #   @param document_type [String] Type/category of the document.
        #
        #   @param name [String] Name or label for the document.
        #
        #   @param signed_url [String] Signed URL for accessing the document file.
        #
        #   @param state [String] Current processing state of the document (e.g., WAITING, PROCESSED).
        #
        #   @param status [String] Status of the document reception or approval.
        #
        #   @param tables [Array<Dataleon::Models::Individuals::GenericDocument::Table>] List of tables extracted from the document, each containing operations.
        #
        #   @param values [Array<Dataleon::Models::Individuals::GenericDocument::Value>] Extracted key-value pairs from the document, including confidence scores.

        class Table < Dataleon::Internal::Type::BaseModel
          # @!attribute operation
          #   List of operations or actions associated with the table.
          #
          #   @return [Array<Object>, nil]
          optional :operation, Dataleon::Internal::Type::ArrayOf[Dataleon::Internal::Type::Unknown]

          # @!method initialize(operation: nil)
          #   @param operation [Array<Object>] List of operations or actions associated with the table.
        end

        class Value < Dataleon::Internal::Type::BaseModel
          # @!attribute confidence
          #   Confidence score (between 0 and 1) for the extracted value.
          #
          #   @return [Float, nil]
          optional :confidence, Float

          # @!attribute name
          #   Name or label of the extracted field.
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute value
          #   List of integer values related to the field (e.g., bounding box coordinates).
          #
          #   @return [Array<Integer>, nil]
          optional :value, Dataleon::Internal::Type::ArrayOf[Integer]

          # @!method initialize(confidence: nil, name: nil, value: nil)
          #   @param confidence [Float] Confidence score (between 0 and 1) for the extracted value.
          #
          #   @param name [String] Name or label of the extracted field.
          #
          #   @param value [Array<Integer>] List of integer values related to the field (e.g., bounding box coordinates).
        end
      end
    end
  end
end
