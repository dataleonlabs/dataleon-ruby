# typed: strong

module Dataleon
  module Models
    class Check < Dataleon::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(Dataleon::Check, Dataleon::Internal::AnyHash) }

      # Indicates whether the result or data is masked/hidden.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :masked

      sig { params(masked: T::Boolean).void }
      attr_writer :masked

      # Additional message or explanation about the check result.
      sig { returns(T.nilable(String)) }
      attr_reader :message

      sig { params(message: String).void }
      attr_writer :message

      # Name or type of the check performed.
      sig { returns(T.nilable(String)) }
      attr_reader :name

      sig { params(name: String).void }
      attr_writer :name

      # Result of the check, true if passed.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :validate

      sig { params(validate: T::Boolean).void }
      attr_writer :validate

      # Importance or weight of the check, often used in scoring.
      sig { returns(T.nilable(Integer)) }
      attr_reader :weight

      sig { params(weight: Integer).void }
      attr_writer :weight

      # Represents a verification check result.
      sig do
        params(
          masked: T::Boolean,
          message: String,
          name: String,
          validate: T::Boolean,
          weight: Integer
        ).returns(T.attached_class)
      end
      def self.new(
        # Indicates whether the result or data is masked/hidden.
        masked: nil,
        # Additional message or explanation about the check result.
        message: nil,
        # Name or type of the check performed.
        name: nil,
        # Result of the check, true if passed.
        validate: nil,
        # Importance or weight of the check, often used in scoring.
        weight: nil
      )
      end

      sig do
        override.returns(
          {
            masked: T::Boolean,
            message: String,
            name: String,
            validate: T::Boolean,
            weight: Integer
          }
        )
      end
      def to_hash
      end
    end
  end
end
