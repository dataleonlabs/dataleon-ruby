# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Companies#create
    class CompanyRegistration < Dataleon::Internal::Type::BaseModel
      # @!attribute aml_suspicions
      #   List of AML (Anti-Money Laundering) suspicion entries linked to the company,
      #   including their details.
      #
      #   @return [Array<Dataleon::Models::CompanyRegistration::AmlSuspicion>, nil]
      optional :aml_suspicions,
               -> { Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::AmlSuspicion] }

      # @!attribute certificat
      #   Digital certificate associated with the company, if any, including its creation
      #   timestamp and filename.
      #
      #   @return [Dataleon::Models::CompanyRegistration::Certificat, nil]
      optional :certificat, -> { Dataleon::CompanyRegistration::Certificat }

      # @!attribute checks
      #   List of verification or validation checks applied to the company, including
      #   their results and messages.
      #
      #   @return [Array<Dataleon::Models::Check>, nil]
      optional :checks, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Check] }

      # @!attribute company
      #   Main information about the company being registered, including legal name,
      #   registration ID, and address.
      #
      #   @return [Dataleon::Models::CompanyRegistration::Company, nil]
      optional :company, -> { Dataleon::CompanyRegistration::Company }

      # @!attribute documents
      #   All documents submitted or associated with the company, including their metadata
      #   and processing status.
      #
      #   @return [Array<Dataleon::Models::Individuals::GenericDocument>, nil]
      optional :documents, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument] }

      # @!attribute members
      #   List of members or actors associated with the company, including personal and
      #   ownership information.
      #
      #   @return [Array<Dataleon::Models::CompanyRegistration::Member>, nil]
      optional :members, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::Member] }

      # @!attribute portal_url
      #   Admin or internal portal URL for viewing the company's details, typically used
      #   by internal users.
      #
      #   @return [String, nil]
      optional :portal_url, String

      # @!attribute properties
      #   Custom key-value metadata fields associated with the company, allowing for
      #   flexible data storage.
      #
      #   @return [Array<Dataleon::Models::CompanyRegistration::Property>, nil]
      optional :properties, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::CompanyRegistration::Property] }

      # @!attribute risk
      #   Risk assessment associated with the company, including a risk code, reason, and
      #   confidence score.
      #
      #   @return [Dataleon::Models::CompanyRegistration::Risk, nil]
      optional :risk, -> { Dataleon::CompanyRegistration::Risk }

      # @!attribute source_id
      #   Optional identifier indicating the source of the company record, useful for
      #   tracking or integration purposes.
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute technical_data
      #   Technical metadata related to the request, such as IP address, QR code settings,
      #   and callback URLs.
      #
      #   @return [Dataleon::Models::CompanyRegistration::TechnicalData, nil]
      optional :technical_data, -> { Dataleon::CompanyRegistration::TechnicalData }

      # @!attribute webview_url
      #   Public-facing webview URL for the company’s identification process, allowing
      #   external access to the company data.
      #
      #   @return [String, nil]
      optional :webview_url, String

      # @!method initialize(aml_suspicions: nil, certificat: nil, checks: nil, company: nil, documents: nil, members: nil, portal_url: nil, properties: nil, risk: nil, source_id: nil, technical_data: nil, webview_url: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dataleon::Models::CompanyRegistration} for more details.
      #
      #   @param aml_suspicions [Array<Dataleon::Models::CompanyRegistration::AmlSuspicion>] List of AML (Anti-Money Laundering) suspicion entries linked to the company, inc
      #
      #   @param certificat [Dataleon::Models::CompanyRegistration::Certificat] Digital certificate associated with the company, if any, including its creation
      #
      #   @param checks [Array<Dataleon::Models::Check>] List of verification or validation checks applied to the company, including thei
      #
      #   @param company [Dataleon::Models::CompanyRegistration::Company] Main information about the company being registered, including legal name, regis
      #
      #   @param documents [Array<Dataleon::Models::Individuals::GenericDocument>] All documents submitted or associated with the company, including their metadata
      #
      #   @param members [Array<Dataleon::Models::CompanyRegistration::Member>] List of members or actors associated with the company, including personal and ow
      #
      #   @param portal_url [String] Admin or internal portal URL for viewing the company's details, typically used b
      #
      #   @param properties [Array<Dataleon::Models::CompanyRegistration::Property>] Custom key-value metadata fields associated with the company, allowing for flexi
      #
      #   @param risk [Dataleon::Models::CompanyRegistration::Risk] Risk assessment associated with the company, including a risk code, reason, and
      #
      #   @param source_id [String] Optional identifier indicating the source of the company record, useful for trac
      #
      #   @param technical_data [Dataleon::Models::CompanyRegistration::TechnicalData] Technical metadata related to the request, such as IP address, QR code settings,
      #
      #   @param webview_url [String] Public-facing webview URL for the company’s identification process, allowing ext

      class AmlSuspicion < Dataleon::Internal::Type::BaseModel
        # @!attribute caption
        #   Human-readable description or title for the suspicious finding.
        #
        #   @return [String, nil]
        optional :caption, String

        # @!attribute country
        #   Country associated with the suspicion (ISO 3166-1 alpha-2 code).
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute gender
        #   Gender associated with the suspicion, if applicable.
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute relation
        #   Nature of the relationship between the entity and the suspicious activity (e.g.,
        #   "linked", "associated").
        #
        #   @return [String, nil]
        optional :relation, String

        # @!attribute schema
        #   Version of the evaluation schema or rule engine used.
        #
        #   @return [String, nil]
        optional :schema, String

        # @!attribute score
        #   Risk score between 0.0 and 1 indicating the severity of the suspicion.
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!attribute source
        #   Source system or service providing this suspicion.
        #
        #   @return [String, nil]
        optional :source, String

        # @!attribute status
        #   Status of the suspicion review process. Possible values: "true_positive",
        #   "false_positive", "pending".
        #
        #   @return [Symbol, Dataleon::Models::CompanyRegistration::AmlSuspicion::Status, nil]
        optional :status, enum: -> { Dataleon::CompanyRegistration::AmlSuspicion::Status }

        # @!attribute type
        #   Category of the suspicion. Possible values: "crime", "sanction", "pep",
        #   "adverse_news", "other".
        #
        #   @return [Symbol, Dataleon::Models::CompanyRegistration::AmlSuspicion::Type, nil]
        optional :type, enum: -> { Dataleon::CompanyRegistration::AmlSuspicion::Type }

        # @!method initialize(caption: nil, country: nil, gender: nil, relation: nil, schema: nil, score: nil, source: nil, status: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyRegistration::AmlSuspicion} for more details.
        #
        #   Represents a record of suspicion raised during Anti-Money Laundering (AML)
        #   screening. Includes metadata such as risk score, origin, and linked watchlist
        #   types.
        #
        #   @param caption [String] Human-readable description or title for the suspicious finding.
        #
        #   @param country [String] Country associated with the suspicion (ISO 3166-1 alpha-2 code).
        #
        #   @param gender [String] Gender associated with the suspicion, if applicable.
        #
        #   @param relation [String] Nature of the relationship between the entity and the suspicious activity (e.g.,
        #
        #   @param schema [String] Version of the evaluation schema or rule engine used.
        #
        #   @param score [Float] Risk score between 0.0 and 1 indicating the severity of the suspicion.
        #
        #   @param source [String] Source system or service providing this suspicion.
        #
        #   @param status [Symbol, Dataleon::Models::CompanyRegistration::AmlSuspicion::Status] Status of the suspicion review process. Possible values: "true_positive", "false
        #
        #   @param type [Symbol, Dataleon::Models::CompanyRegistration::AmlSuspicion::Type] Category of the suspicion. Possible values: "crime", "sanction", "pep", "adverse

        # Status of the suspicion review process. Possible values: "true_positive",
        # "false_positive", "pending".
        #
        # @see Dataleon::Models::CompanyRegistration::AmlSuspicion#status
        module Status
          extend Dataleon::Internal::Type::Enum

          TRUE_POSITIVE = :true_positive
          FALSE_POSITIVE = :false_positive
          PENDING = :pending

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Category of the suspicion. Possible values: "crime", "sanction", "pep",
        # "adverse_news", "other".
        #
        # @see Dataleon::Models::CompanyRegistration::AmlSuspicion#type
        module Type
          extend Dataleon::Internal::Type::Enum

          CRIME = :crime
          SANCTION = :sanction
          PEP = :pep
          ADVERSE_NEWS = :adverse_news
          OTHER = :other

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # @see Dataleon::Models::CompanyRegistration#certificat
      class Certificat < Dataleon::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the certificate.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute created_at
        #   Timestamp when the certificate was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute filename
        #   Name of the certificate file.
        #
        #   @return [String, nil]
        optional :filename, String

        # @!method initialize(id: nil, created_at: nil, filename: nil)
        #   Digital certificate associated with the company, if any, including its creation
        #   timestamp and filename.
        #
        #   @param id [String] Unique identifier for the certificate.
        #
        #   @param created_at [Time] Timestamp when the certificate was created.
        #
        #   @param filename [String] Name of the certificate file.
      end

      # @see Dataleon::Models::CompanyRegistration#company
      class Company < Dataleon::Internal::Type::BaseModel
        # @!attribute address
        #   Full registered address of the company.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute closure_date
        #   Closure date of the company, if applicable.
        #
        #   @return [Date, nil]
        optional :closure_date, Date

        # @!attribute commercial_name
        #   Trade or commercial name of the company.
        #
        #   @return [String, nil]
        optional :commercial_name, String

        # @!attribute contact
        #   Contact information for the company, including email, phone number, and address.
        #
        #   @return [Dataleon::Models::CompanyRegistration::Company::Contact, nil]
        optional :contact, -> { Dataleon::CompanyRegistration::Company::Contact }

        # @!attribute country
        #   Country code where the company is registered.
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute email
        #   Contact email address for the company.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute employees
        #   Number of employees in the company.
        #
        #   @return [Integer, nil]
        optional :employees, Integer

        # @!attribute employer_identification_number
        #   Employer Identification Number (EIN) or equivalent.
        #
        #   @return [String, nil]
        optional :employer_identification_number, String

        # @!attribute insolvency_exists
        #   Indicates whether an insolvency procedure exists for the company.
        #
        #   @return [Boolean, nil]
        optional :insolvency_exists, Dataleon::Internal::Type::Boolean

        # @!attribute insolvency_ongoing
        #   Indicates whether an insolvency procedure is ongoing for the company.
        #
        #   @return [Boolean, nil]
        optional :insolvency_ongoing, Dataleon::Internal::Type::Boolean

        # @!attribute legal_form
        #   Legal form or structure of the company (e.g., LLC, SARL).
        #
        #   @return [String, nil]
        optional :legal_form, String

        # @!attribute name
        #   Legal registered name of the company.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute phone_number
        #   Contact phone number for the company, including country code.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute registration_date
        #   Date when the company was officially registered.
        #
        #   @return [Date, nil]
        optional :registration_date, Date

        # @!attribute registration_id
        #   Official company registration number or ID.
        #
        #   @return [String, nil]
        optional :registration_id, String

        # @!attribute share_capital
        #   Total share capital of the company, including currency.
        #
        #   @return [String, nil]
        optional :share_capital, String

        # @!attribute status
        #   Current status of the company (e.g., active, inactive).
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute tax_identification_number
        #   Tax identification number for the company.
        #
        #   @return [String, nil]
        optional :tax_identification_number, String

        # @!attribute type
        #   Type of company within the workspace, e.g., main or affiliated.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute website_url
        #   Official website URL of the company.
        #
        #   @return [String, nil]
        optional :website_url, String

        # @!method initialize(address: nil, closure_date: nil, commercial_name: nil, contact: nil, country: nil, email: nil, employees: nil, employer_identification_number: nil, insolvency_exists: nil, insolvency_ongoing: nil, legal_form: nil, name: nil, phone_number: nil, registration_date: nil, registration_id: nil, share_capital: nil, status: nil, tax_identification_number: nil, type: nil, website_url: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyRegistration::Company} for more details.
        #
        #   Main information about the company being registered, including legal name,
        #   registration ID, and address.
        #
        #   @param address [String] Full registered address of the company.
        #
        #   @param closure_date [Date] Closure date of the company, if applicable.
        #
        #   @param commercial_name [String] Trade or commercial name of the company.
        #
        #   @param contact [Dataleon::Models::CompanyRegistration::Company::Contact] Contact information for the company, including email, phone number, and address.
        #
        #   @param country [String] Country code where the company is registered.
        #
        #   @param email [String] Contact email address for the company.
        #
        #   @param employees [Integer] Number of employees in the company.
        #
        #   @param employer_identification_number [String] Employer Identification Number (EIN) or equivalent.
        #
        #   @param insolvency_exists [Boolean] Indicates whether an insolvency procedure exists for the company.
        #
        #   @param insolvency_ongoing [Boolean] Indicates whether an insolvency procedure is ongoing for the company.
        #
        #   @param legal_form [String] Legal form or structure of the company (e.g., LLC, SARL).
        #
        #   @param name [String] Legal registered name of the company.
        #
        #   @param phone_number [String] Contact phone number for the company, including country code.
        #
        #   @param registration_date [Date] Date when the company was officially registered.
        #
        #   @param registration_id [String] Official company registration number or ID.
        #
        #   @param share_capital [String] Total share capital of the company, including currency.
        #
        #   @param status [String] Current status of the company (e.g., active, inactive).
        #
        #   @param tax_identification_number [String] Tax identification number for the company.
        #
        #   @param type [String] Type of company within the workspace, e.g., main or affiliated.
        #
        #   @param website_url [String] Official website URL of the company.

        # @see Dataleon::Models::CompanyRegistration::Company#contact
        class Contact < Dataleon::Internal::Type::BaseModel
          # @!attribute department
          #   Department of the contact person.
          #
          #   @return [String, nil]
          optional :department, String

          # @!attribute email
          #   Email address of the contact person.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute first_name
          #   First name of the contact person.
          #
          #   @return [String, nil]
          optional :first_name, String

          # @!attribute last_name
          #   Last name of the contact person.
          #
          #   @return [String, nil]
          optional :last_name, String

          # @!attribute phone_number
          #   Phone number of the contact person.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!method initialize(department: nil, email: nil, first_name: nil, last_name: nil, phone_number: nil)
          #   Contact information for the company, including email, phone number, and address.
          #
          #   @param department [String] Department of the contact person.
          #
          #   @param email [String] Email address of the contact person.
          #
          #   @param first_name [String] First name of the contact person.
          #
          #   @param last_name [String] Last name of the contact person.
          #
          #   @param phone_number [String] Phone number of the contact person.
        end
      end

      class Member < Dataleon::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute address
        #   Address of the member, which may include street, city, postal code, and country.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute birthday
        #   Birthday (available only if type = person)
        #
        #   @return [Time, nil]
        optional :birthday, Time

        # @!attribute birthplace
        #   Birthplace (available only if type = person)
        #
        #   @return [String, nil]
        optional :birthplace, String

        # @!attribute country
        #   ISO 3166-1 alpha-2 country code of the member's address (e.g., "FR" for France).
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute documents
        #   List of documents associated with the member, including their metadata and
        #   processing status.
        #
        #   @return [Array<Dataleon::Models::Individuals::GenericDocument>, nil]
        optional :documents, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument] }

        # @!attribute email
        #   Email address of the member, which may be used for communication or verification
        #   purposes.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute first_name
        #   First name (available only if type = person)
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute is_beneficial_owner
        #   Indicates whether the member is a beneficial owner of the company, meaning they
        #   have significant control or ownership.
        #
        #   @return [Boolean, nil]
        optional :is_beneficial_owner, Dataleon::Internal::Type::Boolean

        # @!attribute is_delegator
        #   Indicates whether the member is a delegator, meaning they have authority to act
        #   on behalf of the company.
        #
        #   @return [Boolean, nil]
        optional :is_delegator, Dataleon::Internal::Type::Boolean

        # @!attribute last_name
        #   Last name (available only if type = person)
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute liveness_verification
        #   Indicates whether liveness verification was performed for the member, typically
        #   in the context of identity checks.
        #
        #   @return [Boolean, nil]
        optional :liveness_verification, Dataleon::Internal::Type::Boolean

        # @!attribute name
        #   Company name (available only if type = company)
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute ownership_percentage
        #   Percentage of ownership the member has in the company, expressed as an integer
        #   between 0 and 100.
        #
        #   @return [Integer, nil]
        optional :ownership_percentage, Integer

        # @!attribute phone_number
        #   Contact phone number of the member, including country code and area code.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!attribute postal_code
        #   Postal code of the member's address, typically a numeric or alphanumeric code.
        #
        #   @return [String, nil]
        optional :postal_code, String

        # @!attribute registration_id
        #   Official registration identifier of the member, such as a national ID or company
        #   registration number.
        #
        #   @return [String, nil]
        optional :registration_id, String

        # @!attribute relation
        #   Type of relationship the member has with the company, such as "shareholder",
        #   "director", or "beneficial_owner".
        #
        #   @return [String, nil]
        optional :relation, String

        # @!attribute roles
        #   Role of the member within the company, such as "legal_representative",
        #   "director", or "manager".
        #
        #   @return [String, nil]
        optional :roles, String

        # @!attribute source
        #   Source of the data (e.g., government, user, company)
        #
        #   @return [Symbol, Dataleon::Models::CompanyRegistration::Member::Source, nil]
        optional :source, enum: -> { Dataleon::CompanyRegistration::Member::Source }

        # @!attribute state
        #   Current state of the member in the workflow, such as "WAITING", "STARTED",
        #   "RUNNING", or "PROCESSED".
        #
        #   @return [String, nil]
        optional :state, String

        # @!attribute status
        #   Status of the member in the system, indicating whether they are approved,
        #   pending, or rejected. Possible values include "approved", "need_review",
        #   "rejected".
        #
        #   @return [String, nil]
        optional :status, String

        # @!attribute type
        #   Member type (person or company)
        #
        #   @return [Symbol, Dataleon::Models::CompanyRegistration::Member::Type, nil]
        optional :type, enum: -> { Dataleon::CompanyRegistration::Member::Type }

        # @!attribute workspace_id
        #   Identifier of the workspace to which the member belongs, used for organizational
        #   purposes.
        #
        #   @return [String, nil]
        optional :workspace_id, String

        # @!method initialize(id: nil, address: nil, birthday: nil, birthplace: nil, country: nil, documents: nil, email: nil, first_name: nil, is_beneficial_owner: nil, is_delegator: nil, last_name: nil, liveness_verification: nil, name: nil, ownership_percentage: nil, phone_number: nil, postal_code: nil, registration_id: nil, relation: nil, roles: nil, source: nil, state: nil, status: nil, type: nil, workspace_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyRegistration::Member} for more details.
        #
        #   Represents a member or actor of a company, including personal and ownership
        #   information.
        #
        #   @param id [String]
        #
        #   @param address [String] Address of the member, which may include street, city, postal code, and country.
        #
        #   @param birthday [Time] Birthday (available only if type = person)
        #
        #   @param birthplace [String] Birthplace (available only if type = person)
        #
        #   @param country [String] ISO 3166-1 alpha-2 country code of the member's address (e.g., "FR" for France).
        #
        #   @param documents [Array<Dataleon::Models::Individuals::GenericDocument>] List of documents associated with the member, including their metadata and proce
        #
        #   @param email [String] Email address of the member, which may be used for communication or verification
        #
        #   @param first_name [String] First name (available only if type = person)
        #
        #   @param is_beneficial_owner [Boolean] Indicates whether the member is a beneficial owner of the company, meaning they
        #
        #   @param is_delegator [Boolean] Indicates whether the member is a delegator, meaning they have authority to act
        #
        #   @param last_name [String] Last name (available only if type = person)
        #
        #   @param liveness_verification [Boolean] Indicates whether liveness verification was performed for the member, typically
        #
        #   @param name [String] Company name (available only if type = company)
        #
        #   @param ownership_percentage [Integer] Percentage of ownership the member has in the company, expressed as an integer b
        #
        #   @param phone_number [String] Contact phone number of the member, including country code and area code.
        #
        #   @param postal_code [String] Postal code of the member's address, typically a numeric or alphanumeric code.
        #
        #   @param registration_id [String] Official registration identifier of the member, such as a national ID or company
        #
        #   @param relation [String] Type of relationship the member has with the company, such as "shareholder", "di
        #
        #   @param roles [String] Role of the member within the company, such as "legal_representative", "director
        #
        #   @param source [Symbol, Dataleon::Models::CompanyRegistration::Member::Source] Source of the data (e.g., government, user, company)
        #
        #   @param state [String] Current state of the member in the workflow, such as "WAITING", "STARTED", "RUNN
        #
        #   @param status [String] Status of the member in the system, indicating whether they are approved, pendin
        #
        #   @param type [Symbol, Dataleon::Models::CompanyRegistration::Member::Type] Member type (person or company)
        #
        #   @param workspace_id [String] Identifier of the workspace to which the member belongs, used for organizational

        # Source of the data (e.g., government, user, company)
        #
        # @see Dataleon::Models::CompanyRegistration::Member#source
        module Source
          extend Dataleon::Internal::Type::Enum

          GOUVE = :gouve
          USER = :user
          COMPANY = :company

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # Member type (person or company)
        #
        # @see Dataleon::Models::CompanyRegistration::Member#type
        module Type
          extend Dataleon::Internal::Type::Enum

          PERSON = :person
          COMPANY = :company

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      class Property < Dataleon::Internal::Type::BaseModel
        # @!attribute name
        #   Name/key of the property.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute type
        #   Data type of the property value.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute value
        #   Value associated with the property name.
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(name: nil, type: nil, value: nil)
        #   Represents a generic property key-value pair with a specified type.
        #
        #   @param name [String] Name/key of the property.
        #
        #   @param type [String] Data type of the property value.
        #
        #   @param value [String] Value associated with the property name.
      end

      # @see Dataleon::Models::CompanyRegistration#risk
      class Risk < Dataleon::Internal::Type::BaseModel
        # @!attribute code
        #   Risk category or code identifier.
        #
        #   @return [String, nil]
        optional :code, String

        # @!attribute reason
        #   Explanation or justification for the assigned risk.
        #
        #   @return [String, nil]
        optional :reason, String

        # @!attribute score
        #   Numeric risk score between 0.0 and 1.0 indicating severity or confidence.
        #
        #   @return [Float, nil]
        optional :score, Float

        # @!method initialize(code: nil, reason: nil, score: nil)
        #   Risk assessment associated with the company, including a risk code, reason, and
        #   confidence score.
        #
        #   @param code [String] Risk category or code identifier.
        #
        #   @param reason [String] Explanation or justification for the assigned risk.
        #
        #   @param score [Float] Numeric risk score between 0.0 and 1.0 indicating severity or confidence.
      end

      # @see Dataleon::Models::CompanyRegistration#technical_data
      class TechnicalData < Dataleon::Internal::Type::BaseModel
        # @!attribute active_aml_suspicions
        #   Flag indicating whether there are active research AML (Anti-Money Laundering)
        #   suspicions for the object when you apply for a new entry or get an existing one.
        #
        #   @return [Boolean, nil]
        optional :active_aml_suspicions, Dataleon::Internal::Type::Boolean

        # @!attribute api_version
        #   Version number of the API used.
        #
        #   @return [Integer, nil]
        optional :api_version, Integer

        # @!attribute approved_at
        #   Timestamp when the request or process was approved.
        #
        #   @return [Time, nil]
        optional :approved_at, Time

        # @!attribute callback_url
        #   URL to receive callback data from the AML system.
        #
        #   @return [String, nil]
        optional :callback_url, String

        # @!attribute callback_url_notification
        #   URL to receive notification updates about the processing status.
        #
        #   @return [String, nil]
        optional :callback_url_notification, String

        # @!attribute disable_notification
        #   Flag to indicate if notifications are disabled.
        #
        #   @return [Boolean, nil]
        optional :disable_notification, Dataleon::Internal::Type::Boolean

        # @!attribute disable_notification_date
        #   Timestamp when notifications were disabled; null if never disabled.
        #
        #   @return [Time, nil]
        optional :disable_notification_date, Time, nil?: true

        # @!attribute export_type
        #   Export format defined by the API (e.g., "json", "xml").
        #
        #   @return [String, nil]
        optional :export_type, String

        # @!attribute filtering_score_aml_suspicions
        #   Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @return [Float, nil]
        optional :filtering_score_aml_suspicions, Float

        # @!attribute finished_at
        #   Timestamp when the process finished.
        #
        #   @return [Time, nil]
        optional :finished_at, Time

        # @!attribute ip
        #   IP address of the our system handling the request.
        #
        #   @return [String, nil]
        optional :ip, String

        # @!attribute language
        #   Language preference used in the client workspace (e.g., "fra").
        #
        #   @return [String, nil]
        optional :language, String

        # @!attribute location_ip
        #   IP address of the end client (final user) captured.
        #
        #   @return [String, nil]
        optional :location_ip, String

        # @!attribute need_review_at
        #   Timestamp indicating when the request or process needs review; null if none.
        #
        #   @return [Time, nil]
        optional :need_review_at, Time, nil?: true

        # @!attribute notification_confirmation
        #   Flag indicating if notification confirmation is required or received.
        #
        #   @return [Boolean, nil]
        optional :notification_confirmation, Dataleon::Internal::Type::Boolean

        # @!attribute qr_code
        #   Indicates whether QR code is enabled ("true" or "false").
        #
        #   @return [String, nil]
        optional :qr_code, String

        # @!attribute raw_data
        #   Flag indicating whether to include raw data in the response.
        #
        #   @return [Boolean, nil]
        optional :raw_data, Dataleon::Internal::Type::Boolean

        # @!attribute rejected_at
        #   Timestamp when the request or process was rejected; null if not rejected.
        #
        #   @return [Time, nil]
        optional :rejected_at, Time, nil?: true

        # @!attribute session_duration
        #   Duration of the user session in seconds.
        #
        #   @return [Integer, nil]
        optional :session_duration, Integer

        # @!attribute started_at
        #   Timestamp when the process started.
        #
        #   @return [Time, nil]
        optional :started_at, Time

        # @!attribute transfer_at
        #   Date/time of data transfer.
        #
        #   @return [Time, nil]
        optional :transfer_at, Time

        # @!attribute transfer_mode
        #   Mode of data transfer.
        #
        #   @return [String, nil]
        optional :transfer_mode, String

        # @!method initialize(active_aml_suspicions: nil, api_version: nil, approved_at: nil, callback_url: nil, callback_url_notification: nil, disable_notification: nil, disable_notification_date: nil, export_type: nil, filtering_score_aml_suspicions: nil, finished_at: nil, ip: nil, language: nil, location_ip: nil, need_review_at: nil, notification_confirmation: nil, qr_code: nil, raw_data: nil, rejected_at: nil, session_duration: nil, started_at: nil, transfer_at: nil, transfer_mode: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::CompanyRegistration::TechnicalData} for more details.
        #
        #   Technical metadata related to the request, such as IP address, QR code settings,
        #   and callback URLs.
        #
        #   @param active_aml_suspicions [Boolean] Flag indicating whether there are active research AML (Anti-Money Laundering) su
        #
        #   @param api_version [Integer] Version number of the API used.
        #
        #   @param approved_at [Time] Timestamp when the request or process was approved.
        #
        #   @param callback_url [String] URL to receive callback data from the AML system.
        #
        #   @param callback_url_notification [String] URL to receive notification updates about the processing status.
        #
        #   @param disable_notification [Boolean] Flag to indicate if notifications are disabled.
        #
        #   @param disable_notification_date [Time, nil] Timestamp when notifications were disabled; null if never disabled.
        #
        #   @param export_type [String] Export format defined by the API (e.g., "json", "xml").
        #
        #   @param filtering_score_aml_suspicions [Float] Minimum filtering score (between 0 and 1) for AML suspicions to be considered.
        #
        #   @param finished_at [Time] Timestamp when the process finished.
        #
        #   @param ip [String] IP address of the our system handling the request.
        #
        #   @param language [String] Language preference used in the client workspace (e.g., "fra").
        #
        #   @param location_ip [String] IP address of the end client (final user) captured.
        #
        #   @param need_review_at [Time, nil] Timestamp indicating when the request or process needs review; null if none.
        #
        #   @param notification_confirmation [Boolean] Flag indicating if notification confirmation is required or received.
        #
        #   @param qr_code [String] Indicates whether QR code is enabled ("true" or "false").
        #
        #   @param raw_data [Boolean] Flag indicating whether to include raw data in the response.
        #
        #   @param rejected_at [Time, nil] Timestamp when the request or process was rejected; null if not rejected.
        #
        #   @param session_duration [Integer] Duration of the user session in seconds.
        #
        #   @param started_at [Time] Timestamp when the process started.
        #
        #   @param transfer_at [Time] Date/time of data transfer.
        #
        #   @param transfer_mode [String] Mode of data transfer.
      end
    end
  end
end
