# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Bank.create!(
  agencia: '9999',
  endereco: 'av Central',

)
Bank.create!(
  agencia: '0000',
  endereco: 'av Central',

)
Bank.create!(
  agencia: '1111',
  endereco: 'av Central',

)
Agencium.create!(
  # agencia_id: '9999',
  numero_conta: '666-6',
  limite: 1000,

)
Agencium.create!(
  # agencia_id: '9999',
  numero_conta: '6987-1',
  limite: 1000,

)
Agencium.create!(
  # agencia_id: '0000',
  numero_conta: '999-1',
  limite: 1000,

)
