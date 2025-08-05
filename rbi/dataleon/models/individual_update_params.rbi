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

        # Preferred language for communication (e.g., "eng", "fra").
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # Flag indicating whether to include raw data in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :raw_data

        sig { params(raw_data: T::Boolean).void }
        attr_writer :raw_data

        # Technical metadata related to the request or processing.
        sig do
          params(
            callback_url: String,
            callback_url_notification: String,
            language: String,
            raw_data: T::Boolean
          ).returns(T.attached_class)
        end
        def self.new(
          # URL to call back upon completion of processing.
          callback_url: nil,
          # URL for receive notifications about the processing state or status.
          callback_url_notification: nil,
          # Preferred language for communication (e.g., "eng", "fra").
          language: nil,
          # Flag indicating whether to include raw data in the response.
          raw_data: nil
        )
        end

        sig do
          override.returns(
            {
              callback_url: String,
              callback_url_notification: String,
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
