# typed: strong

module Dataleon
  module Models
    module Companies
      class DocumentUploadParams < Dataleon::Internal::Type::BaseModel
        extend Dataleon::Internal::Type::RequestParameters::Converter
        include Dataleon::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Companies::DocumentUploadParams,
              Dataleon::Internal::AnyHash
            )
          end

        # Filter by document type for upload (must be one of the allowed values)
        sig do
          returns(
            Dataleon::Companies::DocumentUploadParams::DocumentType::OrSymbol
          )
        end
        attr_accessor :document_type

        # File to upload (required)
        sig { returns(T.nilable(Dataleon::Internal::FileInput)) }
        attr_reader :file

        sig { params(file: Dataleon::Internal::FileInput).void }
        attr_writer :file

        # URL of the file to upload (either `file` or `url` is required)
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            document_type:
              Dataleon::Companies::DocumentUploadParams::DocumentType::OrSymbol,
            file: Dataleon::Internal::FileInput,
            url: String,
            request_options: Dataleon::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          # Filter by document type for upload (must be one of the allowed values)
          document_type:,
          # File to upload (required)
          file: nil,
          # URL of the file to upload (either `file` or `url` is required)
          url: nil,
          request_options: {}
        )
        end

        sig do
          override.returns(
            {
              document_type:
                Dataleon::Companies::DocumentUploadParams::DocumentType::OrSymbol,
              file: Dataleon::Internal::FileInput,
              url: String,
              request_options: Dataleon::RequestOptions
            }
          )
        end
        def to_hash
        end

        # Filter by document type for upload (must be one of the allowed values)
        module DocumentType
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dataleon::Companies::DocumentUploadParams::DocumentType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LIASSE_FISCALE =
            T.let(
              :liasse_fiscale,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          AMORTISED_LOAN_SCHEDULE =
            T.let(
              :amortised_loan_schedule,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          INVOICE =
            T.let(
              :invoice,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          RECEIPT =
            T.let(
              :receipt,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          COMPANY_STATUTS =
            T.let(
              :company_statuts,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          REGISTRATION_COMPANY_CERTIFICATE =
            T.let(
              :registration_company_certificate,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          KBIS =
            T.let(
              :kbis,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          RIB =
            T.let(
              :rib,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          LIVRET_FAMILLE =
            T.let(
              :livret_famille,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          BIRTH_CERTIFICATE =
            T.let(
              :birth_certificate,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          PAYSLIP =
            T.let(
              :payslip,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          SOCIAL_SECURITY_CARD =
            T.let(
              :social_security_card,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          VEHICLE_REGISTRATION_CERTIFICATE =
            T.let(
              :vehicle_registration_certificate,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          CARTE_GRISE =
            T.let(
              :carte_grise,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          CRIMINAL_RECORD_EXTRACT =
            T.let(
              :criminal_record_extract,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          IDENTITY_CARD_FRONT =
            T.let(
              :identity_card_front,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          IDENTITY_CARD_BACK =
            T.let(
              :identity_card_back,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          DRIVER_LICENSE_FRONT =
            T.let(
              :driver_license_front,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          DRIVER_LICENSE_BACK =
            T.let(
              :driver_license_back,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          IDENTITY_DOCUMENT =
            T.let(
              :identity_document,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          DRIVER_LICENSE =
            T.let(
              :driver_license,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          PASSPORT =
            T.let(
              :passport,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          TAX =
            T.let(
              :tax,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          CERTIFICATE_OF_INCORPORATION =
            T.let(
              :certificate_of_incorporation,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          CERTIFICATE_OF_GOOD_STANDING =
            T.let(
              :certificate_of_good_standing,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          LCB_FT_LAB_AML_POLICIES =
            T.let(
              :lcb_ft_lab_aml_policies,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          NIU_ENTREPRISE =
            T.let(
              :niu_entreprise,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          FINANCIAL_STATEMENTS =
            T.let(
              :financial_statements,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          RCCM =
            T.let(
              :rccm,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          PROOF_OF_SOURCE_FUNDS =
            T.let(
              :proof_of_source_funds,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          ORGANIZATIONAL_CHART =
            T.let(
              :organizational_chart,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          RISK_POLICIES =
            T.let(
              :risk_policies,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
