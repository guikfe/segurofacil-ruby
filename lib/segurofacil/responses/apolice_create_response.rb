require 'segurofacil/responses/response'

module Segurofacil
  module Responses
    class ApoliceCreateResponse

      include Segurofacil::Responses::Response

      attr_reader :status_code, :raw_body

      def initialize(response)
        @status_code = response.fetch(:code)
        @raw_body = response.fetch(:body)
      end

    end
  end
end