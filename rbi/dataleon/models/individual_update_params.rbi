# typed: strong

module Dataleon
  module Models
    class IndividualUpdateParams < Dataleon::Internal::Type::BaseModel
      extend Dataleon::Internal::Type::RequestParameters::Converter
      include Dataleon::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(Dataleon::IndividualUpdateParams, Dataleon::Internal::AnyHash)
        end

      # Unique identifier of the workspace where the individual is being registered.
      sig { returns(String) }
      attr_accessor :workspace_id

      # Personal information about the individual.
      sig { returns(T.nilable(Dataleon::IndividualUpdateParams::Person)) }
      attr_reader :person

      sig do
        params(person: Dataleon::IndividualUpdateParams::Person::OrHash).void
      end
      attr_writer :person

      # Optional identifier for tracking the source system or integration from your
      # system.
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Technical metadata related to the request or processing.
      sig do
        returns(T.nilable(Dataleon::IndividualUpdateParams::TechnicalData))
      end
      attr_reader :technical_data

      sig do
        params(
          technical_data:
            Dataleon::IndividualUpdateParams::TechnicalData::OrHash
        ).void
      end
      attr_writer :technical_data

      sig do
        params(
          workspace_id: String,
          person: Dataleon::IndividualUpdateParams::Person::OrHash,
          source_id: String,
          technical_data:
            Dataleon::IndividualUpdateParams::TechnicalData::OrHash,
          request_options: Dataleon::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
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

      sig do
        override.returns(
          {
            workspace_id: String,
            person: Dataleon::IndividualUpdateParams::Person,
            source_id: String,
            technical_data: Dataleon::IndividualUpdateParams::TechnicalData,
            request_options: Dataleon::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Person < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::IndividualUpdateParams::Person,
              Dataleon::Internal::AnyHash
            )
          end

        # Date of birth in DD/MM/YYYY format.
        sig { returns(T.nilable(String)) }
        attr_reader :birthday

        sig { params(birthday: String).void }
        attr_writer :birthday

        # Email address of the individual.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # First name of the individual.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Gender of the individual (M for male, F for female).
        sig do
          returns(
            T.nilable(
              Dataleon::IndividualUpdateParams::Person::Gender::OrSymbol
            )
          )
        end
        attr_reader :gender

        sig do
          params(
            gender: Dataleon::IndividualUpdateParams::Person::Gender::OrSymbol
          ).void
        end
        attr_writer :gender

        # Last name (family name) of the individual.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Maiden name, if applicable.
        sig { returns(T.nilable(String)) }
        attr_reader :maiden_name

        sig { params(maiden_name: String).void }
        attr_writer :maiden_name

        # Nationality of the individual (ISO 3166-1 alpha-3 country code).
        sig { returns(T.nilable(String)) }
        attr_reader :nationality

        sig { params(nationality: String).void }
        attr_writer :nationality

        # Phone number of the individual.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Personal information about the individual.
        sig do
          params(
            birthday: String,
            email: String,
            first_name: String,
            gender: Dataleon::IndividualUpdateParams::Person::Gender::OrSymbol,
            last_name: String,
            maiden_name: String,
            nationality: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Date of birth in DD/MM/YYYY format.
          birthday: nil,
          # Email address of the individual.
          email: nil,
          # First name of the individual.
          first_name: nil,
          # Gender of the individual (M for male, F for female).
          gender: nil,
          # Last name (family name) of the individual.
          last_name: nil,
          # Maiden name, if applicable.
          maiden_name: nil,
          # Nationality of the individual (ISO 3166-1 alpha-3 country code).
          nationality: nil,
          # Phone number of the individual.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              birthday: String,
              email: String,
              first_name: String,
              gender:
                Dataleon::IndividualUpdateParams::Person::Gender::OrSymbol,
              last_name: String,
              maiden_name: String,
              nationality: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end

        # Gender of the individual (M for male, F for female).
        module Gender
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dataleon::IndividualUpdateParams::Person::Gender)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          M =
            T.let(
              :M,
              Dataleon::IndividualUpdateParams::Person::Gender::TaggedSymbol
            )
          F =
            T.let(
              :F,
              Dataleon::IndividualUpdateParams::Person::Gender::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::IndividualUpdateParams::Person::Gender::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::IndividualUpdateParams::TechnicalData,
              Dataleon::Internal::AnyHash
            )
          end

        # Flag indicating whether there are active research AML (Anti-Money Laundering)
        # suspicions for the individual when you apply for a new entry or get an existing
        # one.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active_aml_suspicions

        sig { params(active_aml_suspicions: T::Boolean).void }
        attr_writer :active_aml_suspicions

        # URL to call back upon completion of processing.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # URL for receive notifications about the processing state or status.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url_notification

        sig { params(callback_url_notification: String).void }
        attr_writer :callback_url_notification

        # Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        sig { returns(T.nilable(Float)) }
        attr_reader :filtering_score_aml_suspicions

        sig { params(filtering_score_aml_suspicions: Float).void }
        attr_writer :filtering_score_aml_suspicions

        # Preferred language for communication (e.g., "eng", "fra").
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # List of steps to include in the portal workflow.
        sig do
          returns(
            T.nilable(
              T::Array[
                Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::OrSymbol
              ]
            )
          )
        end
        attr_reader :portal_steps

        sig do
          params(
            portal_steps:
              T::Array[
                Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::OrSymbol
              ]
          ).void
        end
        attr_writer :portal_steps

        # Flag indicating whether to include raw data in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :raw_data

        sig { params(raw_data: T::Boolean).void }
        attr_writer :raw_data

        # Technical metadata related to the request or processing.
        sig do
          params(
            active_aml_suspicions: T::Boolean,
            callback_url: String,
            callback_url_notification: String,
            filtering_score_aml_suspicions: Float,
            language: String,
            portal_steps:
              T::Array[
                Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::OrSymbol
              ],
            raw_data: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # Flag indicating whether there are active research AML (Anti-Money Laundering)
          # suspicions for the individual when you apply for a new entry or get an existing
          # one.
          active_aml_suspicions: nil,
          # URL to call back upon completion of processing.
          callback_url: nil,
          # URL for receive notifications about the processing state or status.
          callback_url_notification: nil,
          # Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
          filtering_score_aml_suspicions: nil,
          # Preferred language for communication (e.g., "eng", "fra").
          language: nil,
          # List of steps to include in the portal workflow.
          portal_steps: nil,
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
              portal_steps:
                T::Array[
                  Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::OrSymbol
                ],
              raw_data: T::Boolean
            }
          )
        end
        def to_hash
        end

        module PortalStep
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                Dataleon::IndividualUpdateParams::TechnicalData::PortalStep
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          IDENTITY_VERIFICATION =
            T.let(
              :identity_verification,
              Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
            )
          DOCUMENT_SIGNING =
            T.let(
              :document_signing,
              Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
            )
          PROOF_OF_ADDRESS =
            T.let(
              :proof_of_address,
              Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
            )
          SELFIE =
            T.let(
              :selfie,
              Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
            )
          FACE_MATCH =
            T.let(
              :face_match,
              Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::IndividualUpdateParams::TechnicalData::PortalStep::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
