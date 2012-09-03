class Pupil < ActiveRecord::Base
  attr_accessible :first_name, :name, :full_name, :lessons, :courses
  has_many :courses
  has_many :lessons, :through => :courses
  has_many :teachers, :through => :lessons
  
  def full_name
    [first_name, name].join(' ')
  end
end
