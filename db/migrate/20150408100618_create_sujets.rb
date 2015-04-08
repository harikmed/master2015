class CreateSujets < ActiveRecord::Migration
  def change
    create_table :sujets do |t|
      t.string :titre
      t.text :contenu

      t.timestamps
    end
  end
end
