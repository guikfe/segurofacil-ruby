require 'segurofacil/version'
require 'segurofacil/apolice'
require 'segurofacil/estagiarios'

require 'segurofacil/rest/apolice_create'
require 'segurofacil/rest/estagiarios_get'

module Segurofacil

  class << self
    attr_accessor :api_base, :partner_name, :email, :password
  end

  @api_base     = 'https://www.segurofacil.com.br/parceiros/api'.freeze
  @partner_name = ENV['SEGUROFACIL_PARTNER_NAME']
  @email        = ENV['SEGUROFACIL_EMAIL']
  @password     = ENV['SEGUROFACIL_PASSWORD']

end
