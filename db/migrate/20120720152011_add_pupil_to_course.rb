class AddPupilToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :pupil_id, :integer

    add_index :courses, :pupil_id
  end
end
