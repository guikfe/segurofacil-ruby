require 'segurofacil/responses/response'

module Segurofacil
  module Responses
    class EstagiariosGetResponse < Response

      def estagiarios
        @estagiarios ||= Estagiario.ary_to_estagiarios(raw_body)
      end

    end
  end
end
