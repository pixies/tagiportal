class CreateComentarios < ActiveRecord::Migration
  def change
    create_table :comentarios do |t|
      t.string :comentario
      t.string :body
      t.references :artigo, index: true

      t.timestamps null: false
    end
  end
end
