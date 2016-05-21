module Segurofacil
  module REST
    module EstagiariosGet

      PATH = 'getestagiarios'

      def get(cnpj)
        Segurofacil::REST::Request.post(
          PATH,
          params: cnpj
        ).perform
      end

    end
  end
end
