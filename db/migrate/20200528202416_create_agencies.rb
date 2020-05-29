class CreateAgencies < ActiveRecord::Migration[5.1]
  def change
    create_table :agencies do |t|
      t.string :agency_number
      t.text :endereco

      t.timestamps
    end
  end
end
