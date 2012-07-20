class CreateCourseTypes < ActiveRecord::Migration
  def change
    create_table :course_types do |t|
      t.string :name
      t.integer :min_minutes
      t.decimal :hourly_rate, :precision => 8, :scale => 2

      t.timestamps
    end
  end
end
