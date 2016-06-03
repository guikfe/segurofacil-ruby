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