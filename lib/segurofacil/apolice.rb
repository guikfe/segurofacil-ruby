require 'segurofacil/rest/request'
require 'segurofacil/rest/apolice_create'
require 'segurofacil/responses/apolice_create_response'

module Segurofacil
  class Apolice

    extend Segurofacil::REST::ApoliceCreate

    class << self

      # Create a new insurance policy
      # @param company [Hash] the new insurance holder
      # @return [ApoliceCreateResponse]
      # @example Create new policy
      #   Segurofacil::Apolice.create({
      #     name: "Company Test",
      #     razaoSocial: "Company Test",
      #     cNPJ: "33.333.333/0001-33",
      #     responsavel: "Test",
      #     cPF: "333.333.333-33",
      #     qualificacao: "Test",
      #     email: "user@email.com",
      #     telefone: "35555555",
      #     atividade: "Test",
      #     address1: "Test",
      #     address2: "Test",
      #     bairro: "Manhattan",
      #     city: "NYC",
      #     estado: "NY",
      #     cep: "12345678"
      #   })
      def create(company)
        res = super company
        get_response(res)
      end

      private

      def get_response(res)
        Segurofacil::Responses::ApoliceCreateResponse.new(res)
      end

    end

  end
end
