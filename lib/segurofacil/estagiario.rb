require 'segurofacil/rest/estagiario_create'
require 'segurofacil/rest/estagiario_remove'
require 'segurofacil/responses/estagiario_create_response'
require 'segurofacil/responses/estagiario_remove_response'

module Segurofacil
  class Estagiario

    extend Segurofacil::REST::EstagiarioCreate
    extend Segurofacil::REST::EstagiarioRemove

    NAME='nome'
    CPF='cPF'
    BIRTHDATE='dOB'
    GENDER='sexoId'

    MALE=1
    FEMALE=2

    attr_reader :name, :cpf, :birthdate, :gender

    def initialize(options)
      @name      = options.fetch(NAME)
      @cpf       = options.fetch(CPF)
      @birthdate = options.fetch(BIRTHDATE)
      @gender    = options.fetch(GENDER)
    end

    def male?
      gender == MALE
    end

    def female?
      gender == FEMALE
    end

    class << self

      def create(estagiario, cnpj)
        res = super estagiario, cnpj
        get_create_response(res)
      end

      # Remove a estagiario from the policy
      # @param estagiario_cpf [String] the estagiario to be removed
      # @param cnpj [String] the cnpj of the company that holds the estagiario's policy
      # @return EstagiarioRemoveResponse
      def remove(estagiario_cpf, cnpj)
        res = super estagiario_cpf, cnpj
        get_remove_response(res)
      end

      def convert_to_estagiario(hash)
        self.new hash
      end

      def ary_to_estagiarios(list)
        return [] if list.nil?
        list.map {|item| convert_to_estagiario(item) }
      end

      private

      def get_create_response(res)
        Segurofacil::Responses::EstagiarioCreateResponse.new(res)
      end

      def get_remove_response(res)
        Segurofacil::Responses::EstagiarioRemoveResponse.new(res)
      end

    end

  end
end
