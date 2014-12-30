class CreateUsuarios < ActiveRecord::Migration
  def change
    create_table :usuarios do |t|
      t.string :login_usuario
      t.string :senha_usuario
      t.integer :tipo_usuario

      t.timestamps
    end
  end
end
