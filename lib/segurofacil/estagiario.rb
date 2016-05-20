module Segurofacil
  class Estagiario

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

      def convert_to_estagiario(hash)
        self.new hash
      end

      def to_estagiarios(list)
        return [] if list.nil?
        list.map {|item| convert_to_estagiario(item) }
      end

    end

  end
end
