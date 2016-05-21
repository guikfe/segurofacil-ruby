# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'segurofacil/version'

Gem::Specification.new do |spec|
  spec.name          = "segurofacil-ruby"
  spec.version       = Segurofacil::VERSION
  spec.authors       = ["Guilherme"]
  spec.email         = ["guilhermekfe@outlook.com"]

  spec.summary       = %q{Gem to wrap segurofacil.com.br API}
  spec.description   = %q{Gem to wrap segurofacil.com.br API}
  spec.homepage      = "https://github.com/guilhermekfe/segurofacil-ruby"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency "dotenv"

  spec.add_dependency 'rest-client'
  spec.add_dependency 'multi_json'
end
