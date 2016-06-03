require_relative 'segurofacil/rest/request'
require_relative 'segurofacil/rest/apolice_cancel'
require_relative 'segurofacil/rest/apolice_create'
require_relative 'segurofacil/rest/estagiario_create'
require_relative 'segurofacil/rest/estagiario_remove'
require_relative 'segurofacil/rest/estagiarios_get'

require_relative 'segurofacil/responses/response'
require_relative 'segurofacil/responses/apolice_cancel_response'
require_relative 'segurofacil/responses/apolice_create_response'
require_relative 'segurofacil/responses/estagiario_create_response'
require_relative 'segurofacil/responses/estagiario_remove_response'
require_relative 'segurofacil/responses/estagiarios_get_response'

require_relative 'segurofacil/version'
require_relative 'segurofacil/apolice'
require_relative 'segurofacil/estagiario'
require_relative 'segurofacil/estagiarios'

module Segurofacil

  class << self
    attr_accessor :api_base, :partner_name, :email, :password
  end

  @api_base     = 'https://www.segurofacil.com.br/parceiros/api'.freeze
  @partner_name = ENV['SEGUROFACIL_PARTNER_NAME']
  @email        = ENV['SEGUROFACIL_EMAIL']
  @password     = ENV['SEGUROFACIL_PASSWORD']

end
