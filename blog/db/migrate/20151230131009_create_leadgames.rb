class CreateLeadgames < ActiveRecord::Migration
  def change
    create_table :leadgames do |t|
      t.integer :season_g
      t.integer :amount_g

      t.timestamps null: false
    end
  end
end
