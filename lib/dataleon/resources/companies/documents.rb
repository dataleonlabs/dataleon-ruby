# frozen_string_literal: true

module Dataleon
  module Resources
    class Companies
      class Documents
        # Get documents to an company
        #
        # @overload list(company_id, request_options: {})
        #
        # @param company_id [String] ID of the company to upload document
        #
        # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dataleon::Models::Individuals::DocumentResponse]
        #
        # @see Dataleon::Models::Companies::DocumentListParams
        def list(company_id, params = {})
          @client.request(
            method: :get,
            path: ["companies/%1$s/documents", company_id],
            model: Dataleon::Individuals::DocumentResponse,
            options: params[:request_options]
          )
        end

        # Upload documents to an company
        #
        # @overload upload(company_id, document_type:, file: nil, url: nil, request_options: {})
        #
        # @param company_id [String] ID of the company to upload document
        #
        # @param document_type [Symbol, Dataleon::Models::Companies::DocumentUploadParams::DocumentType] Filter by document type for upload (must be one of the allowed values)
        #
        # @param file [Pathname, StringIO, IO, String, Dataleon::FilePart] File to upload (required)
        #
        # @param url [String] URL of the file to upload (either `file` or `url` is required)
        #
        # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Dataleon::Models::Individuals::GenericDocument]
        #
        # @see Dataleon::Models::Companies::DocumentUploadParams
        def upload(company_id, params)
          parsed, options = Dataleon::Companies::DocumentUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["companies/%1$s/documents", company_id],
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
