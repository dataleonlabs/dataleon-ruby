# frozen_string_literal: true

module Dataleon
  class Client < Dataleon::Internal::Transport::BaseClient
    # Default max number of retries to attempt after a failed retryable request.
    DEFAULT_MAX_RETRIES = 2

    # Default per-request timeout.
    DEFAULT_TIMEOUT_IN_SECONDS = 60.0

    # Default initial retry delay in seconds.
    # Overall delay is calculated using exponential backoff + jitter.
    DEFAULT_INITIAL_RETRY_DELAY = 0.5

    # Default max retry delay in seconds.
    DEFAULT_MAX_RETRY_DELAY = 8.0

    # API key needed to authorize requests. You must provide a valid API key in the
    # `Api-Key` header. Get your API key from the Dataleon dashboard.
    # @return [String]
    attr_reader :api_key

    # @return [Dataleon::Resources::Individuals]
    attr_reader :individuals

    # @return [Dataleon::Resources::Companies]
    attr_reader :companies

    # @api private
    #
    # @return [Hash{String=>String}]
    private def auth_headers
      {"api-key" => @api_key}
    end

    # Creates and returns a new client for interacting with the API.
    #
    # @param api_key [String, nil] API key needed to authorize requests. You must provide a valid API key in the
    # `Api-Key` header. Get your API key from the Dataleon dashboard. Defaults to
    # `ENV["DATALEON_API_KEY"]`
    #
    # @param base_url [String, nil] Override the default base URL for the API, e.g.,
    # `"https://api.example.com/v2/"`. Defaults to `ENV["DATALEON_BASE_URL"]`
    #
    # @param max_retries [Integer] Max number of retries to attempt after a failed retryable request.
    #
    # @param timeout [Float]
    #
    # @param initial_retry_delay [Float]
    #
    # @param max_retry_delay [Float]
    def initialize(
      api_key: ENV["DATALEON_API_KEY"],
      base_url: ENV["DATALEON_BASE_URL"],
      max_retries: self.class::DEFAULT_MAX_RETRIES,
      timeout: self.class::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: self.class::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: self.class::DEFAULT_MAX_RETRY_DELAY
    )
      base_url ||= "https://inference.eu-west-1.dataleon.ai"

      if api_key.nil?
        raise ArgumentError.new("api_key is required, and can be set via environ: \"DATALEON_API_KEY\"")
      end

      @api_key = api_key.to_s

      super(
        base_url: base_url,
        timeout: timeout,
        max_retries: max_retries,
        initial_retry_delay: initial_retry_delay,
        max_retry_delay: max_retry_delay
      )

      @individuals = Dataleon::Resources::Individuals.new(client: self)
      @companies = Dataleon::Resources::Companies.new(client: self)
    end
  end
end
