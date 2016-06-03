module Segurofacil
  module Responses
    class EstagiarioCreateResponse < Response

      def id
        return nil if error?
        @id ||= raw_body
      end

    end
  end
end
