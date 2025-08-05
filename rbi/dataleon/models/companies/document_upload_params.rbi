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

          BANK_STATEMENTS =
            T.let(
              :bank_statements,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
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
          ACCOUNTING =
            T.let(
              :accounting,
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
          CARTE_GRISE =
            T.let(
              :carte_grise,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          PROOF_ADDRESS =
            T.let(
              :proof_address,
              Dataleon::Companies::DocumentUploadParams::DocumentType::TaggedSymbol
            )
          IDENTITY_DOCUMENT =
            T.let(
              :identity_document,
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
