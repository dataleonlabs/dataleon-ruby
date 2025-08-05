# frozen_string_literal: true

module Dataleon
  module Resources
    class Individuals
      class Documents
        # Get documents to an individuals
        #
        # @overload list(individual_id, request_options: {})
        #
        # @param individual_id [String] ID of the individual to upload document
        #
        # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dataleon::Models::Individuals::DocumentResponse]
        #
        # @see Dataleon::Models::Individuals::DocumentListParams
        def list(individual_id, params = {})
          @client.request(
            method: :get,
            path: ["individuals/%1$s/documents", individual_id],
            model: Dataleon::Individuals::DocumentResponse,
            options: params[:request_options]
          )
        end

        # Upload documents to an individual
        #
        # @overload upload(individual_id, document_type:, file: nil, url: nil, request_options: {})
        #
        # @param individual_id [String] ID of the individual to upload document
        #
        # @param document_type [Symbol, Dataleon::Models::Individuals::DocumentUploadParams::DocumentType] Filter by document type for upload (must be one of the allowed values)
        #
        # @param file [Pathname, StringIO, IO, String, Dataleon::FilePart] File to upload (required)
        #
        # @param url [String] URL of the file to upload (either `file` or `url` is required)
        #
        # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dataleon::Models::Individuals::GenericDocument]
        #
        # @see Dataleon::Models::Individuals::DocumentUploadParams
        def upload(individual_id, params)
          parsed, options = Dataleon::Individuals::DocumentUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["individuals/%1$s/documents", individual_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: Dataleon::Individuals::GenericDocument,
            options: options
          )
        end

        # @api private
        #
        # @param client [Dataleon::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
