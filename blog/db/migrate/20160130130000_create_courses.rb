class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :course_name
      t.string :location_string
      t.string :course_type
      t.integer :mistakesallowed_L1
      t.integer :mistakesallowed_L2
      t.integer :mistakesallowed_LJ
      t.integer :capacity
      t.integer :season_c

      t.timestamps null: false
    end
  end
end
