class Course < ActiveRecord::Base
  belongs_to :course_type
  belongs_to :pupil
  has_many :lessons
  attr_accessible :min_minutes, :name, :course_type, :lessons, :pupil
end
