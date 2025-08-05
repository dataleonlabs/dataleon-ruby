# frozen_string_literal: true

module Dataleon
  module Models
    class Check < Dataleon::Internal::Type::BaseModel
      # @!attribute masked
      #   Indicates whether the result or data is masked/hidden.
      #
      #   @return [Boolean, nil]
      optional :masked, Dataleon::Internal::Type::Boolean

      # @!attribute message
      #   Additional message or explanation about the check result.
      #
      #   @return [String, nil]
      optional :message, String

      # @!attribute name
      #   Name or type of the check performed.
      #
      #   @return [String, nil]
      optional :name, String

      # @!attribute validate
      #   Result of the check, true if passed.
      #
      #   @return [Boolean, nil]
      optional :validate, Dataleon::Internal::Type::Boolean

      # @!attribute weight
      #   Importance or weight of the check, often used in scoring.
      #
      #   @return [Integer, nil]
      optional :weight, Integer

      # @!method initialize(masked: nil, message: nil, name: nil, validate: nil, weight: nil)
      #   Represents a verification check result.
      #
      #   @param masked [Boolean] Indicates whether the result or data is masked/hidden.
      #
      #   @param message [String] Additional message or explanation about the check result.
      #
      #   @param name [String] Name or type of the check performed.
      #
      #   @param validate [Boolean] Result of the check, true if passed.
      #
      #   @param weight [Integer] Importance or weight of the check, often used in scoring.
    end
  end
end
