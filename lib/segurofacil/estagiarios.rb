require 'segurofacil/rest/estagiarios_get'
require 'segurofacil/estagiario'

module Segurofacil
  class Estagiarios

    extend Segurofacil::REST::EstagiariosGet

    class << self
      def get(cnpj)
        res = get_request(cnpj)
        res[:estagiarios] = get_estagiarios(res)
        res
      end

      private

      def get_estagiarios(res)
        return unless res[:code] == 200
        Estagiario.to_estagiarios(res.fetch(:body))
      end

    end

  end
end