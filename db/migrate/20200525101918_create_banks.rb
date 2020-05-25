class CreateBanks < ActiveRecord::Migration[5.1]
  def change
    create_table :banks do |t|
      t.string :agencia
      t.text :endereco

      t.timestamps
    end
  end
end
