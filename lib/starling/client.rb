require 'uri'

module Starling
  class Client
    ENVIRONMENT_BASE_URLS = {
      production: 'https://api.starlingbank.com',
      sandbox: 'https://api-sandbox.starlingbank.com'
    }.freeze

    def initialize(options = {})
      raise ArgumentError, 'access_token must be provided' unless options[:access_token]

      environment = options.delete(:environment) { :production }

      @api_service = ApiService.new(fetch_base_url_for_environment(environment),
                                    options)
    end

    def account
      Services::AccountService.new(@api_service)
    end

    def account_balance
      Services::AccountBalanceService.new(@api_service)
    end

    def transactions
      Services::TransactionsService.new(@api_service)
    end

    private

    def fetch_base_url_for_environment(environment)
      ENVIRONMENT_BASE_URLS.fetch(environment) do
        raise ArgumentError, "#{environment} is not a valid environment, must be one " \
                             "of #{ENVIRONMENT_BASE_URLS.keys.join(', ')}"
      end
    end
  end
end