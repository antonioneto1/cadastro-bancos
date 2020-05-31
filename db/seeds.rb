
puts "Cadastrando os Bancos"
Agency.create!([
{ agency_number: '9999', endereco: 'av Central'},
{ agency_number: '0000',  endereco: 'av Central'},
{ agency_number: '1111', endereco: 'av Central'}
])
puts "Bancos Cadastrados"

puts "Cadastrando as Agencias"
BankAccount.create!([
{ agency_id: '1', account_number: '666-6',limit: 1000},
{ agency_id: '2', account_number: '6987-1', limit: 1000}, 
{ agency_id: '3',  account_number: '999-1',limit: 1000}
])
puts "Agencias Cadastradas"
