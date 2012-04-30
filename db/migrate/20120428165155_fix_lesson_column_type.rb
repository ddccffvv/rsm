class FixLessonColumnType < ActiveRecord::Migration
  def up
	change_column :lessons, :start, :datetime
	change_column :lessons, :end, :datetime
  end

  def down
  end
end
