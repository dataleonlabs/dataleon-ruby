# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Individuals#list
    class IndividualListParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!attribute end_date
      #   Filter individuals created before this date (format YYYY-MM-DD)
      #
      #   @return [Date, nil]
      optional :end_date, Date

      # @!attribute limit
      #   Number of results to return (between 1 and 100)
      #
      #   @return [Integer, nil]
      optional :limit, Integer

      # @!attribute offset
      #   Number of results to offset (must be ≥ 0)
      #
      #   @return [Integer, nil]
      optional :offset, Integer

      # @!attribute source_id
      #   Filter by source ID
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute start_date
      #   Filter individuals created after this date (format YYYY-MM-DD)
      #
      #   @return [Date, nil]
      optional :start_date, Date

      # @!attribute state
      #   Filter by individual status (must be one of the allowed values)
      #
      #   @return [Symbol, Dataleon::Models::IndividualListParams::State, nil]
      optional :state, enum: -> { Dataleon::IndividualListParams::State }

      # @!attribute status
      #   Filter by individual status (must be one of the allowed values)
      #
      #   @return [Symbol, Dataleon::Models::IndividualListParams::Status, nil]
      optional :status, enum: -> { Dataleon::IndividualListParams::Status }

      # @!attribute workspace_id
      #   Filter by workspace ID
      #
      #   @return [String, nil]
      optional :workspace_id, String

      # @!method initialize(end_date: nil, limit: nil, offset: nil, source_id: nil, start_date: nil, state: nil, status: nil, workspace_id: nil, request_options: {})
      #   @param end_date [Date] Filter individuals created before this date (format YYYY-MM-DD)
      #
      #   @param limit [Integer] Number of results to return (between 1 and 100)
      #
      #   @param offset [Integer] Number of results to offset (must be ≥ 0)
      #
      #   @param source_id [String] Filter by source ID
      #
      #   @param start_date [Date] Filter individuals created after this date (format YYYY-MM-DD)
      #
      #   @param state [Symbol, Dataleon::Models::IndividualListParams::State] Filter by individual status (must be one of the allowed values)
      #
      #   @param status [Symbol, Dataleon::Models::IndividualListParams::Status] Filter by individual status (must be one of the allowed values)
      #
      #   @param workspace_id [String] Filter by workspace ID
      #
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]

      # Filter by individual status (must be one of the allowed values)
      module State
        extend Dataleon::Internal::Type::Enum

        VOID = :VOID
        WAITING = :WAITING
        STARTED = :STARTED
        RUNNING = :RUNNING
        PROCESSED = :PROCESSED
        FAILED = :FAILED
        ABORTED = :ABORTED
        EXPIRED = :EXPIRED
        DELETED = :DELETED

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      # Filter by individual status (must be one of the allowed values)
      module Status
        extend Dataleon::Internal::Type::Enum

        REJECTED = :rejected
        NEED_REVIEW = :need_review
        APPROVED = :approved

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
