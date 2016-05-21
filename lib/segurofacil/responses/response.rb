module Segurofacil
  module Responses
    module Response

      HTTP_SUCCESS=[200, 201, 202, 203, 204, 205, 206, 207, 226]

      def success?
        HTTP_SUCCESS.include? status_code
      end

      def error?
        !success?
      end

    end
  end
end
