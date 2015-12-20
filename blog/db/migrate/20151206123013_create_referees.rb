class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :firstname
      t.string :lastname
      t.string :mail

      t.timestamps null: false
    end
  end
end
