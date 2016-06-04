require 'spec_helper'

describe Segurofacil do
  let(:cnpj) { '37.777.823/0001-38' }
  let(:not_registered_cpf) { '42233661222' }
  let(:registered_cpf) { '117.735.434-90' }

  it 'remove non existing intern' do
    r = Segurofacil::Estagiario.remove(not_registered_cpf, cnpj)
    expect(r.error?).to be_truthy
    expect(r.raw_body).to eq 'Nenhum estagiário ativo localizado.'
  end

  it 'remove existing intern' do
    r = Segurofacil::Estagiario.remove(registered_cpf, cnpj)
    expect(r.success?).to be_truthy
    expect(r.raw_body).to include 'Estagiario Excluido com sucesso.'
  end

end
