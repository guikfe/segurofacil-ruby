module Segurofacil
  module REST
    module ApoliceCreate

      PATH = 'createapolice'

      def create(company)
        Segurofacil::REST::Request.post(
          PATH,
          params: {
            company: company
          }
        ).perform
      end

    end
  end
end