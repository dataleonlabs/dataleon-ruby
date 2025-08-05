# typed: strong

module Dataleon
  module Resources
    class Companies
      sig { returns(Dataleon::Resources::Companies::Documents) }
      attr_reader :documents

      # Create a new company
      sig do
        params(
          company: Dataleon::CompanyCreateParams::Company::OrHash,
          workspace_id: String,
          source_id: String,
          technical_data: Dataleon::CompanyCreateParams::TechnicalData::OrHash,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(Dataleon::CompanyRegistration)
      end
      def create(
        # Main information about the company being registered.
        company:,
        # Unique identifier of the workspace in which the company is being created.
        workspace_id:,
        # Optional identifier to track the origin of the request or integration from your
        # system.
        source_id: nil,
        # Technical metadata and callback configuration.
        technical_data: nil,
        request_options: {}
      )
      end

      # Get all companies
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
        ).returns(T::Array[Dataleon::CompanyRegistration])
      end
      def list(
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

      # @api private
      sig { params(client: Dataleon::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
