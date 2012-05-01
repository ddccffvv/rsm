class FixLessonType < ActiveRecord::Migration
  def up
    rename_column(:lessons, :type, :lesson_type)
  end

  def down
  end
end
