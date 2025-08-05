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
