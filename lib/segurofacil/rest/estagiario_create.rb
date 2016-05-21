module Segurofacil
  module REST
    module EstagiarioCreate

      PATH = 'addestagiario'

      def create(estagiario, cnpj)
        Segurofacil::REST::Request.post(
          PATH,
          params: {
            estagiario: estagiario,
            cnpj: cnpj
          }
        ).perform
      end

    end
  end
end
