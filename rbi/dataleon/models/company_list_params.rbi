# typed: strong

module Dataleon
  module Models
    class CompanyListParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::CompanyListParams, Dataleon::Internal::AnyHash)
        end

      # Filter companies created before this date (format YYYY-MM-DD)
      sig { returns(T.nilable(Date)) }
      attr_reader :end_date

      sig { params(end_date: Date).void }
      attr_writer :end_date

      # Number of results to return (between 1 and 100)
      sig { returns(T.nilable(Integer)) }
      attr_reader :limit

      sig { params(limit: Integer).void }
      attr_writer :limit

      # Number of results to skip (must be ≥ 0)
      sig { returns(T.nilable(Integer)) }
      attr_reader :offset

      sig { params(offset: Integer).void }
      attr_writer :offset

      # Filter by source ID
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Filter companies created after this date (format YYYY-MM-DD)
      sig { returns(T.nilable(Date)) }
      attr_reader :start_date

      sig { params(start_date: Date).void }
      attr_writer :start_date

      # Filter by company state (must be one of the allowed values)
      sig { returns(T.nilable(Dataleon::CompanyListParams::State::OrSymbol)) }
      attr_reader :state

      sig { params(state: Dataleon::CompanyListParams::State::OrSymbol).void }
      attr_writer :state

      # Filter by individual status (must be one of the allowed values)
      sig { returns(T.nilable(Dataleon::CompanyListParams::Status::OrSymbol)) }
      attr_reader :status

      sig { params(status: Dataleon::CompanyListParams::Status::OrSymbol).void }
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
          state: Dataleon::CompanyListParams::State::OrSymbol,
          status: Dataleon::CompanyListParams::Status::OrSymbol,
          workspace_id: String,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # Filter companies created before this date (format YYYY-MM-DD)
        end_date: nil,
        # Number of results to return (between 1 and 100)
        limit: nil,
        # Number of results to skip (must be ≥ 0)
        offset: nil,
        # Filter by source ID
        source_id: nil,
        # Filter companies created after this date (format YYYY-MM-DD)
        start_date: nil,
        # Filter by company state (must be one of the allowed values)
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
            state: Dataleon::CompanyListParams::State::OrSymbol,
            status: Dataleon::CompanyListParams::Status::OrSymbol,
            workspace_id: String,
            request_options: Dataleon::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Filter by company state (must be one of the allowed values)
      module State
        extend Dataleon::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dataleon::CompanyListParams::State) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        VOID = T.let(:VOID, Dataleon::CompanyListParams::State::TaggedSymbol)
        WAITING =
          T.let(:WAITING, Dataleon::CompanyListParams::State::TaggedSymbol)
        STARTED =
          T.let(:STARTED, Dataleon::CompanyListParams::State::TaggedSymbol)
        RUNNING =
          T.let(:RUNNING, Dataleon::CompanyListParams::State::TaggedSymbol)
        PROCESSED =
          T.let(:PROCESSED, Dataleon::CompanyListParams::State::TaggedSymbol)
        FAILED =
          T.let(:FAILED, Dataleon::CompanyListParams::State::TaggedSymbol)
        ABORTED =
          T.let(:ABORTED, Dataleon::CompanyListParams::State::TaggedSymbol)
        EXPIRED =
          T.let(:EXPIRED, Dataleon::CompanyListParams::State::TaggedSymbol)
        DELETED =
          T.let(:DELETED, Dataleon::CompanyListParams::State::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dataleon::CompanyListParams::State::TaggedSymbol]
          )
        end
        def self.values
        end
      end

      # Filter by individual status (must be one of the allowed values)
      module Status
        extend Dataleon::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, Dataleon::CompanyListParams::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        REJECTED =
          T.let(:rejected, Dataleon::CompanyListParams::Status::TaggedSymbol)
        NEED_REVIEW =
          T.let(:need_review, Dataleon::CompanyListParams::Status::TaggedSymbol)
        APPROVED =
          T.let(:approved, Dataleon::CompanyListParams::Status::TaggedSymbol)

        sig do
          override.returns(
            T::Array[Dataleon::CompanyListParams::Status::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
