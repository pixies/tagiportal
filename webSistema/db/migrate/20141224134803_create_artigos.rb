class CreateArtigos < ActiveRecord::Migration
  def change
    create_table :artigos do |t|
      t.string :titulo
      t.text :texto

      t.timestamps null: false
    end
  end
end
