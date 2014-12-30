class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome_cliente
      t.string :telefone_cliente
      t.string :email_cliente
      t.references :id_usuario, index: true

      t.timestamps
    end
  end
end
