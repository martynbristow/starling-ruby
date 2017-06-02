module Starling
  module Services
    class DirectDebitMandatesService < BaseService
      def get(id, options = {})
        response = @api_service.make_request(:get,
                                             "/direct-debit/mandates/#{id}",
                                             options)
        resource.new(response: response)
      end

      # TODO: Try cancelling a mandate and see what is returned, so we can do something
      # more clever than just return the Faraday::Response
      def delete(id, options = {})
        @api_service.make_request(:delete, "/direct-debit/mandates/#{id}", options)
      end

      def list(options = {})
        response = @api_service.make_request(:get, '/direct-debit/mandates', options)
        build_collection(response, key: 'mandates', resource: resource)
      end

      private

      def resource
        Resources::DirectDebitMandateResource
      end
    end
  end
end