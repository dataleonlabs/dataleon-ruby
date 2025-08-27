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

          LIASSE_FISCALE = :liasse_fiscale
          AMORTISED_LOAN_SCHEDULE = :amortised_loan_schedule
          INVOICE = :invoice
          RECEIPT = :receipt
          COMPANY_STATUTS = :company_statuts
          REGISTRATION_COMPANY_CERTIFICATE = :registration_company_certificate
          KBIS = :kbis
          RIB = :rib
          LIVRET_FAMILLE = :livret_famille
          BIRTH_CERTIFICATE = :birth_certificate
          PAYSLIP = :payslip
          SOCIAL_SECURITY_CARD = :social_security_card
          VEHICLE_REGISTRATION_CERTIFICATE = :vehicle_registration_certificate
          CARTE_GRISE = :carte_grise
          CRIMINAL_RECORD_EXTRACT = :criminal_record_extract
          PROOF_OF_ADDRESS = :proof_of_address
          IDENTITY_CARD_FRONT = :identity_card_front
          IDENTITY_CARD_BACK = :identity_card_back
          DRIVER_LICENSE_FRONT = :driver_license_front
          DRIVER_LICENSE_BACK = :driver_license_back
          IDENTITY_DOCUMENT = :identity_document
          DRIVER_LICENSE = :driver_license
          PASSPORT = :passport
          TAX = :tax
          CERTIFICATE_OF_INCORPORATION = :certificate_of_incorporation
          CERTIFICATE_OF_GOOD_STANDING = :certificate_of_good_standing
          LCB_FT_LAB_AML_POLICIES = :lcb_ft_lab_aml_policies
          NIU_ENTREPRISE = :niu_entreprise
          FINANCIAL_STATEMENTS = :financial_statements
          RCCM = :rccm
          PROOF_OF_SOURCE_FUNDS = :proof_of_source_funds
          ORGANIZATIONAL_CHART = :organizational_chart
          RISK_POLICIES = :risk_policies

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
