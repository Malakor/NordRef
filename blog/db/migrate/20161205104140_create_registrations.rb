class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.integer :mistakes
      t.boolean :participated
      t.boolean :passed
      t.boolean :deregistered
      t.integer :registrationthrough
	  t.integer :registeredref
	  
      t.timestamps
    end
  end
end
