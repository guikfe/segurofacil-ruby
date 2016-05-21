require 'segurofacil/rest/estagiario_create'
require 'segurofacil/responses/estagiario_create_response'

module Segurofacil
  class Estagiario

    extend Segurofacil::REST::EstagiarioCreate

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
        get_response(res)
      end

      def convert_to_estagiario(hash)
        self.new hash
      end

      def ary_to_estagiarios(list)
        return [] if list.nil?
        list.map {|item| convert_to_estagiario(item) }
      end

      private

      def get_response(res)
        Segurofacil::Responses::EstagiarioCreateResponse.new(res)
      end

    end

  end
end
