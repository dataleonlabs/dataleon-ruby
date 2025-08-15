# typed: strong

module Dataleon
  module Models
    class CompanyRegistration < Dataleon::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(Dataleon::CompanyRegistration, Dataleon::Internal::AnyHash)
        end

      # List of AML (Anti-Money Laundering) suspicion entries linked to the company,
      # including their details.
      sig do
        returns(
          T.nilable(T::Array[Dataleon::CompanyRegistration::AmlSuspicion])
        )
      end
      attr_reader :aml_suspicions

      sig do
        params(
          aml_suspicions:
            T::Array[Dataleon::CompanyRegistration::AmlSuspicion::OrHash]
        ).void
      end
      attr_writer :aml_suspicions

      # Digital certificate associated with the company, if any, including its creation
      # timestamp and filename.
      sig { returns(T.nilable(Dataleon::CompanyRegistration::Certificat)) }
      attr_reader :certificat

      sig do
        params(
          certificat: Dataleon::CompanyRegistration::Certificat::OrHash
        ).void
      end
      attr_writer :certificat

      # List of verification or validation checks applied to the company, including
      # their results and messages.
      sig { returns(T.nilable(T::Array[Dataleon::Check])) }
      attr_reader :checks

      sig { params(checks: T::Array[Dataleon::Check::OrHash]).void }
      attr_writer :checks

      # Main information about the company being registered, including legal name,
      # registration ID, and address.
      sig { returns(T.nilable(Dataleon::CompanyRegistration::Company)) }
      attr_reader :company

      sig do
        params(company: Dataleon::CompanyRegistration::Company::OrHash).void
      end
      attr_writer :company

      # All documents submitted or associated with the company, including their metadata
      # and processing status.
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

      # List of members or actors associated with the company, including personal and
      # ownership information.
      sig do
        returns(T.nilable(T::Array[Dataleon::CompanyRegistration::Member]))
      end
      attr_reader :members

      sig do
        params(
          members: T::Array[Dataleon::CompanyRegistration::Member::OrHash]
        ).void
      end
      attr_writer :members

      # Admin or internal portal URL for viewing the company's details, typically used
      # by internal users.
      sig { returns(T.nilable(String)) }
      attr_reader :portal_url

      sig { params(portal_url: String).void }
      attr_writer :portal_url

      # Custom key-value metadata fields associated with the company, allowing for
      # flexible data storage.
      sig do
        returns(T.nilable(T::Array[Dataleon::CompanyRegistration::Property]))
      end
      attr_reader :properties

      sig do
        params(
          properties: T::Array[Dataleon::CompanyRegistration::Property::OrHash]
        ).void
      end
      attr_writer :properties

      # Risk assessment associated with the company, including a risk code, reason, and
      # confidence score.
      sig { returns(T.nilable(Dataleon::CompanyRegistration::Risk)) }
      attr_reader :risk

      sig { params(risk: Dataleon::CompanyRegistration::Risk::OrHash).void }
      attr_writer :risk

      # Optional identifier indicating the source of the company record, useful for
      # tracking or integration purposes.
      sig { returns(T.nilable(String)) }
      attr_reader :source_id

      sig { params(source_id: String).void }
      attr_writer :source_id

      # Technical metadata related to the request, such as IP address, QR code settings,
      # and callback URLs.
      sig { returns(T.nilable(Dataleon::CompanyRegistration::TechnicalData)) }
      attr_reader :technical_data

      sig do
        params(
          technical_data: Dataleon::CompanyRegistration::TechnicalData::OrHash
        ).void
      end
      attr_writer :technical_data

      # Public-facing webview URL for the company’s identification process, allowing
      # external access to the company data.
      sig { returns(T.nilable(String)) }
      attr_reader :webview_url

      sig { params(webview_url: String).void }
      attr_writer :webview_url

      sig do
        params(
          aml_suspicions:
            T::Array[Dataleon::CompanyRegistration::AmlSuspicion::OrHash],
          certificat: Dataleon::CompanyRegistration::Certificat::OrHash,
          checks: T::Array[Dataleon::Check::OrHash],
          company: Dataleon::CompanyRegistration::Company::OrHash,
          documents: T::Array[Dataleon::Individuals::GenericDocument::OrHash],
          members: T::Array[Dataleon::CompanyRegistration::Member::OrHash],
          portal_url: String,
          properties: T::Array[Dataleon::CompanyRegistration::Property::OrHash],
          risk: Dataleon::CompanyRegistration::Risk::OrHash,
          source_id: String,
          technical_data: Dataleon::CompanyRegistration::TechnicalData::OrHash,
          webview_url: String
        ).returns(T.attached_class)
      end
      def self.new(
        # List of AML (Anti-Money Laundering) suspicion entries linked to the company,
        # including their details.
        aml_suspicions: nil,
        # Digital certificate associated with the company, if any, including its creation
        # timestamp and filename.
        certificat: nil,
        # List of verification or validation checks applied to the company, including
        # their results and messages.
        checks: nil,
        # Main information about the company being registered, including legal name,
        # registration ID, and address.
        company: nil,
        # All documents submitted or associated with the company, including their metadata
        # and processing status.
        documents: nil,
        # List of members or actors associated with the company, including personal and
        # ownership information.
        members: nil,
        # Admin or internal portal URL for viewing the company's details, typically used
        # by internal users.
        portal_url: nil,
        # Custom key-value metadata fields associated with the company, allowing for
        # flexible data storage.
        properties: nil,
        # Risk assessment associated with the company, including a risk code, reason, and
        # confidence score.
        risk: nil,
        # Optional identifier indicating the source of the company record, useful for
        # tracking or integration purposes.
        source_id: nil,
        # Technical metadata related to the request, such as IP address, QR code settings,
        # and callback URLs.
        technical_data: nil,
        # Public-facing webview URL for the company’s identification process, allowing
        # external access to the company data.
        webview_url: nil
      )
      end

      sig do
        override.returns(
          {
            aml_suspicions:
              T::Array[Dataleon::CompanyRegistration::AmlSuspicion],
            certificat: Dataleon::CompanyRegistration::Certificat,
            checks: T::Array[Dataleon::Check],
            company: Dataleon::CompanyRegistration::Company,
            documents: T::Array[Dataleon::Individuals::GenericDocument],
            members: T::Array[Dataleon::CompanyRegistration::Member],
            portal_url: String,
            properties: T::Array[Dataleon::CompanyRegistration::Property],
            risk: Dataleon::CompanyRegistration::Risk,
            source_id: String,
            technical_data: Dataleon::CompanyRegistration::TechnicalData,
            webview_url: String
          }
        )
      end
      def to_hash
      end

      class AmlSuspicion < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::AmlSuspicion,
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
            T.nilable(
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )
          )
        end
        attr_reader :type

        sig do
          params(
            type: Dataleon::CompanyRegistration::AmlSuspicion::Type::OrSymbol
          ).void
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
            type: Dataleon::CompanyRegistration::AmlSuspicion::Type::OrSymbol
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
              type:
                Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
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
              T.all(Symbol, Dataleon::CompanyRegistration::AmlSuspicion::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WATCHLIST =
            T.let(
              :Watchlist,
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )
          PEP =
            T.let(
              :PEP,
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )
          SANCTIONS =
            T.let(
              :Sanctions,
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )
          RISKY_ENTITY =
            T.let(
              :RiskyEntity,
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )
          CRIME =
            T.let(
              :Crime,
              Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::CompanyRegistration::AmlSuspicion::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Certificat < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::Certificat,
              Dataleon::Internal::AnyHash
            )
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

        # Digital certificate associated with the company, if any, including its creation
        # timestamp and filename.
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

      class Company < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::Company,
              Dataleon::Internal::AnyHash
            )
          end

        # Full registered address of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # Trade or commercial name of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :commercial_name

        sig { params(commercial_name: String).void }
        attr_writer :commercial_name

        # Contact information for the company, including email, phone number, and address.
        sig do
          returns(T.nilable(Dataleon::CompanyRegistration::Company::Contact))
        end
        attr_reader :contact

        sig do
          params(
            contact: Dataleon::CompanyRegistration::Company::Contact::OrHash
          ).void
        end
        attr_writer :contact

        # Country code where the company is registered.
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

        # Legal form or structure of the company (e.g., LLC, SARL).
        sig { returns(T.nilable(String)) }
        attr_reader :legal_form

        sig { params(legal_form: String).void }
        attr_writer :legal_form

        # Legal registered name of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Contact phone number for the company, including country code.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Date when the company was officially registered.
        sig { returns(T.nilable(Date)) }
        attr_reader :registration_date

        sig { params(registration_date: Date).void }
        attr_writer :registration_date

        # Official company registration number or ID.
        sig { returns(T.nilable(String)) }
        attr_reader :registration_id

        sig { params(registration_id: String).void }
        attr_writer :registration_id

        # Total share capital of the company, including currency.
        sig { returns(T.nilable(String)) }
        attr_reader :share_capital

        sig { params(share_capital: String).void }
        attr_writer :share_capital

        # Current status of the company (e.g., active, inactive).
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Tax identification number for the company.
        sig { returns(T.nilable(String)) }
        attr_reader :tax_identification_number

        sig { params(tax_identification_number: String).void }
        attr_writer :tax_identification_number

        # Type of company within the workspace, e.g., main or affiliated.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # Official website URL of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :website_url

        sig { params(website_url: String).void }
        attr_writer :website_url

        # Main information about the company being registered, including legal name,
        # registration ID, and address.
        sig do
          params(
            address: String,
            commercial_name: String,
            contact: Dataleon::CompanyRegistration::Company::Contact::OrHash,
            country: String,
            email: String,
            employer_identification_number: String,
            legal_form: String,
            name: String,
            phone_number: String,
            registration_date: Date,
            registration_id: String,
            share_capital: String,
            status: String,
            tax_identification_number: String,
            type: String,
            website_url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Full registered address of the company.
          address: nil,
          # Trade or commercial name of the company.
          commercial_name: nil,
          # Contact information for the company, including email, phone number, and address.
          contact: nil,
          # Country code where the company is registered.
          country: nil,
          # Contact email address for the company.
          email: nil,
          # Employer Identification Number (EIN) or equivalent.
          employer_identification_number: nil,
          # Legal form or structure of the company (e.g., LLC, SARL).
          legal_form: nil,
          # Legal registered name of the company.
          name: nil,
          # Contact phone number for the company, including country code.
          phone_number: nil,
          # Date when the company was officially registered.
          registration_date: nil,
          # Official company registration number or ID.
          registration_id: nil,
          # Total share capital of the company, including currency.
          share_capital: nil,
          # Current status of the company (e.g., active, inactive).
          status: nil,
          # Tax identification number for the company.
          tax_identification_number: nil,
          # Type of company within the workspace, e.g., main or affiliated.
          type: nil,
          # Official website URL of the company.
          website_url: nil
        )
        end

        sig do
          override.returns(
            {
              address: String,
              commercial_name: String,
              contact: Dataleon::CompanyRegistration::Company::Contact,
              country: String,
              email: String,
              employer_identification_number: String,
              legal_form: String,
              name: String,
              phone_number: String,
              registration_date: Date,
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

        class Contact < Dataleon::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dataleon::CompanyRegistration::Company::Contact,
                Dataleon::Internal::AnyHash
              )
            end

          # Department of the contact person.
          sig { returns(T.nilable(String)) }
          attr_reader :department

          sig { params(department: String).void }
          attr_writer :department

          # Email address of the contact person.
          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          # First name of the contact person.
          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          # Last name of the contact person.
          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          # Phone number of the contact person.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Contact information for the company, including email, phone number, and address.
          sig do
            params(
              department: String,
              email: String,
              first_name: String,
              last_name: String,
              phone_number: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Department of the contact person.
            department: nil,
            # Email address of the contact person.
            email: nil,
            # First name of the contact person.
            first_name: nil,
            # Last name of the contact person.
            last_name: nil,
            # Phone number of the contact person.
            phone_number: nil
          )
          end

          sig do
            override.returns(
              {
                department: String,
                email: String,
                first_name: String,
                last_name: String,
                phone_number: String
              }
            )
          end
          def to_hash
          end
        end
      end

      class Member < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::Member,
              Dataleon::Internal::AnyHash
            )
          end

        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Address of the member, which may include street, city, postal code, and country.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # Birthday (available only if type = person)
        sig { returns(T.nilable(Time)) }
        attr_reader :birthday

        sig { params(birthday: Time).void }
        attr_writer :birthday

        # Birthplace (available only if type = person)
        sig { returns(T.nilable(String)) }
        attr_reader :birthplace

        sig { params(birthplace: String).void }
        attr_writer :birthplace

        # ISO 3166-1 alpha-2 country code of the member's address (e.g., "FR" for France).
        sig { returns(T.nilable(String)) }
        attr_reader :country

        sig { params(country: String).void }
        attr_writer :country

        # List of documents associated with the member, including their metadata and
        # processing status.
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

        # Email address of the member, which may be used for communication or verification
        # purposes.
        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        # First name (available only if type = person)
        sig { returns(T.nilable(String)) }
        attr_reader :first_name

        sig { params(first_name: String).void }
        attr_writer :first_name

        # Indicates whether the member is a beneficial owner of the company, meaning they
        # have significant control or ownership.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_beneficial_owner

        sig { params(is_beneficial_owner: T::Boolean).void }
        attr_writer :is_beneficial_owner

        # Indicates whether the member is a delegator, meaning they have authority to act
        # on behalf of the company.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_delegator

        sig { params(is_delegator: T::Boolean).void }
        attr_writer :is_delegator

        # Last name (available only if type = person)
        sig { returns(T.nilable(String)) }
        attr_reader :last_name

        sig { params(last_name: String).void }
        attr_writer :last_name

        # Indicates whether liveness verification was performed for the member, typically
        # in the context of identity checks.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :liveness_verification

        sig { params(liveness_verification: T::Boolean).void }
        attr_writer :liveness_verification

        # Company name (available only if type = company)
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Percentage of ownership the member has in the company, expressed as an integer
        # between 0 and 100.
        sig { returns(T.nilable(Integer)) }
        attr_reader :ownership_percentage

        sig { params(ownership_percentage: Integer).void }
        attr_writer :ownership_percentage

        # Contact phone number of the member, including country code and area code.
        sig { returns(T.nilable(String)) }
        attr_reader :phone_number

        sig { params(phone_number: String).void }
        attr_writer :phone_number

        # Postal code of the member's address, typically a numeric or alphanumeric code.
        sig { returns(T.nilable(String)) }
        attr_reader :postal_code

        sig { params(postal_code: String).void }
        attr_writer :postal_code

        # Official registration identifier of the member, such as a national ID or company
        # registration number.
        sig { returns(T.nilable(String)) }
        attr_reader :registration_id

        sig { params(registration_id: String).void }
        attr_writer :registration_id

        # Type of relationship the member has with the company, such as "shareholder",
        # "director", or "beneficial_owner".
        sig { returns(T.nilable(String)) }
        attr_reader :relation

        sig { params(relation: String).void }
        attr_writer :relation

        # Role of the member within the company, such as "legal_representative",
        # "director", or "manager".
        sig { returns(T.nilable(String)) }
        attr_reader :roles

        sig { params(roles: String).void }
        attr_writer :roles

        # Source of the data (e.g., government, user, company)
        sig do
          returns(
            T.nilable(
              Dataleon::CompanyRegistration::Member::Source::TaggedSymbol
            )
          )
        end
        attr_reader :source

        sig do
          params(
            source: Dataleon::CompanyRegistration::Member::Source::OrSymbol
          ).void
        end
        attr_writer :source

        # Current state of the member in the workflow, such as "WAITING", "STARTED",
        # "RUNNING", or "PROCESSED".
        sig { returns(T.nilable(String)) }
        attr_reader :state

        sig { params(state: String).void }
        attr_writer :state

        # Status of the member in the system, indicating whether they are approved,
        # pending, or rejected. Possible values include "approved", "need_review",
        # "rejected".
        sig { returns(T.nilable(String)) }
        attr_reader :status

        sig { params(status: String).void }
        attr_writer :status

        # Member type (person or company)
        sig do
          returns(
            T.nilable(Dataleon::CompanyRegistration::Member::Type::TaggedSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: Dataleon::CompanyRegistration::Member::Type::OrSymbol
          ).void
        end
        attr_writer :type

        # Identifier of the workspace to which the member belongs, used for organizational
        # purposes.
        sig { returns(T.nilable(String)) }
        attr_reader :workspace_id

        sig { params(workspace_id: String).void }
        attr_writer :workspace_id

        # Represents a member or actor of a company, including personal and ownership
        # information.
        sig do
          params(
            id: String,
            address: String,
            birthday: Time,
            birthplace: String,
            country: String,
            documents: T::Array[Dataleon::Individuals::GenericDocument::OrHash],
            email: String,
            first_name: String,
            is_beneficial_owner: T::Boolean,
            is_delegator: T::Boolean,
            last_name: String,
            liveness_verification: T::Boolean,
            name: String,
            ownership_percentage: Integer,
            phone_number: String,
            postal_code: String,
            registration_id: String,
            relation: String,
            roles: String,
            source: Dataleon::CompanyRegistration::Member::Source::OrSymbol,
            state: String,
            status: String,
            type: Dataleon::CompanyRegistration::Member::Type::OrSymbol,
            workspace_id: String
          ).returns(T.attached_class)
        end
        def self.new(
          id: nil,
          # Address of the member, which may include street, city, postal code, and country.
          address: nil,
          # Birthday (available only if type = person)
          birthday: nil,
          # Birthplace (available only if type = person)
          birthplace: nil,
          # ISO 3166-1 alpha-2 country code of the member's address (e.g., "FR" for France).
          country: nil,
          # List of documents associated with the member, including their metadata and
          # processing status.
          documents: nil,
          # Email address of the member, which may be used for communication or verification
          # purposes.
          email: nil,
          # First name (available only if type = person)
          first_name: nil,
          # Indicates whether the member is a beneficial owner of the company, meaning they
          # have significant control or ownership.
          is_beneficial_owner: nil,
          # Indicates whether the member is a delegator, meaning they have authority to act
          # on behalf of the company.
          is_delegator: nil,
          # Last name (available only if type = person)
          last_name: nil,
          # Indicates whether liveness verification was performed for the member, typically
          # in the context of identity checks.
          liveness_verification: nil,
          # Company name (available only if type = company)
          name: nil,
          # Percentage of ownership the member has in the company, expressed as an integer
          # between 0 and 100.
          ownership_percentage: nil,
          # Contact phone number of the member, including country code and area code.
          phone_number: nil,
          # Postal code of the member's address, typically a numeric or alphanumeric code.
          postal_code: nil,
          # Official registration identifier of the member, such as a national ID or company
          # registration number.
          registration_id: nil,
          # Type of relationship the member has with the company, such as "shareholder",
          # "director", or "beneficial_owner".
          relation: nil,
          # Role of the member within the company, such as "legal_representative",
          # "director", or "manager".
          roles: nil,
          # Source of the data (e.g., government, user, company)
          source: nil,
          # Current state of the member in the workflow, such as "WAITING", "STARTED",
          # "RUNNING", or "PROCESSED".
          state: nil,
          # Status of the member in the system, indicating whether they are approved,
          # pending, or rejected. Possible values include "approved", "need_review",
          # "rejected".
          status: nil,
          # Member type (person or company)
          type: nil,
          # Identifier of the workspace to which the member belongs, used for organizational
          # purposes.
          workspace_id: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              address: String,
              birthday: Time,
              birthplace: String,
              country: String,
              documents: T::Array[Dataleon::Individuals::GenericDocument],
              email: String,
              first_name: String,
              is_beneficial_owner: T::Boolean,
              is_delegator: T::Boolean,
              last_name: String,
              liveness_verification: T::Boolean,
              name: String,
              ownership_percentage: Integer,
              phone_number: String,
              postal_code: String,
              registration_id: String,
              relation: String,
              roles: String,
              source:
                Dataleon::CompanyRegistration::Member::Source::TaggedSymbol,
              state: String,
              status: String,
              type: Dataleon::CompanyRegistration::Member::Type::TaggedSymbol,
              workspace_id: String
            }
          )
        end
        def to_hash
        end

        # Source of the data (e.g., government, user, company)
        module Source
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dataleon::CompanyRegistration::Member::Source)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          GOUVE =
            T.let(
              :gouve,
              Dataleon::CompanyRegistration::Member::Source::TaggedSymbol
            )
          USER =
            T.let(
              :user,
              Dataleon::CompanyRegistration::Member::Source::TaggedSymbol
            )
          COMPANY =
            T.let(
              :company,
              Dataleon::CompanyRegistration::Member::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::CompanyRegistration::Member::Source::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # Member type (person or company)
        module Type
          extend Dataleon::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, Dataleon::CompanyRegistration::Member::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PERSON =
            T.let(
              :person,
              Dataleon::CompanyRegistration::Member::Type::TaggedSymbol
            )
          COMPANY =
            T.let(
              :company,
              Dataleon::CompanyRegistration::Member::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                Dataleon::CompanyRegistration::Member::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end

      class Property < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::Property,
              Dataleon::Internal::AnyHash
            )
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
            T.any(
              Dataleon::CompanyRegistration::Risk,
              Dataleon::Internal::AnyHash
            )
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

        # Risk assessment associated with the company, including a risk code, reason, and
        # confidence score.
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

      class TechnicalData < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              Dataleon::CompanyRegistration::TechnicalData,
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

        # Flag indicating whether to include raw data in the response.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :raw_data

        sig { params(raw_data: T::Boolean).void }
        attr_writer :raw_data

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

        # Technical metadata related to the request, such as IP address, QR code settings,
        # and callback URLs.
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
            raw_data: T::Boolean,
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
          # Flag indicating whether to include raw data in the response.
          raw_data: nil,
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
              raw_data: T::Boolean,
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
