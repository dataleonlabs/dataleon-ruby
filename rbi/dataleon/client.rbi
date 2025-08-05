# typed: strong

module Dataleon
  class Client < Dataleon::Internal::Transport::BaseClient
    DEFAULT_MAX_RETRIES = 2

    DEFAULT_TIMEOUT_IN_SECONDS = T.let(60.0, Float)

    DEFAULT_INITIAL_RETRY_DELAY = T.let(0.5, Float)

    DEFAULT_MAX_RETRY_DELAY = T.let(8.0, Float)

    # API key needed to authorize requests. You must provide a valid API key in the
    # `Api-Key` header. Get your API key from the Dataleon dashboard.
    sig { returns(String) }
    attr_reader :api_key

    sig { returns(Dataleon::Resources::Individuals) }
    attr_reader :individuals

    sig { returns(Dataleon::Resources::Companies) }
    attr_reader :companies

    # @api private
    sig { override.returns(T::Hash[String, String]) }
    private def auth_headers
    end

    # Creates and returns a new client for interacting with the API.
    sig do
      params(
        api_key: T.nilable(String),
        base_url: T.nilable(String),
        max_retries: Integer,
        timeout: Float,
        initial_retry_delay: Float,
        max_retry_delay: Float
      ).returns(T.attached_class)
    end
    def self.new(
      # API key needed to authorize requests. You must provide a valid API key in the
      # `Api-Key` header. Get your API key from the Dataleon dashboard. Defaults to
      # `ENV["DATALEON_API_KEY"]`
      api_key: ENV["DATALEON_API_KEY"],
      # Override the default base URL for the API, e.g.,
      # `"https://api.example.com/v2/"`. Defaults to `ENV["DATALEON_BASE_URL"]`
      base_url: ENV["DATALEON_BASE_URL"],
      # Max number of retries to attempt after a failed retryable request.
      max_retries: Dataleon::Client::DEFAULT_MAX_RETRIES,
      timeout: Dataleon::Client::DEFAULT_TIMEOUT_IN_SECONDS,
      initial_retry_delay: Dataleon::Client::DEFAULT_INITIAL_RETRY_DELAY,
      max_retry_delay: Dataleon::Client::DEFAULT_MAX_RETRY_DELAY
    )
    end
  end
end
