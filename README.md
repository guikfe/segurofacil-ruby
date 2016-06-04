# Segurofacil

[SeguroFacil](https://www.segurofacil.com.br/) ruby API library
## Installation

Add this line to your application's Gemfile:

```ruby
gem 'segurofacil-ruby', require: false
```

```ruby
gem 'segurofacil-ruby', git: 'https://github.com/guilhermekfe/segurofacil-ruby.git', require: false
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install segurofacil-ruby
    
And then create an initializer with that:
```ruby
require 'segurofacil'
```

## Usage

Make sure you have the following variables in your environment.

```
SEGUROFACIL_PARTNER_NAME - Your segurofacil identifier
SEGUROFACIL_EMAIL - Authentication email
SEGUROFACIL_PASSWORD - Authentication password
```

### Insurance Policy

#### Creating a new insurance policy

```ruby
Segurofacil::Apolice.create({
  name: "Company Test",
  razaoSocial: "Company Test",
  cNPJ: "33.333.333/0001-33",
  responsavel: "Test",
  cPF: "333.333.333-33",
  qualificacao: "Test",
  email: "user@email.com",
  telefone: "35555555",
  atividade: "Test",
  address1: "Test",
  address2: "Test",
  bairro: "Manhattan",
  city: "NYC",
  estado: "NY",
  cep: "12345678"
})
```

#### Cancelling an insurance policy

```ruby
Segurofacil::Apolice.cancel(cnpj)
```

### Intern

#### Adding intern

```ruby
Segurofacil::Estagiario.create(
  {
    nome: 'name',
    cpf: 'document_cpf',
    dob: 'date_of_birth',
    sexoId: sex_id # 1 for male and 2 for female
  },
  cnpj
)
```

#### Listing interns

```ruby
Segurofacil::Estagiarios.get(cnpj)
```

#### Remove intern from insurance policy

```ruby
Segurofacil::Estagiario.remove(intern_document_cpf, cnpj)
```

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## TODO

- [x] Create Apolice
- [x] Cancel Apolice
- [x] Add Estagiario
- [x] Remove Estagiario
- [x] Get Estagiarios

