require 'segurofacil/rest/estagiarios_get'
require 'segurofacil/estagiario'
require 'segurofacil/responses/estagiarios_get_response'

module Segurofacil
  class Estagiarios

    extend Segurofacil::REST::EstagiariosGet

    class << self

      def get(cnpj)
        res = super({ cnpj: cnpj })
        get_response(res)
      end

      private

      def get_response(res)
        Segurofacil::Responses::EstagiariosGetResponse.new(res)
      end

    end

  end
end