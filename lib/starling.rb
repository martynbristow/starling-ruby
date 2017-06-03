require 'starling/version'
require 'starling/utils'
require 'starling/client'
require 'starling/api_service'
require 'starling/request'
require 'starling/errors/base_error'
require 'starling/errors/api_error'
require 'starling/middlewares/raise_starling_errors'
require 'starling/services/base_service'
require 'starling/services/account_service'
require 'starling/services/account_balance_service'
require 'starling/services/addresses_service'
require 'starling/services/card_service'
require 'starling/services/contacts_service'
require 'starling/services/contact_accounts_service'
require 'starling/services/customer_service'
require 'starling/services/direct_debit_mandates_service'
require 'starling/services/direct_debit_transactions_service'
require 'starling/services/inbound_faster_payments_transactions_service'
require 'starling/services/outbound_faster_payments_transactions_service'
require 'starling/services/me_service'
require 'starling/services/transactions_service'
require 'starling/services/merchants_service'
require 'starling/services/merchant_locations_service'
require 'starling/resources/base_resource'
require 'starling/resources/account_resource'
require 'starling/resources/account_balance_resource'
require 'starling/resources/address_resource'
require 'starling/resources/addresses_resource'
require 'starling/resources/card_resource'
require 'starling/resources/contact_resource'
require 'starling/resources/contact_account_resource'
require 'starling/resources/customer_resource'
require 'starling/resources/direct_debit_mandate_resource'
require 'starling/resources/direct_debit_transaction_resource'
require 'starling/resources/inbound_faster_payments_transaction_resource'
require 'starling/resources/outbound_faster_payments_transaction_resource'
require 'starling/resources/me_resource'
require 'starling/resources/transaction_resource'
require 'starling/resources/merchant_resource'
require 'starling/resources/merchant_location_resource'

# A Ruby client for accessing the Starling Bank API
module Starling
end
