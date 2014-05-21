class CreateClasses < ActiveRecord::Migration
  def change
    create_table :classes do |t|
      t.string :name
      t.string :instructor_name
      t.integer :calendar_id
      t.integer :department_id
      t.integer :quarter_id
      t.integer :section_id
      t.integer :team_size

      t.timestamps

    end
  end
end
