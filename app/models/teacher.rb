class Teacher < ActiveRecord::Base
  attr_accessible :first_name, :name, :full_name, :lessons
  has_many :lessons
  has_many :pupils, :through => :lessons

  def full_name
    [first_name, name].join(' ')
  end
end
