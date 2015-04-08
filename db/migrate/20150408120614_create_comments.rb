class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :sujet_id
      t.text :commentaire

      t.timestamps
    end
  end
end
