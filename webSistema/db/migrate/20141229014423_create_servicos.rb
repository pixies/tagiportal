class CreateServicos < ActiveRecord::Migration
  def change
    create_table :servicos do |t|
      t.string :nome
      t.string :tempo_execucao

      t.timestamps
    end
  end
end
