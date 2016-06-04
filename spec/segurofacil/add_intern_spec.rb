require 'spec_helper'

describe Segurofacil do
  let(:cnpj) { '37.777.823/0001-38' }
  let(:valid_intern) { {nome: 'nome', cpf: '42233661222', dob: '01/01/1991', sexoId: 1} }

  it 'create new intern' do
    r = Segurofacil::Estagiario.create(valid_intern, cnpj)
    expect(r.success?).to be_truthy
  end

end
