require 'spec_helper'

describe Segurofacil do
  let(:cnpj) { '37.777.823/0001-38' }

  it 'get all interns for a given company' do
    r = Segurofacil::Estagiarios.get(cnpj)
    expect(r.success?).to be_truthy
  end

end
