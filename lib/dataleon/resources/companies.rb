# frozen_string_literal: true

module Dataleon
  module Resources
    class Companies
      # @return [Dataleon::Resources::Companies::Documents]
      attr_reader :documents

      # Some parameter documentations has been truncated, see
      # {Dataleon::Models::CompanyCreateParams} for more details.
      #
      # Create a new company
      #
      # @overload create(company:, workspace_id:, source_id: nil, technical_data: nil, request_options: {})
      #
      # @param company [Dataleon::Models::CompanyCreateParams::Company] Main information about the company being registered.
      #
      # @param workspace_id [String] Unique identifier of the workspace in which the company is being created.
      #
      # @param source_id [String] Optional identifier to track the origin of the request or integration from your
      #
      # @param technical_data [Dataleon::Models::CompanyCreateParams::TechnicalData] Technical metadata and callback configuration.
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dataleon::Models::CompanyRegistration]
      #
      # @see Dataleon::Models::CompanyCreateParams
      def create(params)
        parsed, options = Dataleon::CompanyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "companies",
          body: parsed,
          model: Dataleon::CompanyRegistration,
          options: options
        )
      end

      # Get a company by ID
      #
      # @overload retrieve(company_id, document: nil, scope: nil, request_options: {})
      #
      # @param company_id [String] ID of the company
      #
      # @param document [Boolean] Include document signed url
      #
      # @param scope [String] Scope filter (id or scope)
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dataleon::Models::CompanyRegistration]
      #
      # @see Dataleon::Models::CompanyRetrieveParams
      def retrieve(company_id, params = {})
        parsed, options = Dataleon::CompanyRetrieveParams.dump_request(params)
        @client.request(
          method: :get,
          path: ["companies/%1$s", company_id],
          query: parsed,
          model: Dataleon::CompanyRegistration,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {Dataleon::Models::CompanyUpdateParams} for more details.
      #
      # Update a company by ID
      #
      # @overload update(company_id, company:, workspace_id:, source_id: nil, technical_data: nil, request_options: {})
      #
      # @param company_id [String] ID of the company to update
      #
      # @param company [Dataleon::Models::CompanyUpdateParams::Company] Main information about the company being registered.
      #
      # @param workspace_id [String] Unique identifier of the workspace in which the company is being created.
      #
      # @param source_id [String] Optional identifier to track the origin of the request or integration from your
      #
      # @param technical_data [Dataleon::Models::CompanyUpdateParams::TechnicalData] Technical metadata and callback configuration.
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dataleon::Models::CompanyRegistration]
      #
      # @see Dataleon::Models::CompanyUpdateParams
      def update(company_id, params)
        parsed, options = Dataleon::CompanyUpdateParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["companies/%1$s", company_id],
          body: parsed,
          model: Dataleon::CompanyRegistration,
          options: options
        )
      end

      # Get all companies
      #
      # @overload list(end_date: nil, limit: nil, offset: nil, source_id: nil, start_date: nil, state: nil, status: nil, workspace_id: nil, request_options: {})
      #
      # @param end_date [Date] Filter companies created before this date (format YYYY-MM-DD)
      #
      # @param limit [Integer] Number of results to return (between 1 and 100)
      #
      # @param offset [Integer] Number of results to skip (must be ≥ 0)
      #
      # @param source_id [String] Filter by source ID
      #
      # @param start_date [Date] Filter companies created after this date (format YYYY-MM-DD)
      #
      # @param state [Symbol, Dataleon::Models::CompanyListParams::State] Filter by company state (must be one of the allowed values)
      #
      # @param status [Symbol, Dataleon::Models::CompanyListParams::Status] Filter by individual status (must be one of the allowed values)
      #
      # @param workspace_id [String] Filter by workspace ID
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Dataleon::Models::CompanyRegistration>]
      #
      # @see Dataleon::Models::CompanyListParams
      def list(params = {})
        parsed, options = Dataleon::CompanyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "companies",
          query: parsed,
          model: Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration],
          options: options
        )
      end

      # Delete a company by ID
      #
      # @overload delete(company_id, request_options: {})
      #
      # @param company_id [String] ID of the company to delete
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see Dataleon::Models::CompanyDeleteParams
      def delete(company_id, params = {})
        @client.request(
          method: :delete,
          path: ["companies/%1$s", company_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [Dataleon::Client]
      def initialize(client:)
        @client = client
        @documents = Dataleon::Resources::Companies::Documents.new(client: client)
      end
    end
  end
end
