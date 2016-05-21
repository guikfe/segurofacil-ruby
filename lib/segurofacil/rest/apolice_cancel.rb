module Segurofacil
  module REST
    module ApoliceCancel

      PATH = 'cancelapolice'

      def cancel(cnpj)
        Segurofacil::REST::Request.post(
          PATH,
          params: {
            cnpj: cnpj
          }
        ).perform
      end

    end
  end
end