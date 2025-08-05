# frozen_string_literal: true

module Dataleon
  module Resources
    class Individuals
      # @return [Dataleon::Resources::Individuals::Documents]
      attr_reader :documents

      # Some parameter documentations has been truncated, see
      # {Dataleon::Models::IndividualCreateParams} for more details.
      #
      # Create a new individual
      #
      # @overload create(workspace_id:, person: nil, source_id: nil, technical_data: nil, request_options: {})
      #
      # @param workspace_id [String] Unique identifier of the workspace where the individual is being registered.
      #
      # @param person [Dataleon::Models::IndividualCreateParams::Person] Personal information about the individual.
      #
      # @param source_id [String] Optional identifier for tracking the source system or integration from your syst
      #
      # @param technical_data [Dataleon::Models::IndividualCreateParams::TechnicalData] Technical metadata related to the request or processing.
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Dataleon::Models::Individual]
      #
      # @see Dataleon::Models::IndividualCreateParams
      def create(params)
        parsed, options = Dataleon::IndividualCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "individuals",
          body: parsed,
          model: Dataleon::Individual,
          options: options
        )
      end

      # Get all individuals
      #
      # @overload list(end_date: nil, limit: nil, offset: nil, source_id: nil, start_date: nil, state: nil, status: nil, workspace_id: nil, request_options: {})
      #
      # @param end_date [Date] Filter individuals created before this date (format YYYY-MM-DD)
      #
      # @param limit [Integer] Number of results to return (between 1 and 100)
      #
      # @param offset [Integer] Number of results to offset (must be ≥ 0)
      #
      # @param source_id [String] Filter by source ID
      #
      # @param start_date [Date] Filter individuals created after this date (format YYYY-MM-DD)
      #
      # @param state [Symbol, Dataleon::Models::IndividualListParams::State] Filter by individual status (must be one of the allowed values)
      #
      # @param status [Symbol, Dataleon::Models::IndividualListParams::Status] Filter by individual status (must be one of the allowed values)
      #
      # @param workspace_id [String] Filter by workspace ID
      #
      # @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<Dataleon::Models::Individual>]
      #
      # @see Dataleon::Models::IndividualListParams
      def list(params = {})
        parsed, options = Dataleon::IndividualListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "individuals",
          query: parsed,
          model: Dataleon::Internal::Type::ArrayOf[Dataleon::Individual],
          options: options
        )
      end

      # @api private
      #
      # @param client [Dataleon::Client]
      def initialize(client:)
        @client = client
        @documents = Dataleon::Resources::Individuals::Documents.new(client: client)
      end
    end
  end
end
