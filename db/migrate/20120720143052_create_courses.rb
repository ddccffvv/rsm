class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.references :course_type
      t.integer :min_minutes

      t.timestamps
    end

    add_column :lessons, :course_id, :integer
    add_index :courses, :course_type_id
    add_index :lessons, :course_id
  end
end
