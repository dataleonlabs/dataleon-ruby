# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Individuals#create
    class IndividualCreateParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      # @!attribute workspace_id
      #   Unique identifier of the workspace where the individual is being registered.
      #
      #   @return [String]
      required :workspace_id, String

      # @!attribute person
      #   Personal information about the individual.
      #
      #   @return [Dataleon::Models::IndividualCreateParams::Person, nil]
      optional :person, -> { Dataleon::IndividualCreateParams::Person }

      # @!attribute source_id
      #   Optional identifier for tracking the source system or integration from your
      #   system.
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute technical_data
      #   Technical metadata related to the request or processing.
      #
      #   @return [Dataleon::Models::IndividualCreateParams::TechnicalData, nil]
      optional :technical_data, -> { Dataleon::IndividualCreateParams::TechnicalData }

      # @!method initialize(workspace_id:, person: nil, source_id: nil, technical_data: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Dataleon::Models::IndividualCreateParams} for more details.
      #
      #   @param workspace_id [String] Unique identifier of the workspace where the individual is being registered.
      #
      #   @param person [Dataleon::Models::IndividualCreateParams::Person] Personal information about the individual.
      #
      #   @param source_id [String] Optional identifier for tracking the source system or integration from your syst
      #
      #   @param technical_data [Dataleon::Models::IndividualCreateParams::TechnicalData] Technical metadata related to the request or processing.
      #
      #   @param request_options [Dataleon::RequestOptions, Hash{Symbol=>Object}]

      class Person < Dataleon::Internal::Type::BaseModel
        # @!attribute birthday
        #   Date of birth in DD/MM/YYYY format.
        #
        #   @return [String, nil]
        optional :birthday, String

        # @!attribute email
        #   Email address of the individual.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   First name of the individual.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute gender
        #   Gender of the individual (M for male, F for female).
        #
        #   @return [Symbol, Dataleon::Models::IndividualCreateParams::Person::Gender, nil]
        optional :gender, enum: -> { Dataleon::IndividualCreateParams::Person::Gender }

        # @!attribute last_name
        #   Last name (family name) of the individual.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute maiden_name
        #   Maiden name, if applicable.
        #
        #   @return [String, nil]
        optional :maiden_name, String

        # @!attribute nationality
        #   Nationality of the individual (ISO 3166-1 alpha-3 country code).
        #
        #   @return [String, nil]
        optional :nationality, String

        # @!attribute phone_number
        #   Phone number of the individual.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(birthday: nil, email: nil, first_name: nil, gender: nil, last_name: nil, maiden_name: nil, nationality: nil, phone_number: nil)
        #   Personal information about the individual.
        #
        #   @param birthday [String] Date of birth in DD/MM/YYYY format.
        #
        #   @param email [String] Email address of the individual.
        #
        #   @param first_name [String] First name of the individual.
        #
        #   @param gender [Symbol, Dataleon::Models::IndividualCreateParams::Person::Gender] Gender of the individual (M for male, F for female).
        #
        #   @param last_name [String] Last name (family name) of the individual.
        #
        #   @param maiden_name [String] Maiden name, if applicable.
        #
        #   @param nationality [String] Nationality of the individual (ISO 3166-1 alpha-3 country code).
        #
        #   @param phone_number [String] Phone number of the individual.

        # Gender of the individual (M for male, F for female).
        #
        # @see Dataleon::Models::IndividualCreateParams::Person#gender
        module Gender
          extend Dataleon::Internal::Type::Enum

          M = :M
          F = :F

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        # @!attribute active_aml_suspicions
        #   Flag indicating whether there are active research AML (Anti-Money Laundering)
        #   suspicions for the individual when you apply for a new entry or get an existing
        #   one.
        #
        #   @return [Boolean, nil]
        optional :active_aml_suspicions, Dataleon::Internal::Type::Boolean

        # @!attribute callback_url
        #   URL to call back upon completion of processing.
        #
        #   @return [String, nil]
        optional :callback_url, String

        # @!attribute callback_url_notification
        #   URL for receive notifications about the processing state or status.
        #
        #   @return [String, nil]
        optional :callback_url_notification, String

        # @!attribute filtering_score_aml_suspicions
        #   Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @return [Float, nil]
        optional :filtering_score_aml_suspicions, Float

        # @!attribute language
        #   Preferred language for communication (e.g., "eng", "fra").
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute portal_steps
        #   List of steps to include in the portal workflow.
        #
        #   @return [Array<Symbol, Dataleon::Models::IndividualCreateParams::TechnicalData::PortalStep>, nil]
        optional :portal_steps,
                 -> { Dataleon::Internal::Type::ArrayOf[enum: Dataleon::IndividualCreateParams::TechnicalData::PortalStep] }

        # @!attribute raw_data
        #   Flag indicating whether to include raw data in the response.
        #
        #   @return [Boolean, nil]
        optional :raw_data, Dataleon::Internal::Type::Boolean

        # @!method initialize(active_aml_suspicions: nil, callback_url: nil, callback_url_notification: nil, filtering_score_aml_suspicions: nil, language: nil, portal_steps: nil, raw_data: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::IndividualCreateParams::TechnicalData} for more details.
        #
        #   Technical metadata related to the request or processing.
        #
        #   @param active_aml_suspicions [Boolean] Flag indicating whether there are active research AML (Anti-Money Laundering) su
        #
        #   @param callback_url [String] URL to call back upon completion of processing.
        #
        #   @param callback_url_notification [String] URL for receive notifications about the processing state or status.
        #
        #   @param filtering_score_aml_suspicions [Float] Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @param language [String] Preferred language for communication (e.g., "eng", "fra").
        #
        #   @param portal_steps [Array<Symbol, Dataleon::Models::IndividualCreateParams::TechnicalData::PortalStep>] List of steps to include in the portal workflow.
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
