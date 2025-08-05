# frozen_string_literal: true

module Dataleon
  module Models
    module Individuals
      class Kbis < Dataleon::Internal::Type::BaseModel
        # @!attribute activities
        #   Declared business activities.
        #
        #   @return [String, nil]
        optional :activities, String

        # @!attribute address
        #   Official address of the company.
        #
        #   @return [String, nil]
        optional :address, String

        # @!attribute capital_social
        #   Registered social capital of the company.
        #
        #   @return [String, nil]
        optional :capital_social, String

        # @!attribute closure_date
        #   Date of closure, if applicable.
        #
        #   @return [Date, nil]
        optional :closure_date, Date

        # @!attribute company_name
        #   Official name of the company.
        #
        #   @return [String, nil]
        optional :company_name, String

        # @!attribute document_date
        #   Date when the document was issued.
        #
        #   @return [Date, nil]
        optional :document_date, Date

        # @!attribute document_type
        #   Fixed identifier for the document type.
        #
        #   @return [String, nil]
        optional :document_type, String

        # @!attribute first_closure_date
        #   Date of the first fiscal closure.
        #
        #   @return [Date, nil]
        optional :first_closure_date, Date

        # @!attribute from_greffe
        #   Registry office that issued the document.
        #
        #   @return [String, nil]
        optional :from_greffe, String

        # @!attribute legal_form
        #   Legal form of the company (e.g., SAS, SARL).
        #
        #   @return [String, nil]
        optional :legal_form, String

        # @!attribute members
        #   List of people or entities associated with the company.
        #
        #   @return [Array<Dataleon::Models::Individuals::Kbis::Member>, nil]
        optional :members, -> { Dataleon::Internal::Type::ArrayOf[Dataleon::Individuals::Kbis::Member] }

        # @!attribute ngestion
        #   Business registry number or NGestion.
        #
        #   @return [String, nil]
        optional :ngestion, String

        # @!attribute rcs_number
        #   RCS (Company Registration Number).
        #
        #   @return [String, nil]
        optional :rcs_number, String

        # @!attribute registration_date
        #   Date of registration with the registry.
        #
        #   @return [Date, nil]
        optional :registration_date, Date

        # @!attribute siren_info
        #   SIREN number of the company.
        #
        #   @return [String, nil]
        optional :siren_info, String

        # @!method initialize(activities: nil, address: nil, capital_social: nil, closure_date: nil, company_name: nil, document_date: nil, document_type: nil, first_closure_date: nil, from_greffe: nil, legal_form: nil, members: nil, ngestion: nil, rcs_number: nil, registration_date: nil, siren_info: nil)
        #   A document representing official registration data from the KBIS (France).
        #
        #   @param activities [String] Declared business activities.
        #
        #   @param address [String] Official address of the company.
        #
        #   @param capital_social [String] Registered social capital of the company.
        #
        #   @param closure_date [Date] Date of closure, if applicable.
        #
        #   @param company_name [String] Official name of the company.
        #
        #   @param document_date [Date] Date when the document was issued.
        #
        #   @param document_type [String] Fixed identifier for the document type.
        #
        #   @param first_closure_date [Date] Date of the first fiscal closure.
        #
        #   @param from_greffe [String] Registry office that issued the document.
        #
        #   @param legal_form [String] Legal form of the company (e.g., SAS, SARL).
        #
        #   @param members [Array<Dataleon::Models::Individuals::Kbis::Member>] List of people or entities associated with the company.
        #
        #   @param ngestion [String] Business registry number or NGestion.
        #
        #   @param rcs_number [String] RCS (Company Registration Number).
        #
        #   @param registration_date [Date] Date of registration with the registry.
        #
        #   @param siren_info [String] SIREN number of the company.

        class Member < Dataleon::Internal::Type::BaseModel
          # @!attribute id
          #   Unique identifier for the member.
          #
          #   @return [String, nil]
          optional :id, String

          # @!attribute address
          #   Address of the member.
          #
          #   @return [String, nil]
          optional :address, String

          # @!attribute birthday
          #   Birth date of the person (only if type = person).
          #
          #   @return [Time, nil]
          optional :birthday, Time

          # @!attribute birthplace
          #   Place of birth (only if type = person).
          #
          #   @return [String, nil]
          optional :birthplace, String

          # @!attribute country
          #   Country of residence or registration.
          #
          #   @return [String, nil]
          optional :country, String

          # @!attribute email
          #   Email address of the member.
          #
          #   @return [String, nil]
          optional :email, String

          # @!attribute first_name
          #   First name of the person (only if type = person).
          #
          #   @return [String, nil]
          optional :first_name, String

          # @!attribute is_beneficial_owner
          #   Indicates if this member is a beneficial owner.
          #
          #   @return [Boolean, nil]
          optional :is_beneficial_owner, Dataleon::Internal::Type::Boolean

          # @!attribute is_delegator
          #   Indicates if this member is a delegator.
          #
          #   @return [Boolean, nil]
          optional :is_delegator, Dataleon::Internal::Type::Boolean

          # @!attribute last_name
          #   Last name of the person (only if type = person).
          #
          #   @return [String, nil]
          optional :last_name, String

          # @!attribute liveness_verification
          #   Indicates if the member passed liveness verification.
          #
          #   @return [Boolean, nil]
          optional :liveness_verification, Dataleon::Internal::Type::Boolean

          # @!attribute name
          #   Name of the company (only if type = company).
          #
          #   @return [String, nil]
          optional :name, String

          # @!attribute ownership_percentage
          #   Ownership percentage held by the member.
          #
          #   @return [Integer, nil]
          optional :ownership_percentage, Integer

          # @!attribute phone_number
          #   Phone number of the member.
          #
          #   @return [String, nil]
          optional :phone_number, String

          # @!attribute postal_code
          #   Postal code of the member's address.
          #
          #   @return [String, nil]
          optional :postal_code, String

          # @!attribute registration_id
          #   Company registration number (if type = company).
          #
          #   @return [String, nil]
          optional :registration_id, String

          # @!attribute relation
          #   Type of relation (e.g., shareholder, director).
          #
          #   @return [String, nil]
          optional :relation, String

          # @!attribute roles
          #   Roles held by the member (e.g., legal_representative or shareholder).
          #
          #   @return [String, nil]
          optional :roles, String

          # @!attribute source
          #   Source of the data (e.g., gouv, user, company).
          #
          #   @return [String, nil]
          optional :source, String

          # @!attribute status
          #   Current status of the member.
          #
          #   @return [String, nil]
          optional :status, String

          # @!attribute type
          #   Type of entity (company or person).
          #
          #   @return [Symbol, Dataleon::Models::Individuals::Kbis::Member::Type, nil]
          optional :type, enum: -> { Dataleon::Individuals::Kbis::Member::Type }

          # @!attribute workspace_id
          #   Workspace identifier for internal tracking.
          #
          #   @return [String, nil]
          optional :workspace_id, String

          # @!method initialize(id: nil, address: nil, birthday: nil, birthplace: nil, country: nil, email: nil, first_name: nil, is_beneficial_owner: nil, is_delegator: nil, last_name: nil, liveness_verification: nil, name: nil, ownership_percentage: nil, phone_number: nil, postal_code: nil, registration_id: nil, relation: nil, roles: nil, source: nil, status: nil, type: nil, workspace_id: nil)
          #   A member (person or entity) associated with the company from a KBIS document.
          #
          #   @param id [String] Unique identifier for the member.
          #
          #   @param address [String] Address of the member.
          #
          #   @param birthday [Time] Birth date of the person (only if type = person).
          #
          #   @param birthplace [String] Place of birth (only if type = person).
          #
          #   @param country [String] Country of residence or registration.
          #
          #   @param email [String] Email address of the member.
          #
          #   @param first_name [String] First name of the person (only if type = person).
          #
          #   @param is_beneficial_owner [Boolean] Indicates if this member is a beneficial owner.
          #
          #   @param is_delegator [Boolean] Indicates if this member is a delegator.
          #
          #   @param last_name [String] Last name of the person (only if type = person).
          #
          #   @param liveness_verification [Boolean] Indicates if the member passed liveness verification.
          #
          #   @param name [String] Name of the company (only if type = company).
          #
          #   @param ownership_percentage [Integer] Ownership percentage held by the member.
          #
          #   @param phone_number [String] Phone number of the member.
          #
          #   @param postal_code [String] Postal code of the member's address.
          #
          #   @param registration_id [String] Company registration number (if type = company).
          #
          #   @param relation [String] Type of relation (e.g., shareholder, director).
          #
          #   @param roles [String] Roles held by the member (e.g., legal_representative or shareholder).
          #
          #   @param source [String] Source of the data (e.g., gouv, user, company).
          #
          #   @param status [String] Current status of the member.
          #
          #   @param type [Symbol, Dataleon::Models::Individuals::Kbis::Member::Type] Type of entity (company or person).
          #
          #   @param workspace_id [String] Workspace identifier for internal tracking.

          # Type of entity (company or person).
          #
          # @see Dataleon::Models::Individuals::Kbis::Member#type
          module Type
            extend Dataleon::Internal::Type::Enum

            COMPANY = :company
            PERSON = :person

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
