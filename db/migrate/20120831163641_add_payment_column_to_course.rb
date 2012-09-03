class AddPaymentColumnToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :already_paid, :decimal, :scale => 8, :precision => 2
  end
end
