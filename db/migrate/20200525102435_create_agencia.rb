class CreateAgencia < ActiveRecord::Migration[5.1]
  def change
    create_table :agencia do |t|
      t.references :agencia, index: true, foreign_key: {to_table: :banks}
      t.string :numero_conta
      t.decimal :limite

      t.timestamps
    end
  end
end
