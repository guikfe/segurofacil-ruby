require 'segurofacil/rest/request'
require 'segurofacil/rest/apolice_create'

module Segurofacil
  class Apolice

    extend Segurofacil::REST::ApoliceCreate

    attr_reader :company_id, :name, :razao_social, :cnpj, :responsavel, :cpf,
      :qualificacao, :email, :telefone, :atividade, :address1, :address2,
      :bairro, :city, :estado, :cep

  end
end
