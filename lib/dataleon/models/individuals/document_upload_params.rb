# frozen_string_literal: true

module Dataleon
  module Models
    module Individuals
      # @see Dataleon::Resources::Individuals::Documents#upload
      class DocumentUploadParams < Dataleon::Internal::Type::BaseModel
        extend Dataleon::Internal::Type::RequestParameters::Converter
        include Dataleon::Internal::Type::RequestParameters

        # @!attribute document_type
        #   Filter by document type for upload (must be one of the allowed values)
        #
        #   @return [Symbol, Dataleon::Models::Individuals::DocumentUploadParams::DocumentType]
        required :document_type, enum: -> { Dataleon::Individuals::DocumentUploadParams::DocumentType }

        # @!attribute file
        #   File to upload (required)
        #
        #   @return [Pathname, StringIO, IO, String, Dataleon::FilePart, nil]
        optional :file, Dataleon::Internal::Type::FileInput

        # @!attribute url
        #   URL of the file to upload (either `file` or `url` is required)
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(document_type:, file: nil, url: nil, request_options: {})
        #   @param document_type [Symbol, Dataleon::Models::Individuals::DocumentUploadParams::DocumentType] Filter by document type for upload (must be one of the allowed values)
        #
        #   @param file [Pathname, StringIO, IO, String, Dataleon::FilePart] File to upload (required)
        #
        #   @param url [String] URL of the file to upload (either `file` or `url` is required)
        #
        #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]

        # Filter by document type for upload (must be one of the allowed values)
        module DocumentType
          extend Dataleon::Internal::Type::Enum

          BANK_STATEMENTS = :bank_statements
          LIASSE_FISCALE = :liasse_fiscale
          AMORTISED_LOAN_SCHEDULE = :amortised_loan_schedule
          ACCOUNTING = :accounting
          INVOICE = :invoice
          RECEIPT = :receipt
          COMPANY_STATUTS = :company_statuts
          RIB = :rib
          LIVRET_FAMILLE = :livret_famille
          PAYSLIP = :payslip
          CARTE_GRISE = :carte_grise
          PROOF_ADDRESS = :proof_address
          IDENTITY_DOCUMENT = :identity_document
          TAX = :tax

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
