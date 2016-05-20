module Segurofacil
  module REST
    module EstagiariosGet

      def get_request(cnpj)
        Segurofacil::REST::Request.post(
          'getestagiarios',
          params: cnpj
        ).perform
      end

    end
  end
end
