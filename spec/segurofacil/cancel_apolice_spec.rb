require 'spec_helper'

describe Segurofacil do
  let(:invalid_cnpj) { 'invalid_cnpj'}
  let(:not_registered_cnpj) { '00.000.000/0000-00'}
  let(:valid_cnpj) { '37.777.823/0001-38' }

  it 'won\'t cancel for invalid cnpj' do
    r = Segurofacil::Apolice.cancel(invalid_cnpj)
    expect(r.error?).to be_truthy
  end

  it 'won\'t cancel for not registered company' do
    r = Segurofacil::Apolice.cancel(not_registered_cnpj)
    expect(r.error?).to be_truthy
    expect(r.raw_body).to eq 'Nenhuma apólice EstagiarioOnline vigente localizada para CNPJ 00.000.000/0000-00'
  end

  it 'will cancel existing policy' do
    r = Segurofacil::Apolice.cancel(valid_cnpj)
    expect(r.success?).to be_truthy
    expect(r.raw_body).to eq 'Apólice Excluida com sucesso.'
  end

end
