class CreateClubs < ActiveRecord::Migration
  def change
    create_table :clubs do |t|
      t.string :fullname
      t.string :shortform
	  t.string :regionalassociation
      #t.references :referee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
