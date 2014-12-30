class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.references :servico, index: true

      t.timestamps null: false
    end
  end
end
