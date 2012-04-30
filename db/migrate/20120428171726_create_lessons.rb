class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.datetime :start
      t.datetime :end
      t.string :type
      t.references :teacher
      t.references :pupil

      t.timestamps
    end
    add_index :lessons, :teacher_id
    add_index :lessons, :pupil_id
  end
end
