module Segurofacil
  module REST
    module EstagiarioRemove

      PATH = 'removeestagiario'

      def remove(estagiario_cpf, cnpj)
        Segurofacil::REST::Request.post(
          PATH,
          params: {
            cpf: estagiario_cpf,
            cnpj: cnpj
          }
        ).perform
      end

    end
  end
end
