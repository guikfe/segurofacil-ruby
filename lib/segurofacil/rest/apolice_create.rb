require 'segurofacil/rest/request'

module Segurofacil
  module REST
    module ApoliceCreate

      def create(company)
        Segurofacil::REST::Request.post(
          'createapolice',
          params: {
            company: company
          }
        ).perform
      end

    end
  end
end