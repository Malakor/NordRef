class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :firstname
      t.string :lastname
      t.string :mail 
      t.string :username
      t.integer :role
	t.string :password_digest          

	  t.references  :club, index: true, foreign_key: true 

      t.timestamps null: false
    end
  end
end
