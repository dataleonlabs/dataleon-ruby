# typed: strong

module Dataleon
  module Models
    class CompanyUpdateParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::CompanyUpdateParams, Dataleon::Internal::AnyHash)
        end

      # Main information about the company being registered.
      sig { returns(Dataleon::CompanyUpdateParams::Company) }
      attr_reader :company

      sig do
        params(company: Dataleon::CompanyUpdateParams::Company::OrHash).void
      end
      attr_writer :company

      # Unique identifier of the workspace in which the company is being created.
      sig { returns(String) }
      attr_accessor :workspace_id

      # Optional identifier to track the origin of the request or integration from your
      # system.
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Technical metadata and callback configuration.
      sig { returns(T.nilable(Dataleon::CompanyUpdateParams::TechnicalData)) }
      attr_reader :technical_data

      sig do
        params(
          technical_data: Dataleon::CompanyUpdateParams::TechnicalData::OrHash
        ).void
      end
      attr_writer :technical_data

      sig do
        params(
          company: Dataleon::CompanyUpdateParams::Company::OrHash,
          workspace_id: String,
          source_id: String,
          technical_data: Dataleon::CompanyUpdateParams::TechnicalData::OrHash,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            company: Dataleon::CompanyUpdateParams::Company,
            workspace_id: String,
            source_id: String,
            technical_data: Dataleon::CompanyUpdateParams::TechnicalData,
            request_options: Dataleon::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Company < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyUpdateParams::Company,
              Dataleon::Internal::AnyHash
            )
          end

        # Legal name of the company.
        sig { returns(String) }
        attr_accessor :name

        # Registered address of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # Commercial or trade name of the company, if different from the legal name.
        sig { returns(T.nilable(String)) }
        attr_reader :commercial_name

        sig { params(commercial_name: String).void }
        attr_writer :commercial_name

        # ISO 3166-1 alpha-2 country code of company registration (e.g., "FR" for France).
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Contact email address for the company.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Employer Identification Number (EIN) or equivalent.
        sig { returns(T.nilable(String)) }
        attr_reader :employer_identification_number

        sig { params(employer_identification_number: String).void }
        attr_writer :employer_identification_number

        # Legal structure of the company (e.g., SARL, SAS).
        sig { returns(T.nilable(String)) }
        attr_reader :legal_form

        sig { params(legal_form: String).void }
        attr_writer :legal_form

        # Contact phone number for the company.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Date of official company registration in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        attr_reader :registration_date

        sig { params(registration_date: String).void }
        attr_writer :registration_date

        # Official company registration identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :registration_id

        sig { params(registration_id: String).void }
        attr_writer :registration_id

        # Declared share capital of the company, usually in euros.
        sig { returns(T.nilable(String)) }
        attr_reader :share_capital

        sig { params(share_capital: String).void }
        attr_writer :share_capital

        # Current status of the company (e.g., active, inactive).
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # National tax identifier (e.g., VAT or TIN).
        sig { returns(T.nilable(String)) }
        attr_reader :tax_identification_number

        sig { params(tax_identification_number: String).void }
        attr_writer :tax_identification_number

        # Type of company, such as "main" or "affiliated".
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Company’s official website URL.
        sig { returns(T.nilable(String)) }
        attr_reader :website_url

        sig { params(website_url: String).void }
        attr_writer :website_url

        # Main information about the company being registered.
        sig do
          params(
            name: String,
            address: String,
            commercial_name: String,
            country: String,
            email: String,
            employer_identification_number: String,
            legal_form: String,
            phone_number: String,
            registration_date: String,
            registration_id: String,
            share_capital: String,
            status: String,
            tax_identification_number: String,
            type: String,
            website_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Legal name of the company.
          name:,
          # Registered address of the company.
          address: nil,
          # Commercial or trade name of the company, if different from the legal name.
          commercial_name: nil,
          # ISO 3166-1 alpha-2 country code of company registration (e.g., "FR" for France).
          country: nil,
          # Contact email address for the company.
          email: nil,
          # Employer Identification Number (EIN) or equivalent.
          employer_identification_number: nil,
          # Legal structure of the company (e.g., SARL, SAS).
          legal_form: nil,
          # Contact phone number for the company.
          phone_number: nil,
          # Date of official company registration in YYYY-MM-DD format.
          registration_date: nil,
          # Official company registration identifier.
          registration_id: nil,
          # Declared share capital of the company, usually in euros.
          share_capital: nil,
          # Current status of the company (e.g., active, inactive).
          status: nil,
          # National tax identifier (e.g., VAT or TIN).
          tax_identification_number: nil,
          # Type of company, such as "main" or "affiliated".
          type: nil,
          # Company’s official website URL.
          website_url: nil
        )
        end

        sig do
          override.returns(
            {
              name: String,
              address: String,
              commercial_name: String,
              country: String,
              email: String,
              employer_identification_number: String,
              legal_form: String,
              phone_number: String,
              registration_date: String,
              registration_id: String,
              share_capital: String,
              status: String,
              tax_identification_number: String,
              type: String,
              website_url: String
            }
          )
        end
        def to_hash
        end
      end

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyUpdateParams::TechnicalData,
              Dataleon::Internal::AnyHash
            )
          end

        # Flag indicating whether there are active research AML (Anti-Money Laundering)
        # suspicions for the company when you apply for a new entry or get an existing
        # one.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active_aml_suspicions

        sig { params(active_aml_suspicions: T::Boolean).void }
        attr_writer :active_aml_suspicions

        # URL to receive a callback once the company is processed.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # URL to receive notifications about the processing state and status.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url_notification

        sig { params(callback_url_notification: String).void }
        attr_writer :callback_url_notification

        # Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        sig { returns(T.nilable(Float)) }
        attr_reader :filtering_score_aml_suspicions

        sig { params(filtering_score_aml_suspicions: Float).void }
        attr_writer :filtering_score_aml_suspicions

        # Preferred language for responses or notifications (e.g., "eng", "fra").
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Flag indicating whether to include raw data in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :raw_data

        sig { params(raw_data: T::Boolean).void }
        attr_writer :raw_data

        # Technical metadata and callback configuration.
        sig do
          params(
            active_aml_suspicions: T::Boolean,
            callback_url: String,
            callback_url_notification: String,
            filtering_score_aml_suspicions: Float,
            language: String,
            raw_data: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Flag indicating whether there are active research AML (Anti-Money Laundering)
          # suspicions for the company when you apply for a new entry or get an existing
          # one.
          active_aml_suspicions: nil,
          # URL to receive a callback once the company is processed.
          callback_url: nil,
          # URL to receive notifications about the processing state and status.
          callback_url_notification: nil,
          # Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
          filtering_score_aml_suspicions: nil,
          # Preferred language for responses or notifications (e.g., "eng", "fra").
          language: nil,
          # Flag indicating whether to include raw data in the response.
          raw_data: nil
        )
        end

        sig do
          override.returns(
            {
              active_aml_suspicions: T::Boolean,
              callback_url: String,
              callback_url_notification: String,
              filtering_score_aml_suspicions: Float,
              language: String,
              raw_data: T::Boolean
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
