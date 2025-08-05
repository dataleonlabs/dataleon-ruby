# typed: strong

module Dataleon
  module Resources
    class Individuals
      sig { returns(Dataleon::Resources::Individuals::Documents) }
      attr_reader :documents

      # Create a new individual
      sig do
        params(
          workspace_id: String,
          person: Dataleon::IndividualCreateParams::Person::OrHash,
          source_id: String,
          technical_data:
            Dataleon::IndividualCreateParams::TechnicalData::OrHash,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(Dataleon::Individual)
      end
      def create(
        # Unique identifier of the workspace where the individual is being registered.
        workspace_id:,
        # Personal information about the individual.
        person: nil,
        # Optional identifier for tracking the source system or integration from your
        # system.
        source_id: nil,
        # Technical metadata related to the request or processing.
        technical_data: nil,
        request_options: {}
      )
      end

      # Get an individual by ID
      sig do
        params(
          individual_id: String,
          document: T::Boolean,
          scope: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(Dataleon::Individual)
      end
      def retrieve(
        # ID of the individual
        individual_id,
        # Include document information
        document: nil,
        # Scope filter (id or scope)
        scope: nil,
        request_options: {}
      )
      end

      # Update an individual by ID
      sig do
        params(
          individual_id: String,
          workspace_id: String,
          person: Dataleon::IndividualUpdateParams::Person::OrHash,
          source_id: String,
          technical_data:
            Dataleon::IndividualUpdateParams::TechnicalData::OrHash,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(Dataleon::Individual)
      end
      def update(
        # ID of the individual to update
        individual_id,
        # Unique identifier of the workspace where the individual is being registered.
        workspace_id:,
        # Personal information about the individual.
        person: nil,
        # Optional identifier for tracking the source system or integration from your
        # system.
        source_id: nil,
        # Technical metadata related to the request or processing.
        technical_data: nil,
        request_options: {}
      )
      end

      # Get all individuals
      sig do
        params(
          end_date: Date,
          limit: Integer,
          offset: Integer,
          source_id: String,
          start_date: Date,
          state: Dataleon::IndividualListParams::State::OrSymbol,
          status: Dataleon::IndividualListParams::Status::OrSymbol,
          workspace_id: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T::Array[Dataleon::Individual])
      end
      def list(
        # Filter individuals created before this date (format YYYY-MM-DD)
        end_date: nil,
        # Number of results to return (between 1 and 100)
        limit: nil,
        # Number of results to offset (must be ≥ 0)
        offset: nil,
        # Filter by source ID
        source_id: nil,
        # Filter individuals created after this date (format YYYY-MM-DD)
        start_date: nil,
        # Filter by individual status (must be one of the allowed values)
        state: nil,
        # Filter by individual status (must be one of the allowed values)
        status: nil,
        # Filter by workspace ID
        workspace_id: nil,
        request_options: {}
      )
      end

      # Delete an individual by ID
      sig do
        params(
          individual_id: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).void
      end
      def delete(
        # ID of the individual to delete
        individual_id,
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
