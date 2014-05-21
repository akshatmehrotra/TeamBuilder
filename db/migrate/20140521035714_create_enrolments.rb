class CreateEnrolments < ActiveRecord::Migration
  def change
    create_table :enrolments do |t|
      t.integer :class_id
      t.integer :student_id

      t.timestamps

    end
  end
end
