require 'rest_client'
require 'multi_json'

module Segurofacil
  module REST
    class Request

      attr_reader :path, :method, :parameters

      DEFAULT_HEADERS = {
        'Content-Type' => 'application/x-www-form-urlencoded',
        'Accept'       => 'application/json',
        'User-Agent'   => "segurofacil-ruby/#{Segurofacil::VERSION}"
      }

      def initialize(path, method, options={})
        @path = path
        @method = method
        @parameters = options.fetch(:params, Hash.new)
      end

      def perform
        json_res = {}

        begin
          res = RestClient::Request.execute request_params
          json_res[:body] = MultiJson.load res.body
          json_res[:code] = res.code
        rescue RestClient::ExceptionWithResponse => e
          parsed_error = MultiJson.load e.http_body

          json_res[:error] = true
          json_res[:body] = parsed_error
          json_res[:code] = e.response.code
        end

        json_res
      end

      class << self

        def post(path, options={})
          self.new path, 'POST', options
        end

      end

      private

      def request_params
        {
          method: method,
          url: resource_url,
          payload: parameters.merge(credentials),
          headers: DEFAULT_HEADERS
        }
      end

      def resource_url
        "#{Segurofacil.api_base}/#{Segurofacil.partner_name}/#{path}"
      end

      def credentials
        {
          credentials: {
            email: Segurofacil.email,
            password: Segurofacil.password
          }
        }
      end

    end
  end
end
