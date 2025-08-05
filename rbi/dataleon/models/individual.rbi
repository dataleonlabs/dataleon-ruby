# typed: strong

module Dataleon
  module Models
    class Individual < Dataleon::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dataleon::Individual, Dataleon::Internal::AnyHash)
        end

      # Unique identifier of the individual.
      sig { returns(T.nilable(String)) }
      attr_reader :id

      sig { params(id: String).void }
      attr_writer :id

      # List of AML (Anti-Money Laundering) suspicion entries linked to the individual.
      sig { returns(T.nilable(T::Array[Dataleon::Individual::AmlSuspicion])) }
      attr_reader :aml_suspicions

      sig do
        params(
          aml_suspicions: T::Array[Dataleon::Individual::AmlSuspicion::OrHash]
        ).void
      end
      attr_writer :aml_suspicions

      # URL to authenticate the individual, usually for document signing or onboarding.
      sig { returns(T.nilable(String)) }
      attr_reader :auth_url

      sig { params(auth_url: String).void }
      attr_writer :auth_url

      # Digital certificate associated with the individual, if any.
      sig { returns(T.nilable(Dataleon::Individual::Certificat)) }
      attr_reader :certificat

      sig { params(certificat: Dataleon::Individual::Certificat::OrHash).void }
      attr_writer :certificat

      # List of verification or validation checks applied to the individual.
      sig { returns(T.nilable(T::Array[Dataleon::Check])) }
      attr_reader :checks

      sig { params(checks: T::Array[Dataleon::Check::OrHash]).void }
      attr_writer :checks

      # Timestamp of the individual's creation in ISO 8601 format.
      sig { returns(T.nilable(Time)) }
      attr_reader :created_at

      sig { params(created_at: Time).void }
      attr_writer :created_at

      # All documents submitted or associated with the individual.
      sig do
        returns(T.nilable(T::Array[Dataleon::Individuals::GenericDocument]))
      end
      attr_reader :documents

      sig do
        params(
          documents: T::Array[Dataleon::Individuals::GenericDocument::OrHash]
        ).void
      end
      attr_writer :documents

      # Reference to the individual's identity document.
      sig { returns(T.nilable(Dataleon::Individual::IdentityCard)) }
      attr_reader :identity_card

      sig do
        params(identity_card: Dataleon::Individual::IdentityCard::OrHash).void
      end
      attr_writer :identity_card

      # Internal sequential number or reference for the individual.
      sig { returns(T.nilable(Integer)) }
      attr_reader :number

      sig { params(number: Integer).void }
      attr_writer :number

      # Personal details of the individual, such as name, date of birth, and contact
      # info.
      sig { returns(T.nilable(Dataleon::Individual::Person)) }
      attr_reader :person

      sig { params(person: Dataleon::Individual::Person::OrHash).void }
      attr_writer :person

      # Admin or internal portal URL for viewing the individual's details.
      sig { returns(T.nilable(String)) }
      attr_reader :portal_url

      sig { params(portal_url: String).void }
      attr_writer :portal_url

      # Custom key-value metadata fields associated with the individual.
      sig { returns(T.nilable(T::Array[Dataleon::Individual::Property])) }
      attr_reader :properties

      sig do
        params(
          properties: T::Array[Dataleon::Individual::Property::OrHash]
        ).void
      end
      attr_writer :properties

      # Risk assessment associated with the individual.
      sig { returns(T.nilable(Dataleon::Individual::Risk)) }
      attr_reader :risk

      sig { params(risk: Dataleon::Individual::Risk::OrHash).void }
      attr_writer :risk

      # Optional identifier indicating the source of the individual record.
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Current operational state in the workflow (e.g., WAITING, IN_PROGRESS,
      # COMPLETED).
      sig { returns(T.nilable(String)) }
      attr_reader :state

      sig { params(state: String).void }
      attr_writer :state

      # Overall processing status of the individual (e.g., rejected, need_review,
      # approved).
      sig { returns(T.nilable(String)) }
      attr_reader :status

      sig { params(status: String).void }
      attr_writer :status

      # List of tags assigned to the individual for categorization or metadata purposes.
      sig { returns(T.nilable(T::Array[Dataleon::Individual::Tag])) }
      attr_reader :tags

      sig { params(tags: T::Array[Dataleon::Individual::Tag::OrHash]).void }
      attr_writer :tags

      # Technical metadata related to the request (e.g., QR code settings, language).
      sig { returns(T.nilable(Dataleon::Individual::TechnicalData)) }
      attr_reader :technical_data

      sig do
        params(technical_data: Dataleon::Individual::TechnicalData::OrHash).void
      end
      attr_writer :technical_data

      # Public-facing webview URL for the individual’s identification process.
      sig { returns(T.nilable(String)) }
      attr_reader :webview_url

      sig { params(webview_url: String).void }
      attr_writer :webview_url

      # Identifier of the workspace to which the individual belongs.
      sig { returns(T.nilable(String)) }
      attr_reader :workspace_id

      sig { params(workspace_id: String).void }
      attr_writer :workspace_id

      # Represents a single individual record, including identification, status, and
      # associated metadata.
      sig do
        params(
          id: String,
          aml_suspicions: T::Array[Dataleon::Individual::AmlSuspicion::OrHash],
          auth_url: String,
          certificat: Dataleon::Individual::Certificat::OrHash,
          checks: T::Array[Dataleon::Check::OrHash],
          created_at: Time,
          documents: T::Array[Dataleon::Individuals::GenericDocument::OrHash],
          identity_card: Dataleon::Individual::IdentityCard::OrHash,
          number: Integer,
          person: Dataleon::Individual::Person::OrHash,
          portal_url: String,
          properties: T::Array[Dataleon::Individual::Property::OrHash],
          risk: Dataleon::Individual::Risk::OrHash,
          source_id: String,
          state: String,
          status: String,
          tags: T::Array[Dataleon::Individual::Tag::OrHash],
          technical_data: Dataleon::Individual::TechnicalData::OrHash,
          webview_url: String,
          workspace_id: String
        ).returns(T.attached_class)
      end
      def self.new(
        # Unique identifier of the individual.
        id: nil,
        # List of AML (Anti-Money Laundering) suspicion entries linked to the individual.
        aml_suspicions: nil,
        # URL to authenticate the individual, usually for document signing or onboarding.
        auth_url: nil,
        # Digital certificate associated with the individual, if any.
        certificat: nil,
        # List of verification or validation checks applied to the individual.
        checks: nil,
        # Timestamp of the individual's creation in ISO 8601 format.
        created_at: nil,
        # All documents submitted or associated with the individual.
        documents: nil,
        # Reference to the individual's identity document.
        identity_card: nil,
        # Internal sequential number or reference for the individual.
        number: nil,
        # Personal details of the individual, such as name, date of birth, and contact
        # info.
        person: nil,
        # Admin or internal portal URL for viewing the individual's details.
        portal_url: nil,
        # Custom key-value metadata fields associated with the individual.
        properties: nil,
        # Risk assessment associated with the individual.
        risk: nil,
        # Optional identifier indicating the source of the individual record.
        source_id: nil,
        # Current operational state in the workflow (e.g., WAITING, IN_PROGRESS,
        # COMPLETED).
        state: nil,
        # Overall processing status of the individual (e.g., rejected, need_review,
        # approved).
        status: nil,
        # List of tags assigned to the individual for categorization or metadata purposes.
        tags: nil,
        # Technical metadata related to the request (e.g., QR code settings, language).
        technical_data: nil,
        # Public-facing webview URL for the individual’s identification process.
        webview_url: nil,
        # Identifier of the workspace to which the individual belongs.
        workspace_id: nil
      )
      end

      sig do
        override.returns(
          {
            id: String,
            aml_suspicions: T::Array[Dataleon::Individual::AmlSuspicion],
            auth_url: String,
            certificat: Dataleon::Individual::Certificat,
            checks: T::Array[Dataleon::Check],
            created_at: Time,
            documents: T::Array[Dataleon::Individuals::GenericDocument],
            identity_card: Dataleon::Individual::IdentityCard,
            number: Integer,
            person: Dataleon::Individual::Person,
            portal_url: String,
            properties: T::Array[Dataleon::Individual::Property],
            risk: Dataleon::Individual::Risk,
            source_id: String,
            state: String,
            status: String,
            tags: T::Array[Dataleon::Individual::Tag],
            technical_data: Dataleon::Individual::TechnicalData,
            webview_url: String,
            workspace_id: String
          }
        )
      end
      def to_hash
      end

      class AmlSuspicion < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individual::AmlSuspicion,
              Dataleon::Internal::AnyHash
            )
          end

        # Human-readable description or title for the suspicious finding.
        sig { returns(T.nilable(String)) }
        attr_reader :caption

        sig { params(caption: String).void }
        attr_writer :caption

        # Indicates whether this suspicion has been manually reviewed or confirmed.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :checked

        sig { params(checked: T::Boolean).void }
        attr_writer :checked

        # Nature of the relationship between the entity and the suspicious activity (e.g.,
        # "linked", "associated").
        sig { returns(T.nilable(String)) }
        attr_reader :relation

        sig { params(relation: String).void }
        attr_writer :relation

        # Version of the evaluation schema or rule engine used.
        sig { returns(T.nilable(String)) }
        attr_reader :schema

        sig { params(schema: String).void }
        attr_writer :schema

        # Risk score between 0.0 and 1.0 indicating the severity of the suspicion.
        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        # URL identifying the source system or service providing this suspicion.
        sig { returns(T.nilable(String)) }
        attr_reader :source

        sig { params(source: String).void }
        attr_writer :source

        # Watchlist category associated with the suspicion. Possible values include
        # Watchlist types like "PEP", "Sanctions", "RiskyEntity", or "Crime".
        sig do
          returns(
            T.nilable(Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(type: Dataleon::Individual::AmlSuspicion::Type::OrSymbol).void
        end
        attr_writer :type

        # Represents a record of suspicion raised during Anti-Money Laundering (AML)
        # screening. Includes metadata such as risk score, origin, and linked watchlist
        # types.
        sig do
          params(
            caption: String,
            checked: T::Boolean,
            relation: String,
            schema: String,
            score: Float,
            source: String,
            type: Dataleon::Individual::AmlSuspicion::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # Human-readable description or title for the suspicious finding.
          caption: nil,
          # Indicates whether this suspicion has been manually reviewed or confirmed.
          checked: nil,
          # Nature of the relationship between the entity and the suspicious activity (e.g.,
          # "linked", "associated").
          relation: nil,
          # Version of the evaluation schema or rule engine used.
          schema: nil,
          # Risk score between 0.0 and 1.0 indicating the severity of the suspicion.
          score: nil,
          # URL identifying the source system or service providing this suspicion.
          source: nil,
          # Watchlist category associated with the suspicion. Possible values include
          # Watchlist types like "PEP", "Sanctions", "RiskyEntity", or "Crime".
          type: nil
        )
        end

        sig do
          override.returns(
            {
              caption: String,
              checked: T::Boolean,
              relation: String,
              schema: String,
              score: Float,
              source: String,
              type: Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        # Watchlist category associated with the suspicion. Possible values include
        # Watchlist types like "PEP", "Sanctions", "RiskyEntity", or "Crime".
        module Type
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dataleon::Individual::AmlSuspicion::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WATCHLIST =
            T.let(
              :Watchlist,
              Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol
            )
          PEP =
            T.let(:PEP, Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol)
          SANCTIONS =
            T.let(
              :Sanctions,
              Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol
            )
          RISKY_ENTITY =
            T.let(
              :RiskyEntity,
              Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol
            )
          CRIME =
            T.let(
              :Crime,
              Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[Dataleon::Individual::AmlSuspicion::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end

      class Certificat < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individual::Certificat, Dataleon::Internal::AnyHash)
          end

        # Unique identifier for the certificate.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Timestamp when the certificate was created.
        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

        # Name of the certificate file.
        sig { returns(T.nilable(String)) }
        attr_reader :filename

        sig { params(filename: String).void }
        attr_writer :filename

        # Digital certificate associated with the individual, if any.
        sig do
          params(id: String, created_at: Time, filename: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Unique identifier for the certificate.
          id: nil,
          # Timestamp when the certificate was created.
          created_at: nil,
          # Name of the certificate file.
          filename: nil
        )
        end

        sig do
          override.returns({ id: String, created_at: Time, filename: String })
        end
        def to_hash
        end
      end

      class IdentityCard < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individual::IdentityCard,
              Dataleon::Internal::AnyHash
            )
          end

        # Unique identifier for the document.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Signed URL linking to the back image of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :back_document_signed_url

        sig { params(back_document_signed_url: String).void }
        attr_writer :back_document_signed_url

        # Place of birth as indicated on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :birth_place

        sig { params(birth_place: String).void }
        attr_writer :birth_place

        # Date of birth in DD/MM/YYYY format as shown on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :birthday

        sig { params(birthday: String).void }
        attr_writer :birthday

        # Country code issuing the document (ISO 3166-1 alpha-2).
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # Expiration date of the document, in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        attr_reader :expiration_date

        sig { params(expiration_date: String).void }
        attr_writer :expiration_date

        # First name as shown on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Signed URL linking to the front image of the document.
        sig { returns(T.nilable(String)) }
        attr_reader :front_document_signed_url

        sig { params(front_document_signed_url: String).void }
        attr_writer :front_document_signed_url

        # Gender indicated on the document (e.g., "M" or "F").
        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        # Date when the document was issued, in YYYY-MM-DD format.
        sig { returns(T.nilable(String)) }
        attr_reader :issue_date

        sig { params(issue_date: String).void }
        attr_writer :issue_date

        # Last name as shown on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # First line of the Machine Readable Zone (MRZ) on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :mrz_line_1

        sig { params(mrz_line_1: String).void }
        attr_writer :mrz_line_1

        # Second line of the MRZ on the document.
        sig { returns(T.nilable(String)) }
        attr_reader :mrz_line_2

        sig { params(mrz_line_2: String).void }
        attr_writer :mrz_line_2

        # Third line of the MRZ if applicable; otherwise null.
        sig { returns(T.nilable(String)) }
        attr_accessor :mrz_line_3

        # Type of document (e.g., passport, identity card).
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Reference to the individual's identity document.
        sig do
          params(
            id: String,
            back_document_signed_url: String,
            birth_place: String,
            birthday: String,
            country: String,
            expiration_date: String,
            first_name: String,
            front_document_signed_url: String,
            gender: String,
            issue_date: String,
            last_name: String,
            mrz_line_1: String,
            mrz_line_2: String,
            mrz_line_3: T.nilable(String),
            type: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Unique identifier for the document.
          id: nil,
          # Signed URL linking to the back image of the document.
          back_document_signed_url: nil,
          # Place of birth as indicated on the document.
          birth_place: nil,
          # Date of birth in DD/MM/YYYY format as shown on the document.
          birthday: nil,
          # Country code issuing the document (ISO 3166-1 alpha-2).
          country: nil,
          # Expiration date of the document, in YYYY-MM-DD format.
          expiration_date: nil,
          # First name as shown on the document.
          first_name: nil,
          # Signed URL linking to the front image of the document.
          front_document_signed_url: nil,
          # Gender indicated on the document (e.g., "M" or "F").
          gender: nil,
          # Date when the document was issued, in YYYY-MM-DD format.
          issue_date: nil,
          # Last name as shown on the document.
          last_name: nil,
          # First line of the Machine Readable Zone (MRZ) on the document.
          mrz_line_1: nil,
          # Second line of the MRZ on the document.
          mrz_line_2: nil,
          # Third line of the MRZ if applicable; otherwise null.
          mrz_line_3: nil,
          # Type of document (e.g., passport, identity card).
          type: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              back_document_signed_url: String,
              birth_place: String,
              birthday: String,
              country: String,
              expiration_date: String,
              first_name: String,
              front_document_signed_url: String,
              gender: String,
              issue_date: String,
              last_name: String,
              mrz_line_1: String,
              mrz_line_2: String,
              mrz_line_3: T.nilable(String),
              type: String
            }
          )
        end
        def to_hash
        end
      end

      class Person < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individual::Person, Dataleon::Internal::AnyHash)
          end

        # Date of birth, formatted as DD/MM/YYYY.
        sig { returns(T.nilable(String)) }
        attr_reader :birthday

        sig { params(birthday: String).void }
        attr_writer :birthday

        # Email address of the individual.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # Signed URL linking to the person’s face image.
        sig { returns(T.nilable(String)) }
        attr_reader :face_image_signed_url

        sig { params(face_image_signed_url: String).void }
        attr_writer :face_image_signed_url

        # First (given) name of the person.
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Full name of the person, typically concatenation of first and last names.
        sig { returns(T.nilable(String)) }
        attr_reader :full_name

        sig { params(full_name: String).void }
        attr_writer :full_name

        # Gender of the individual (e.g., "M" for male, "F" for female).
        sig { returns(T.nilable(String)) }
        attr_reader :gender

        sig { params(gender: String).void }
        attr_writer :gender

        # Last (family) name of the person.
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Maiden name of the person, if applicable.
        sig { returns(T.nilable(String)) }
        attr_reader :maiden_name

        sig { params(maiden_name: String).void }
        attr_writer :maiden_name

        # Contact phone number including country code.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Personal details of the individual, such as name, date of birth, and contact
        # info.
        sig do
          params(
            birthday: String,
            email: String,
            face_image_signed_url: String,
            first_name: String,
            full_name: String,
            gender: String,
            last_name: String,
            maiden_name: String,
            phone_number: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Date of birth, formatted as DD/MM/YYYY.
          birthday: nil,
          # Email address of the individual.
          email: nil,
          # Signed URL linking to the person’s face image.
          face_image_signed_url: nil,
          # First (given) name of the person.
          first_name: nil,
          # Full name of the person, typically concatenation of first and last names.
          full_name: nil,
          # Gender of the individual (e.g., "M" for male, "F" for female).
          gender: nil,
          # Last (family) name of the person.
          last_name: nil,
          # Maiden name of the person, if applicable.
          maiden_name: nil,
          # Contact phone number including country code.
          phone_number: nil
        )
        end

        sig do
          override.returns(
            {
              birthday: String,
              email: String,
              face_image_signed_url: String,
              first_name: String,
              full_name: String,
              gender: String,
              last_name: String,
              maiden_name: String,
              phone_number: String
            }
          )
        end
        def to_hash
        end
      end

      class Property < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individual::Property, Dataleon::Internal::AnyHash)
          end

        # Name/key of the property.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Data type of the property value.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Value associated with the property name.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        # Represents a generic property key-value pair with a specified type.
        sig do
          params(name: String, type: String, value: String).returns(
            T.attached_class
          )
        end
        def self.new(
          # Name/key of the property.
          name: nil,
          # Data type of the property value.
          type: nil,
          # Value associated with the property name.
          value: nil
        )
        end

        sig { override.returns({ name: String, type: String, value: String }) }
        def to_hash
        end
      end

      class Risk < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individual::Risk, Dataleon::Internal::AnyHash)
          end

        # Risk category or code identifier.
        sig { returns(T.nilable(String)) }
        attr_reader :code

        sig { params(code: String).void }
        attr_writer :code

        # Explanation or justification for the assigned risk.
        sig { returns(T.nilable(String)) }
        attr_reader :reason

        sig { params(reason: String).void }
        attr_writer :reason

        # Numeric risk score between 0.0 and 1.0 indicating severity or confidence.
        sig { returns(T.nilable(Float)) }
        attr_reader :score

        sig { params(score: Float).void }
        attr_writer :score

        # Risk assessment associated with the individual.
        sig do
          params(code: String, reason: String, score: Float).returns(
            T.attached_class
          )
        end
        def self.new(
          # Risk category or code identifier.
          code: nil,
          # Explanation or justification for the assigned risk.
          reason: nil,
          # Numeric risk score between 0.0 and 1.0 indicating severity or confidence.
          score: nil
        )
        end

        sig { override.returns({ code: String, reason: String, score: Float }) }
        def to_hash
        end
      end

      class Tag < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individual::Tag, Dataleon::Internal::AnyHash)
          end

        # Name of the tag used to identify the metadata field.
        sig { returns(T.nilable(String)) }
        attr_reader :key

        sig { params(key: String).void }
        attr_writer :key

        # Indicates whether the tag is private (not visible to external users).
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :private

        sig { params(private: T::Boolean).void }
        attr_writer :private

        # Data type of the tag value (e.g., "string", "number", "boolean").
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Value assigned to the tag.
        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        # Represents a key-value metadata tag that can be associated with entities such as
        # individuals or companies.
        sig do
          params(
            key: String,
            private: T::Boolean,
            type: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Name of the tag used to identify the metadata field.
          key: nil,
          # Indicates whether the tag is private (not visible to external users).
          private: nil,
          # Data type of the tag value (e.g., "string", "number", "boolean").
          type: nil,
          # Value assigned to the tag.
          value: nil
        )
        end

        sig do
          override.returns(
            { key: String, private: T::Boolean, type: String, value: String }
          )
        end
        def to_hash
        end
      end

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::Individual::TechnicalData,
              Dataleon::Internal::AnyHash
            )
          end

        # Version number of the API used.
        sig { returns(T.nilable(Integer)) }
        attr_reader :api_version

        sig { params(api_version: Integer).void }
        attr_writer :api_version

        # Timestamp when the request or process was approved.
        sig { returns(T.nilable(Time)) }
        attr_reader :approved_at

        sig { params(approved_at: Time).void }
        attr_writer :approved_at

        # URL to receive callback data from the AML system.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url

        sig { params(callback_url: String).void }
        attr_writer :callback_url

        # URL to receive notification updates about the processing status.
        sig { returns(T.nilable(String)) }
        attr_reader :callback_url_notification

        sig { params(callback_url_notification: String).void }
        attr_writer :callback_url_notification

        # Flag to indicate if notifications are disabled.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :disable_notification

        sig { params(disable_notification: T::Boolean).void }
        attr_writer :disable_notification

        # Timestamp when notifications were disabled; null if never disabled.
        sig { returns(T.nilable(Time)) }
        attr_accessor :disable_notification_date

        # Export format defined by the API (e.g., "json", "xml").
        sig { returns(T.nilable(String)) }
        attr_reader :export_type

        sig { params(export_type: String).void }
        attr_writer :export_type

        # Timestamp when the process finished.
        sig { returns(T.nilable(Time)) }
        attr_reader :finished_at

        sig { params(finished_at: Time).void }
        attr_writer :finished_at

        # IP address of the our system handling the request.
        sig { returns(T.nilable(String)) }
        attr_reader :ip

        sig { params(ip: String).void }
        attr_writer :ip

        # Language preference used in the client workspace (e.g., "fra").
        sig { returns(T.nilable(String)) }
        attr_reader :language

        sig { params(language: String).void }
        attr_writer :language

        # IP address of the end client (final user) captured.
        sig { returns(T.nilable(String)) }
        attr_reader :location_ip

        sig { params(location_ip: String).void }
        attr_writer :location_ip

        # Timestamp indicating when the request or process needs review; null if none.
        sig { returns(T.nilable(Time)) }
        attr_accessor :need_review_at

        # Flag indicating if notification confirmation is required or received.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :notification_confirmation

        sig { params(notification_confirmation: T::Boolean).void }
        attr_writer :notification_confirmation

        # Indicates whether QR code is enabled ("true" or "false").
        sig { returns(T.nilable(String)) }
        attr_reader :qr_code

        sig { params(qr_code: String).void }
        attr_writer :qr_code

        # Timestamp when the request or process was rejected; null if not rejected.
        sig { returns(T.nilable(Time)) }
        attr_accessor :rejected_at

        # Timestamp when the process started.
        sig { returns(T.nilable(Time)) }
        attr_reader :started_at

        sig { params(started_at: Time).void }
        attr_writer :started_at

        # Date/time of data transfer.
        sig { returns(T.nilable(Time)) }
        attr_reader :transfer_at

        sig { params(transfer_at: Time).void }
        attr_writer :transfer_at

        # Mode of data transfer.
        sig { returns(T.nilable(String)) }
        attr_reader :transfer_mode

        sig { params(transfer_mode: String).void }
        attr_writer :transfer_mode

        # Technical metadata related to the request (e.g., QR code settings, language).
        sig do
          params(
            api_version: Integer,
            approved_at: Time,
            callback_url: String,
            callback_url_notification: String,
            disable_notification: T::Boolean,
            disable_notification_date: T.nilable(Time),
            export_type: String,
            finished_at: Time,
            ip: String,
            language: String,
            location_ip: String,
            need_review_at: T.nilable(Time),
            notification_confirmation: T::Boolean,
            qr_code: String,
            rejected_at: T.nilable(Time),
            started_at: Time,
            transfer_at: Time,
            transfer_mode: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Version number of the API used.
          api_version: nil,
          # Timestamp when the request or process was approved.
          approved_at: nil,
          # URL to receive callback data from the AML system.
          callback_url: nil,
          # URL to receive notification updates about the processing status.
          callback_url_notification: nil,
          # Flag to indicate if notifications are disabled.
          disable_notification: nil,
          # Timestamp when notifications were disabled; null if never disabled.
          disable_notification_date: nil,
          # Export format defined by the API (e.g., "json", "xml").
          export_type: nil,
          # Timestamp when the process finished.
          finished_at: nil,
          # IP address of the our system handling the request.
          ip: nil,
          # Language preference used in the client workspace (e.g., "fra").
          language: nil,
          # IP address of the end client (final user) captured.
          location_ip: nil,
          # Timestamp indicating when the request or process needs review; null if none.
          need_review_at: nil,
          # Flag indicating if notification confirmation is required or received.
          notification_confirmation: nil,
          # Indicates whether QR code is enabled ("true" or "false").
          qr_code: nil,
          # Timestamp when the request or process was rejected; null if not rejected.
          rejected_at: nil,
          # Timestamp when the process started.
          started_at: nil,
          # Date/time of data transfer.
          transfer_at: nil,
          # Mode of data transfer.
          transfer_mode: nil
        )
        end

        sig do
          override.returns(
            {
              api_version: Integer,
              approved_at: Time,
              callback_url: String,
              callback_url_notification: String,
              disable_notification: T::Boolean,
              disable_notification_date: T.nilable(Time),
              export_type: String,
              finished_at: Time,
              ip: String,
              language: String,
              location_ip: String,
              need_review_at: T.nilable(Time),
              notification_confirmation: T::Boolean,
              qr_code: String,
              rejected_at: T.nilable(Time),
              started_at: Time,
              transfer_at: Time,
              transfer_mode: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
