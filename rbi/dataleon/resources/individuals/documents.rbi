# typed: strong

module Dataleon
  module Resources
    class Individuals
      class Documents
        # Get documents to an individuals
        sig do
          params(
            individual_id: String,
            request_options: Dataleon::RequestOptions::OrHash
          ).returns(Dataleon::Individuals::DocumentResponse)
        end
        def list(
          # ID of the individual to upload document
          individual_id,
          request_options: {}
        )
        end

        # Upload documents to an individual
        sig do
          params(
            individual_id: String,
            document_type:
              Dataleon::Individuals::DocumentUploadParams::DocumentType::OrSymbol,
            file: Dataleon::Internal::FileInput,
            url: String,
            request_options: Dataleon::RequestOptions::OrHash
          ).returns(Dataleon::Individuals::GenericDocument)
        end
        def upload(
          # ID of the individual to upload document
          individual_id,
          # Filter by document type for upload (must be one of the allowed values)
          document_type:,
          # File to upload (required)
          file: nil,
          # URL of the file to upload (either `file` or `url` is required)
          url: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: Dataleon::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
