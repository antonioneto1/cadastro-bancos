namespace :dev do

  desc "Configura o ambiente de desenvolvimento"
  task setup: :environment do
    if Rails.env.development?
      show_spinner("Apagando BD...") { %x(rails db:drop) }
      show_spinner("Criando BD...") { %x(rails db:create) }
      show_spinner("Migrando BD...") { %x(rails db:migrate) }
      %x(rails dev:add_B)
      %x(rails dev:add_A)
    else
      puts "Você não está em ambiente de desenvolvimento!"
    end
  end
  
  desc "Cadastra os Bancos"
  task add_B: :environment do
    show_spinner("Cadastrando bancos...") do
      ags = [
                { 
                  numero_da_agencia: '9999',
                   endereco: 'av Central'
                },
                { 
                  numero_da_agencia: '9999',
                  endereco: 'av Central'
                },
                { 
                  numero_da_agencia: '9999',
                  endereco: 'av Central'
                },
              ]
      
            ags.each do |ag|
            Agency.find_or_create_by!(ag)
      end
    end
  end
  
  desc "Cadastra as Contas"
  task add_A: :environment do
    show_spinner("Cadastrando as contas bancarias...") do
      conts = [
        {agency_id: Agency.find_by(agency_id: '9999'), 
        account_number: '666-6', limit: 1000},
        {agency_id: Agency.all.sample,
         account_number: '666-6',limit: 1000},
        {agency_id: Agency.all.sample, 
        account_number: '666-6',limit: 2000}
      ]
      
      conts.each do |cont|
        BankAccount.find_or_create_by!(cont)
      end
    end
  end
  
  
  private
  
  def show_spinner(msg_start, msg_end = "Concluído!")
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}")
    spinner.auto_spin
    yield
    spinner.success("(#{msg_end})")    
  end
  end