# typed: strong

module Dataleon
  module Models
    module Individuals
      class Kbis < Dataleon::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(Dataleon::Individuals::Kbis, Dataleon::Internal::AnyHash)
          end

        # Declared business activities.
        sig { returns(T.nilable(String)) }
        attr_reader :activities

        sig { params(activities: String).void }
        attr_writer :activities

        # Official address of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :address

        sig { params(address: String).void }
        attr_writer :address

        # Registered social capital of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :capital_social

        sig { params(capital_social: String).void }
        attr_writer :capital_social

        # Date of closure, if applicable.
        sig { returns(T.nilable(Date)) }
        attr_reader :closure_date

        sig { params(closure_date: Date).void }
        attr_writer :closure_date

        # Official name of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :company_name

        sig { params(company_name: String).void }
        attr_writer :company_name

        # Date when the document was issued.
        sig { returns(T.nilable(Date)) }
        attr_reader :document_date

        sig { params(document_date: Date).void }
        attr_writer :document_date

        # Fixed identifier for the document type.
        sig { returns(T.nilable(String)) }
        attr_reader :document_type

        sig { params(document_type: String).void }
        attr_writer :document_type

        # Date of the first fiscal closure.
        sig { returns(T.nilable(Date)) }
        attr_reader :first_closure_date

        sig { params(first_closure_date: Date).void }
        attr_writer :first_closure_date

        # Registry office that issued the document.
        sig { returns(T.nilable(String)) }
        attr_reader :from_greffe

        sig { params(from_greffe: String).void }
        attr_writer :from_greffe

        # Legal form of the company (e.g., SAS, SARL).
        sig { returns(T.nilable(String)) }
        attr_reader :legal_form

        sig { params(legal_form: String).void }
        attr_writer :legal_form

        # List of people or entities associated with the company.
        sig do
          returns(T.nilable(T::Array[Dataleon::Individuals::Kbis::Member]))
        end
        attr_reader :members

        sig do
          params(
            members: T::Array[Dataleon::Individuals::Kbis::Member::OrHash]
          ).void
        end
        attr_writer :members

        # Business registry number or NGestion.
        sig { returns(T.nilable(String)) }
        attr_reader :ngestion

        sig { params(ngestion: String).void }
        attr_writer :ngestion

        # RCS (Company Registration Number).
        sig { returns(T.nilable(String)) }
        attr_reader :rcs_number

        sig { params(rcs_number: String).void }
        attr_writer :rcs_number

        # Date of registration with the registry.
        sig { returns(T.nilable(Date)) }
        attr_reader :registration_date

        sig { params(registration_date: Date).void }
        attr_writer :registration_date

        # SIREN number of the company.
        sig { returns(T.nilable(String)) }
        attr_reader :siren_info

        sig { params(siren_info: String).void }
        attr_writer :siren_info

        # A document representing official registration data from the KBIS (France).
        sig do
          params(
            activities: String,
            address: String,
            capital_social: String,
            closure_date: Date,
            company_name: String,
            document_date: Date,
            document_type: String,
            first_closure_date: Date,
            from_greffe: String,
            legal_form: String,
            members: T::Array[Dataleon::Individuals::Kbis::Member::OrHash],
            ngestion: String,
            rcs_number: String,
            registration_date: Date,
            siren_info: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Declared business activities.
          activities: nil,
          # Official address of the company.
          address: nil,
          # Registered social capital of the company.
          capital_social: nil,
          # Date of closure, if applicable.
          closure_date: nil,
          # Official name of the company.
          company_name: nil,
          # Date when the document was issued.
          document_date: nil,
          # Fixed identifier for the document type.
          document_type: nil,
          # Date of the first fiscal closure.
          first_closure_date: nil,
          # Registry office that issued the document.
          from_greffe: nil,
          # Legal form of the company (e.g., SAS, SARL).
          legal_form: nil,
          # List of people or entities associated with the company.
          members: nil,
          # Business registry number or NGestion.
          ngestion: nil,
          # RCS (Company Registration Number).
          rcs_number: nil,
          # Date of registration with the registry.
          registration_date: nil,
          # SIREN number of the company.
          siren_info: nil
        )
        end

        sig do
          override.returns(
            {
              activities: String,
              address: String,
              capital_social: String,
              closure_date: Date,
              company_name: String,
              document_date: Date,
              document_type: String,
              first_closure_date: Date,
              from_greffe: String,
              legal_form: String,
              members: T::Array[Dataleon::Individuals::Kbis::Member],
              ngestion: String,
              rcs_number: String,
              registration_date: Date,
              siren_info: String
            }
          )
        end
        def to_hash
        end

        class Member < Dataleon::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                Dataleon::Individuals::Kbis::Member,
                Dataleon::Internal::AnyHash
              )
            end

          # Unique identifier for the member.
          sig { returns(T.nilable(String)) }
          attr_reader :id

          sig { params(id: String).void }
          attr_writer :id

          # Address of the member.
          sig { returns(T.nilable(String)) }
          attr_reader :address

          sig { params(address: String).void }
          attr_writer :address

          # Birth date of the person (only if type = person).
          sig { returns(T.nilable(Time)) }
          attr_reader :birthday

          sig { params(birthday: Time).void }
          attr_writer :birthday

          # Place of birth (only if type = person).
          sig { returns(T.nilable(String)) }
          attr_reader :birthplace

          sig { params(birthplace: String).void }
          attr_writer :birthplace

          # Country of residence or registration.
          sig { returns(T.nilable(String)) }
          attr_reader :country

          sig { params(country: String).void }
          attr_writer :country

          # Email address of the member.
          sig { returns(T.nilable(String)) }
          attr_reader :email

          sig { params(email: String).void }
          attr_writer :email

          # First name of the person (only if type = person).
          sig { returns(T.nilable(String)) }
          attr_reader :first_name

          sig { params(first_name: String).void }
          attr_writer :first_name

          # Indicates if this member is a beneficial owner.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_beneficial_owner

          sig { params(is_beneficial_owner: T::Boolean).void }
          attr_writer :is_beneficial_owner

          # Indicates if this member is a delegator.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :is_delegator

          sig { params(is_delegator: T::Boolean).void }
          attr_writer :is_delegator

          # Last name of the person (only if type = person).
          sig { returns(T.nilable(String)) }
          attr_reader :last_name

          sig { params(last_name: String).void }
          attr_writer :last_name

          # Indicates if the member passed liveness verification.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :liveness_verification

          sig { params(liveness_verification: T::Boolean).void }
          attr_writer :liveness_verification

          # Name of the company (only if type = company).
          sig { returns(T.nilable(String)) }
          attr_reader :name

          sig { params(name: String).void }
          attr_writer :name

          # Ownership percentage held by the member.
          sig { returns(T.nilable(Integer)) }
          attr_reader :ownership_percentage

          sig { params(ownership_percentage: Integer).void }
          attr_writer :ownership_percentage

          # Phone number of the member.
          sig { returns(T.nilable(String)) }
          attr_reader :phone_number

          sig { params(phone_number: String).void }
          attr_writer :phone_number

          # Postal code of the member's address.
          sig { returns(T.nilable(String)) }
          attr_reader :postal_code

          sig { params(postal_code: String).void }
          attr_writer :postal_code

          # Company registration number (if type = company).
          sig { returns(T.nilable(String)) }
          attr_reader :registration_id

          sig { params(registration_id: String).void }
          attr_writer :registration_id

          # Type of relation (e.g., shareholder, director).
          sig { returns(T.nilable(String)) }
          attr_reader :relation

          sig { params(relation: String).void }
          attr_writer :relation

          # Roles held by the member (e.g., legal_representative or shareholder).
          sig { returns(T.nilable(String)) }
          attr_reader :roles

          sig { params(roles: String).void }
          attr_writer :roles

          # Source of the data (e.g., gouv, user, company).
          sig { returns(T.nilable(String)) }
          attr_reader :source

          sig { params(source: String).void }
          attr_writer :source

          # Current status of the member.
          sig { returns(T.nilable(String)) }
          attr_reader :status

          sig { params(status: String).void }
          attr_writer :status

          # Type of entity (company or person).
          sig do
            returns(
              T.nilable(Dataleon::Individuals::Kbis::Member::Type::OrSymbol)
            )
          end
          attr_reader :type

          sig do
            params(
              type: Dataleon::Individuals::Kbis::Member::Type::OrSymbol
            ).void
          end
          attr_writer :type

          # Workspace identifier for internal tracking.
          sig { returns(T.nilable(String)) }
          attr_reader :workspace_id

          sig { params(workspace_id: String).void }
          attr_writer :workspace_id

          # A member (person or entity) associated with the company from a KBIS document.
          sig do
            params(
              id: String,
              address: String,
              birthday: Time,
              birthplace: String,
              country: String,
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
              source: String,
              status: String,
              type: Dataleon::Individuals::Kbis::Member::Type::OrSymbol,
              workspace_id: String
            ).returns(T.attached_class)
          end
          def self.new(
            # Unique identifier for the member.
            id: nil,
            # Address of the member.
            address: nil,
            # Birth date of the person (only if type = person).
            birthday: nil,
            # Place of birth (only if type = person).
            birthplace: nil,
            # Country of residence or registration.
            country: nil,
            # Email address of the member.
            email: nil,
            # First name of the person (only if type = person).
            first_name: nil,
            # Indicates if this member is a beneficial owner.
            is_beneficial_owner: nil,
            # Indicates if this member is a delegator.
            is_delegator: nil,
            # Last name of the person (only if type = person).
            last_name: nil,
            # Indicates if the member passed liveness verification.
            liveness_verification: nil,
            # Name of the company (only if type = company).
            name: nil,
            # Ownership percentage held by the member.
            ownership_percentage: nil,
            # Phone number of the member.
            phone_number: nil,
            # Postal code of the member's address.
            postal_code: nil,
            # Company registration number (if type = company).
            registration_id: nil,
            # Type of relation (e.g., shareholder, director).
            relation: nil,
            # Roles held by the member (e.g., legal_representative or shareholder).
            roles: nil,
            # Source of the data (e.g., gouv, user, company).
            source: nil,
            # Current status of the member.
            status: nil,
            # Type of entity (company or person).
            type: nil,
            # Workspace identifier for internal tracking.
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
                source: String,
                status: String,
                type: Dataleon::Individuals::Kbis::Member::Type::OrSymbol,
                workspace_id: String
              }
            )
          end
          def to_hash
          end

          # Type of entity (company or person).
          module Type
            extend Dataleon::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(Symbol, Dataleon::Individuals::Kbis::Member::Type)
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            COMPANY =
              T.let(
                :company,
                Dataleon::Individuals::Kbis::Member::Type::TaggedSymbol
              )
            PERSON =
              T.let(
                :person,
                Dataleon::Individuals::Kbis::Member::Type::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  Dataleon::Individuals::Kbis::Member::Type::TaggedSymbol
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
end
