class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :login
      t.string :passe
      t.string :statut

      t.timestamps
    end
  end
end
