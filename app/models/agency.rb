class Agency < ApplicationRecord
  has_many :bank_accounts, dependent: :restrict_with_error 


  validates :agency_number, :endereco,presence: true
  validates :agency_number, length: { is: 4 , message: 'O numero da Agencia preisa ter 4 numeros'}
  validates :agency_number, uniqueness: {message: 'Este numero de agencia já está cadastrado'}
  validates :agency_number, numericality: {message: 'Campo restrito, apenas para numeros'}
end
 