class CreatePupils < ActiveRecord::Migration
  def change
    create_table :pupils do |t|
      t.string :name
      t.string :first_name

      t.timestamps
    end
  end
end
