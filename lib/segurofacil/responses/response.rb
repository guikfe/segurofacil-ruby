module Segurofacil
  module Responses
    class Response

      HTTP_SUCCESS=[200, 201, 202, 203, 204, 205, 206, 207, 226]

      attr_reader :status_code, :raw_body

      def initialize(response)
        @status_code = response.fetch(:code)
        @raw_body = response.fetch(:body)
      end

      def success?
        HTTP_SUCCESS.include? status_code
      end

      def error?
        !success?
      end

    end
  end
end
