class CreateAgencia < ActiveRecord::Migration[5.1]
  def change
    create_table :agencia do |t|
      t.references :agencia, foreign_key: true
      t.string :numero_conta
      t.decimal :limite

      t.timestamps
    end
  end
end
