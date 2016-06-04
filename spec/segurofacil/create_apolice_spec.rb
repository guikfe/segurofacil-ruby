require 'spec_helper'

describe Segurofacil do
  let(:invalid_info) { {name: "Empresa teste 1",razaoSocial: "Empresa teste 1",cNPJ: "37.777.823/0001-38",responsavel: "teste",cPF: "teste",qualificacao: "teste",email: "bia@estagiariosonline.com.br",telefone: "35555555",atividade: "teste",address1: "teste",address2: "teste",bairro: "Pinheiros",city: "São Paulo",estado: "São Paulo",cep: "05422010"} }
  let(:valid_info) { {name: "Empresa teste 1",razaoSocial: "Empresa teste 1",cNPJ: "37.777.823/0001-38",responsavel: "teste",cPF: "31317660773",qualificacao: "teste",email: "bia@estagiariosonline.com.br",telefone: "6235555555",atividade: "teste",address1: "teste",address2: "teste",bairro: "Pinheiros",city: "São Paulo",estado: "São Paulo",cep: "74840-600"} }

  it 'won\'t create invalid apolice' do
    r = Segurofacil::Apolice.create(invalid_info)
    expect(r.error?).to be true
  end

  it 'will create valid apolice' do
    r = Segurofacil::Apolice.create(valid_info)
    expect(r.raw_body).to eq 'Já existe apólice ativa para essa empresa.'
  end

end
