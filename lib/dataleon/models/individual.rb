# frozen_string_literal: true

module Dataleon
  module Models
    # @see Dataleon::Resources::Individuals#create
    class Individual < Dataleon::Internal::Type::BaseModel
      # @!attribute id
      #   Unique identifier of the individual.
      #
      #   @return [String, nil]
      optional :id, String

      # @!attribute aml_suspicions
      #   List of AML (Anti-Money Laundering) suspicion entries linked to the individual.
      #
      #   @return [Array<Dataleon::Models::Individual::AmlSuspicion>, nil]
      optional :aml_suspicions, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::AmlSuspicion] }

      # @!attribute auth_url
      #   URL to authenticate the individual, usually for document signing or onboarding.
      #
      #   @return [String, nil]
      optional :auth_url, String

      # @!attribute certificat
      #   Digital certificate associated with the individual, if any.
      #
      #   @return [Dataleon::Models::Individual::Certificat, nil]
      optional :certificat, -> { Dataleon::Individual::Certificat }

      # @!attribute checks
      #   List of verification or validation checks applied to the individual.
      #
      #   @return [Array<Dataleon::Models::Check>, nil]
      optional :checks, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Check] }

      # @!attribute created_at
      #   Timestamp of the individual's creation in ISO 8601 format.
      #
      #   @return [Time, nil]
      optional :created_at, Time

      # @!attribute documents
      #   All documents submitted or associated with the individual.
      #
      #   @return [Array<Dataleon::Models::Individuals::GenericDocument>, nil]
      optional :documents, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::GenericDocument] }

      # @!attribute identity_card
      #   Reference to the individual's identity document.
      #
      #   @return [Dataleon::Models::Individual::IdentityCard, nil]
      optional :identity_card, -> { Dataleon::Individual::IdentityCard }

      # @!attribute number
      #   Internal sequential number or reference for the individual.
      #
      #   @return [Integer, nil]
      optional :number, Integer

      # @!attribute person
      #   Personal details of the individual, such as name, date of birth, and contact
      #   info.
      #
      #   @return [Dataleon::Models::Individual::Person, nil]
      optional :person, -> { Dataleon::Individual::Person }

      # @!attribute portal_url
      #   Admin or internal portal URL for viewing the individual's details.
      #
      #   @return [String, nil]
      optional :portal_url, String

      # @!attribute properties
      #   Custom key-value metadata fields associated with the individual.
      #
      #   @return [Array<Dataleon::Models::Individual::Property>, nil]
      optional :properties, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::Property] }

      # @!attribute risk
      #   Risk assessment associated with the individual.
      #
      #   @return [Dataleon::Models::Individual::Risk, nil]
      optional :risk, -> { Dataleon::Individual::Risk }

      # @!attribute source_id
      #   Optional identifier indicating the source of the individual record.
      #
      #   @return [String, nil]
      optional :source_id, String

      # @!attribute state
      #   Current operational state in the workflow (e.g., WAITING, IN_PROGRESS,
      #   COMPLETED).
      #
      #   @return [String, nil]
      optional :state, String

      # @!attribute status
      #   Overall processing status of the individual (e.g., rejected, need_review,
      #   approved).
      #
      #   @return [String, nil]
      optional :status, String

      # @!attribute tags
      #   List of tags assigned to the individual for categorization or metadata purposes.
      #
      #   @return [Array<Dataleon::Models::Individual::Tag>, nil]
      optional :tags, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individual::Tag] }

      # @!attribute technical_data
      #   Technical metadata related to the request (e.g., QR code settings, language).
      #
      #   @return [Dataleon::Models::Individual::TechnicalData, nil]
      optional :technical_data, -> { Dataleon::Individual::TechnicalData }

      # @!attribute webview_url
      #   Public-facing webview URL for the individual’s identification process.
      #
      #   @return [String, nil]
      optional :webview_url, String

      # @!attribute workspace_id
      #   Identifier of the workspace to which the individual belongs.
      #
      #   @return [String, nil]
      optional :workspace_id, String

      # @!method initialize(id: nil, aml_suspicions: nil, auth_url: nil, certificat: nil, checks: nil, created_at: nil, documents: nil, identity_card: nil, number: nil, person: nil, portal_url: nil, properties: nil, risk: nil, source_id: nil, state: nil, status: nil, tags: nil, technical_data: nil, webview_url: nil, workspace_id: nil)
      #   Some parameter documentations has been truncated, see
      #   {Dataleon::Models::Individual} for more details.
      #
      #   Represents a single individual record, including identification, status, and
      #   associated metadata.
      #
      #   @param id [String] Unique identifier of the individual.
      #
      #   @param aml_suspicions [Array<Dataleon::Models::Individual::AmlSuspicion>] List of AML (Anti-Money Laundering) suspicion entries linked to the individual.
      #
      #   @param auth_url [String] URL to authenticate the individual, usually for document signing or onboarding.
      #
      #   @param certificat [Dataleon::Models::Individual::Certificat] Digital certificate associated with the individual, if any.
      #
      #   @param checks [Array<Dataleon::Models::Check>] List of verification or validation checks applied to the individual.
      #
      #   @param created_at [Time] Timestamp of the individual's creation in ISO 8601 format.
      #
      #   @param documents [Array<Dataleon::Models::Individuals::GenericDocument>] All documents submitted or associated with the individual.
      #
      #   @param identity_card [Dataleon::Models::Individual::IdentityCard] Reference to the individual's identity document.
      #
      #   @param number [Integer] Internal sequential number or reference for the individual.
      #
      #   @param person [Dataleon::Models::Individual::Person] Personal details of the individual, such as name, date of birth, and contact inf
      #
      #   @param portal_url [String] Admin or internal portal URL for viewing the individual's details.
      #
      #   @param properties [Array<Dataleon::Models::Individual::Property>] Custom key-value metadata fields associated with the individual.
      #
      #   @param risk [Dataleon::Models::Individual::Risk] Risk assessment associated with the individual.
      #
      #   @param source_id [String] Optional identifier indicating the source of the individual record.
      #
      #   @param state [String] Current operational state in the workflow (e.g., WAITING, IN_PROGRESS, COMPLETED
      #
      #   @param status [String] Overall processing status of the individual (e.g., rejected, need_review, approv
      #
      #   @param tags [Array<Dataleon::Models::Individual::Tag>] List of tags assigned to the individual for categorization or metadata purposes.
      #
      #   @param technical_data [Dataleon::Models::Individual::TechnicalData] Technical metadata related to the request (e.g., QR code settings, language).
      #
      #   @param webview_url [String] Public-facing webview URL for the individual’s identification process.
      #
      #   @param workspace_id [String] Identifier of the workspace to which the individual belongs.

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
        #   @return [Symbol, Dataleon::Models::Individual::AmlSuspicion::Status, nil]
        optional :status, enum: -> { Dataleon::Individual::AmlSuspicion::Status }

        # @!attribute type
        #   Category of the suspicion. Possible values: "crime", "sanction", "pep",
        #   "adverse_news", "other".
        #
        #   @return [Symbol, Dataleon::Models::Individual::AmlSuspicion::Type, nil]
        optional :type, enum: -> { Dataleon::Individual::AmlSuspicion::Type }

        # @!method initialize(caption: nil, country: nil, gender: nil, relation: nil, schema: nil, score: nil, source: nil, status: nil, type: nil)
        #   Some parameter documentations has been truncated, see
        #   {Dataleon::Models::Individual::AmlSuspicion} for more details.
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
        #   @param status [Symbol, Dataleon::Models::Individual::AmlSuspicion::Status] Status of the suspicion review process. Possible values: "true_positive", "false
        #
        #   @param type [Symbol, Dataleon::Models::Individual::AmlSuspicion::Type] Category of the suspicion. Possible values: "crime", "sanction", "pep", "adverse

        # Status of the suspicion review process. Possible values: "true_positive",
        # "false_positive", "pending".
        #
        # @see Dataleon::Models::Individual::AmlSuspicion#status
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
        # @see Dataleon::Models::Individual::AmlSuspicion#type
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

      # @see Dataleon::Models::Individual#certificat
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
        #   Digital certificate associated with the individual, if any.
        #
        #   @param id [String] Unique identifier for the certificate.
        #
        #   @param created_at [Time] Timestamp when the certificate was created.
        #
        #   @param filename [String] Name of the certificate file.
      end

      # @see Dataleon::Models::Individual#identity_card
      class IdentityCard < Dataleon::Internal::Type::BaseModel
        # @!attribute id
        #   Unique identifier for the document.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute back_document_signed_url
        #   Signed URL linking to the back image of the document.
        #
        #   @return [String, nil]
        optional :back_document_signed_url, String

        # @!attribute birth_place
        #   Place of birth as indicated on the document.
        #
        #   @return [String, nil]
        optional :birth_place, String

        # @!attribute birthday
        #   Date of birth in DD/MM/YYYY format as shown on the document.
        #
        #   @return [String, nil]
        optional :birthday, String

        # @!attribute country
        #   Country code issuing the document (ISO 3166-1 alpha-2).
        #
        #   @return [String, nil]
        optional :country, String

        # @!attribute expiration_date
        #   Expiration date of the document, in YYYY-MM-DD format.
        #
        #   @return [String, nil]
        optional :expiration_date, String

        # @!attribute first_name
        #   First name as shown on the document.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute front_document_signed_url
        #   Signed URL linking to the front image of the document.
        #
        #   @return [String, nil]
        optional :front_document_signed_url, String

        # @!attribute gender
        #   Gender indicated on the document (e.g., "M" or "F").
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute issue_date
        #   Date when the document was issued, in YYYY-MM-DD format.
        #
        #   @return [String, nil]
        optional :issue_date, String

        # @!attribute last_name
        #   Last name as shown on the document.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute mrz_line_1
        #   First line of the Machine Readable Zone (MRZ) on the document.
        #
        #   @return [String, nil]
        optional :mrz_line_1, String

        # @!attribute mrz_line_2
        #   Second line of the MRZ on the document.
        #
        #   @return [String, nil]
        optional :mrz_line_2, String

        # @!attribute mrz_line_3
        #   Third line of the MRZ if applicable; otherwise null.
        #
        #   @return [String, nil]
        optional :mrz_line_3, String, nil?: true

        # @!attribute type
        #   Type of document (e.g., passport, identity card).
        #
        #   @return [String, nil]
        optional :type, String

        # @!method initialize(id: nil, back_document_signed_url: nil, birth_place: nil, birthday: nil, country: nil, expiration_date: nil, first_name: nil, front_document_signed_url: nil, gender: nil, issue_date: nil, last_name: nil, mrz_line_1: nil, mrz_line_2: nil, mrz_line_3: nil, type: nil)
        #   Reference to the individual's identity document.
        #
        #   @param id [String] Unique identifier for the document.
        #
        #   @param back_document_signed_url [String] Signed URL linking to the back image of the document.
        #
        #   @param birth_place [String] Place of birth as indicated on the document.
        #
        #   @param birthday [String] Date of birth in DD/MM/YYYY format as shown on the document.
        #
        #   @param country [String] Country code issuing the document (ISO 3166-1 alpha-2).
        #
        #   @param expiration_date [String] Expiration date of the document, in YYYY-MM-DD format.
        #
        #   @param first_name [String] First name as shown on the document.
        #
        #   @param front_document_signed_url [String] Signed URL linking to the front image of the document.
        #
        #   @param gender [String] Gender indicated on the document (e.g., "M" or "F").
        #
        #   @param issue_date [String] Date when the document was issued, in YYYY-MM-DD format.
        #
        #   @param last_name [String] Last name as shown on the document.
        #
        #   @param mrz_line_1 [String] First line of the Machine Readable Zone (MRZ) on the document.
        #
        #   @param mrz_line_2 [String] Second line of the MRZ on the document.
        #
        #   @param mrz_line_3 [String, nil] Third line of the MRZ if applicable; otherwise null.
        #
        #   @param type [String] Type of document (e.g., passport, identity card).
      end

      # @see Dataleon::Models::Individual#person
      class Person < Dataleon::Internal::Type::BaseModel
        # @!attribute birthday
        #   Date of birth, formatted as DD/MM/YYYY.
        #
        #   @return [String, nil]
        optional :birthday, String

        # @!attribute email
        #   Email address of the individual.
        #
        #   @return [String, nil]
        optional :email, String

        # @!attribute face_image_signed_url
        #   Signed URL linking to the person’s face image.
        #
        #   @return [String, nil]
        optional :face_image_signed_url, String

        # @!attribute first_name
        #   First (given) name of the person.
        #
        #   @return [String, nil]
        optional :first_name, String

        # @!attribute full_name
        #   Full name of the person, typically concatenation of first and last names.
        #
        #   @return [String, nil]
        optional :full_name, String

        # @!attribute gender
        #   Gender of the individual (e.g., "M" for male, "F" for female).
        #
        #   @return [String, nil]
        optional :gender, String

        # @!attribute last_name
        #   Last (family) name of the person.
        #
        #   @return [String, nil]
        optional :last_name, String

        # @!attribute maiden_name
        #   Maiden name of the person, if applicable.
        #
        #   @return [String, nil]
        optional :maiden_name, String

        # @!attribute nationality
        #   Nationality of the individual (ISO 3166-1 alpha-3 country code).
        #
        #   @return [String, nil]
        optional :nationality, String

        # @!attribute phone_number
        #   Contact phone number including country code.
        #
        #   @return [String, nil]
        optional :phone_number, String

        # @!method initialize(birthday: nil, email: nil, face_image_signed_url: nil, first_name: nil, full_name: nil, gender: nil, last_name: nil, maiden_name: nil, nationality: nil, phone_number: nil)
        #   Personal details of the individual, such as name, date of birth, and contact
        #   info.
        #
        #   @param birthday [String] Date of birth, formatted as DD/MM/YYYY.
        #
        #   @param email [String] Email address of the individual.
        #
        #   @param face_image_signed_url [String] Signed URL linking to the person’s face image.
        #
        #   @param first_name [String] First (given) name of the person.
        #
        #   @param full_name [String] Full name of the person, typically concatenation of first and last names.
        #
        #   @param gender [String] Gender of the individual (e.g., "M" for male, "F" for female).
        #
        #   @param last_name [String] Last (family) name of the person.
        #
        #   @param maiden_name [String] Maiden name of the person, if applicable.
        #
        #   @param nationality [String] Nationality of the individual (ISO 3166-1 alpha-3 country code).
        #
        #   @param phone_number [String] Contact phone number including country code.
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

      # @see Dataleon::Models::Individual#risk
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
        #   Risk assessment associated with the individual.
        #
        #   @param code [String] Risk category or code identifier.
        #
        #   @param reason [String] Explanation or justification for the assigned risk.
        #
        #   @param score [Float] Numeric risk score between 0.0 and 1.0 indicating severity or confidence.
      end

      class Tag < Dataleon::Internal::Type::BaseModel
        # @!attribute key
        #   Name of the tag used to identify the metadata field.
        #
        #   @return [String, nil]
        optional :key, String

        # @!attribute private
        #   Indicates whether the tag is private (not visible to external users).
        #
        #   @return [Boolean, nil]
        optional :private, Dataleon::Internal::Type::Boolean

        # @!attribute type
        #   Data type of the tag value (e.g., "string", "number", "boolean").
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute value
        #   Value assigned to the tag.
        #
        #   @return [String, nil]
        optional :value, String

        # @!method initialize(key: nil, private: nil, type: nil, value: nil)
        #   Represents a key-value metadata tag that can be associated with entities such as
        #   individuals or companies.
        #
        #   @param key [String] Name of the tag used to identify the metadata field.
        #
        #   @param private [Boolean] Indicates whether the tag is private (not visible to external users).
        #
        #   @param type [String] Data type of the tag value (e.g., "string", "number", "boolean").
        #
        #   @param value [String] Value assigned to the tag.
      end

      # @see Dataleon::Models::Individual#technical_data
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
        #   {Dataleon::Models::Individual::TechnicalData} for more details.
        #
        #   Technical metadata related to the request (e.g., QR code settings, language).
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
