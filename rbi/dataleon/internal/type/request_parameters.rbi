# typed: strong

module Dataleon
  module Internal
    module Type
      # @api private
      module RequestParameters
        # Options to specify HTTP behaviour for this request.
        sig { returns(Dataleon::RequestOptions) }
        attr_reader :request_options

        sig { params(request_options: Dataleon::RequestOptions::OrHash).void }
        attr_writer :request_options

        # @api private
        module Converter
          # @api private
          sig do
            params(params: T.anything).returns(
              [T.anything, Dataleon::Internal::AnyHash]
            )
          end
          def dump_request(params)
          end
        end
      end
    end
  end
end
