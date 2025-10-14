# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Companies#create
    class CompanyCreateParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!attribute company
      #   Main information about the company being registered.
      #
      #   @return [Dataleon::Models::CompanyCreateParams::Company]
      required :company, -> { Dataleon::CompanyCreateParams::Company }

      # @!attribute workspace_id
      #   Unique identifier of the workspace in which the company is being created.
      #
      #   @return [String]
      required :workspace_id, String

      # @!attribute source_id
      #   Optional identifier to track the origin of the request or integration from your
      #   system.
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute technical_data
      #   Technical metadata and callback configuration.
      #
      #   @return [Dataleon::Models::CompanyCreateParams::TechnicalData, nil]
      optional :technical_data, -> { Dataleon::CompanyCreateParams::TechnicalData }

      # @!method initialize(company:, workspace_id:, source_id: nil, technical_data: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dataleon::Models::CompanyCreateParams} for more details.
      #
      #   @param company [Dataleon::Models::CompanyCreateParams::Company] Main information about the company being registered.
      #
      #   @param workspace_id [String] Unique identifier of the workspace in which the company is being created.
      #
      #   @param source_id [String] Optional identifier to track the origin of the request or integration from your
      #
      #   @param technical_data [Dataleon::Models::CompanyCreateParams::TechnicalData] Technical metadata and callback configuration.
      #
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]

      class Company < Dataleon::Internal::Type::BaseModel
        # @!attribute name
        #   Legal name of the company.
        #
        #   @return [String]
        required :name, String

        # @!attribute address
        #   Registered address of the company.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute commercial_name
        #   Commercial or trade name of the company, if different from the legal name.
        #
        #   @return [String, nil]
        optional :commercial_name, String

        # @!attribute country
        #   ISO 3166-1 alpha-2 country code of company registration (e.g., "FR" for France).
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute email
        #   Contact email address for the company.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute employer_identification_number
        #   Employer Identification Number (EIN) or equivalent.
        #
        #   @return [String, nil]
        optional :employer_identification_number, String

        # @!attribute legal_form
        #   Legal structure of the company (e.g., SARL, SAS).
        #
        #   @return [String, nil]
        optional :legal_form, String

        # @!attribute phone_number
        #   Contact phone number for the company.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute registration_date
        #   Date of official company registration in YYYY-MM-DD format.
        #
        #   @return [String, nil]
        optional :registration_date, String

        # @!attribute registration_id
        #   Official company registration identifier.
        #
        #   @return [String, nil]
        optional :registration_id, String

        # @!attribute share_capital
        #   Declared share capital of the company, usually in euros.
        #
        #   @return [String, nil]
        optional :share_capital, String

        # @!attribute status
        #   Current status of the company (e.g., active, inactive).
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute tax_identification_number
        #   National tax identifier (e.g., VAT or TIN).
        #
        #   @return [String, nil]
        optional :tax_identification_number, String

        # @!attribute type
        #   Type of company, such as "main" or "affiliated".
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute website_url
        #   Company’s official website URL.
        #
        #   @return [String, nil]
        optional :website_url, String

        # @!method initialize(name:, address: nil, commercial_name: nil, country: nil, email: nil, employer_identification_number: nil, legal_form: nil, phone_number: nil, registration_date: nil, registration_id: nil, share_capital: nil, status: nil, tax_identification_number: nil, type: nil, website_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyCreateParams::Company} for more details.
        #
        #   Main information about the company being registered.
        #
        #   @param name [String] Legal name of the company.
        #
        #   @param address [String] Registered address of the company.
        #
        #   @param commercial_name [String] Commercial or trade name of the company, if different from the legal name.
        #
        #   @param country [String] ISO 3166-1 alpha-2 country code of company registration (e.g., "FR" for France).
        #
        #   @param email [String] Contact email address for the company.
        #
        #   @param employer_identification_number [String] Employer Identification Number (EIN) or equivalent.
        #
        #   @param legal_form [String] Legal structure of the company (e.g., SARL, SAS).
        #
        #   @param phone_number [String] Contact phone number for the company.
        #
        #   @param registration_date [String] Date of official company registration in YYYY-MM-DD format.
        #
        #   @param registration_id [String] Official company registration identifier.
        #
        #   @param share_capital [String] Declared share capital of the company, usually in euros.
        #
        #   @param status [String] Current status of the company (e.g., active, inactive).
        #
        #   @param tax_identification_number [String] National tax identifier (e.g., VAT or TIN).
        #
        #   @param type [String] Type of company, such as "main" or "affiliated".
        #
        #   @param website_url [String] Company’s official website URL.
      end

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        # @!attribute active_aml_suspicions
        #   Flag indicating whether there are active research AML (Anti-Money Laundering)
        #   suspicions for the company when you apply for a new entry or get an existing
        #   one.
        #
        #   @return [Boolean, nil]
        optional :active_aml_suspicions, Dataleon::Internal::Type::Boolean

        # @!attribute callback_url
        #   URL to receive a callback once the company is processed.
        #
        #   @return [String, nil]
        optional :callback_url, String

        # @!attribute callback_url_notification
        #   URL to receive notifications about the processing state and status.
        #
        #   @return [String, nil]
        optional :callback_url_notification, String

        # @!attribute filtering_score_aml_suspicions
        #   Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @return [Float, nil]
        optional :filtering_score_aml_suspicions, Float

        # @!attribute language
        #   Preferred language for responses or notifications (e.g., "eng", "fra").
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute portal_steps
        #   List of steps to include in the portal workflow.
        #
        #   @return [Array<Symbol, Dataleon::Models::CompanyCreateParams::TechnicalData::PortalStep>, nil]
        optional :portal_steps,
                 -> { Dataleon::Internal::Type::ArrayOf[enum: Dataleon::CompanyCreateParams::TechnicalData::PortalStep] }

        # @!attribute raw_data
        #   Flag indicating whether to include raw data in the response.
        #
        #   @return [Boolean, nil]
        optional :raw_data, Dataleon::Internal::Type::Boolean

        # @!method initialize(active_aml_suspicions: nil, callback_url: nil, callback_url_notification: nil, filtering_score_aml_suspicions: nil, language: nil, portal_steps: nil, raw_data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyCreateParams::TechnicalData} for more details.
        #
        #   Technical metadata and callback configuration.
        #
        #   @param active_aml_suspicions [Boolean] Flag indicating whether there are active research AML (Anti-Money Laundering) su
        #
        #   @param callback_url [String] URL to receive a callback once the company is processed.
        #
        #   @param callback_url_notification [String] URL to receive notifications about the processing state and status.
        #
        #   @param filtering_score_aml_suspicions [Float] Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @param language [String] Preferred language for responses or notifications (e.g., "eng", "fra").
        #
        #   @param portal_steps [Array<Symbol, Dataleon::Models::CompanyCreateParams::TechnicalData::PortalStep>] List of steps to include in the portal workflow.
        #
        #   @param raw_data [Boolean] Flag indicating whether to include raw data in the response.

        module PortalStep
          extend Dataleon::Internal::Type::Enum

          IDENTITY_VERIFICATION = :identity_verification
          DOCUMENT_SIGNING = :document_signing
          PROOF_OF_ADDRESS = :proof_of_address
          SELFIE = :selfie
          FACE_MATCH = :face_match

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
