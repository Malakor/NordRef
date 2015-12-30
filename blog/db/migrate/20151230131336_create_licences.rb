class CreateLicences < ActiveRecord::Migration
  def change
    create_table :licences do |t|
      t.integer :licence_no
      t.integer :season_l
      t.string :licence_type

      t.timestamps null: false
    end
  end
end
