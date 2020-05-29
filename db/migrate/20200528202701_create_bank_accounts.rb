class CreateBankAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :bank_accounts do |t|
      t.integer :agency_id
      t.string :account_number
      t.decimal :limit

      t.timestamps
    end
  end
end
