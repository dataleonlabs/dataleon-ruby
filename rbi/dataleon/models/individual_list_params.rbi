# typed: strong

module Dataleon
  module Models
    class IndividualListParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::IndividualListParams, Dataleon::Internal::AnyHash)
        end

      # Filter individuals created before this date (format YYYY-MM-DD)
      sig { returns(T.nilable(Date)) }
      attr_reader :end_date

      sig { params(end_date: Date).void }
      attr_writer :end_date

      # Number of results to return (between 1 and 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of results to offset (must be ≥ 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Filter by source ID
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Filter individuals created after this date (format YYYY-MM-DD)
      sig { returns(T.nilable(Date)) }
      attr_reader :start_date

      sig { params(start_date: Date).void }
      attr_writer :start_date

      # Filter by individual status (must be one of the allowed values)
      sig do
        returns(T.nilable(Dataleon::IndividualListParams::State::OrSymbol))
      end
      attr_reader :state

      sig do
        params(state: Dataleon::IndividualListParams::State::OrSymbol).void
      end
      attr_writer :state

      # Filter by individual status (must be one of the allowed values)
      sig do
        returns(T.nilable(Dataleon::IndividualListParams::Status::OrSymbol))
      end
      attr_reader :status

      sig do
        params(status: Dataleon::IndividualListParams::Status::OrSymbol).void
      end
      attr_writer :status

      # Filter by workspace ID
      sig { returns(T.nilable(String)) }
      attr_reader :workspace_id

      sig { params(workspace_id: String).void }
      attr_writer :workspace_id

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
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            end_date: Date,
            limit: Integer,
            offset: Integer,
            source_id: String,
            start_date: Date,
            state: Dataleon::IndividualListParams::State::OrSymbol,
            status: Dataleon::IndividualListParams::Status::OrSymbol,
            workspace_id: String,
            request_options: Dataleon::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by individual status (must be one of the allowed values)
      module State
        extend Dataleon::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dataleon::IndividualListParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOID = T.let(:VOID, Dataleon::IndividualListParams::State::TaggedSymbol)
        WAITING =
          T.let(:WAITING, Dataleon::IndividualListParams::State::TaggedSymbol)
        STARTED =
          T.let(:STARTED, Dataleon::IndividualListParams::State::TaggedSymbol)
        RUNNING =
          T.let(:RUNNING, Dataleon::IndividualListParams::State::TaggedSymbol)
        PROCESSED =
          T.let(:PROCESSED, Dataleon::IndividualListParams::State::TaggedSymbol)
        FAILED =
          T.let(:FAILED, Dataleon::IndividualListParams::State::TaggedSymbol)
        ABORTED =
          T.let(:ABORTED, Dataleon::IndividualListParams::State::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, Dataleon::IndividualListParams::State::TaggedSymbol)
        DELETED =
          T.let(:DELETED, Dataleon::IndividualListParams::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dataleon::IndividualListParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by individual status (must be one of the allowed values)
      module Status
        extend Dataleon::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dataleon::IndividualListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(:rejected, Dataleon::IndividualListParams::Status::TaggedSymbol)
        NEED_REVIEW =
          T.let(
            :need_review,
            Dataleon::IndividualListParams::Status::TaggedSymbol
          )
        APPROVED =
          T.let(:approved, Dataleon::IndividualListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dataleon::IndividualListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
