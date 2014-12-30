class CreatePatentes < ActiveRecord::Migration
  def change
    create_table :patentes do |t|
      t.string :noma_patente
      t.integer :id_patente
      t.references :id_usuario, index: true

      t.timestamps
    end
  end
end
