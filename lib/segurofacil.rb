require 'segurofacil/rest/request'
require 'segurofacil/rest/apolice_cancel'
require 'segurofacil/rest/apolice_create'
require 'segurofacil/rest/estagiario_create'
require 'segurofacil/rest/estagiario_remove'
require 'segurofacil/rest/estagiarios_get'

require 'segurofacil/responses/response'
require 'segurofacil/responses/apolice_cancel_response'
require 'segurofacil/responses/apolice_create_response'
require 'segurofacil/responses/estagiario_create_response'
require 'segurofacil/responses/estagiario_remove_response'
require 'segurofacil/responses/estagiarios_get_response'

require 'segurofacil/version'
require 'segurofacil/apolice'
require 'segurofacil/estagiario'
require 'segurofacil/estagiarios'

module Segurofacil

  class << self
    attr_accessor :api_base, :partner_name, :email, :password
  end

  self.api_base     = 'https://www.segurofacil.com.br/parceiros/api'.freeze
  self.partner_name = ENV['SEGUROFACIL_PARTNER_NAME']
  self.email        = ENV['SEGUROFACIL_EMAIL']
  self.password     = ENV['SEGUROFACIL_PASSWORD']

end
