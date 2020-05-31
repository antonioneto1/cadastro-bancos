class BankAccount < ApplicationRecord
  belongs_to :agency
  attr_accessor :agency_number
  validates :agency_id, :account_number, :limit, presence: true
  validates :account_number, length: { is: 6 , message: 'O numero da Conta preisa ter 6 digitos'}
  validates :account_number, :limit, numericality: {message: 'Campo restrito, apenas para numeros'}
end
