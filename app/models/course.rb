class Course < ActiveRecord::Base
  belongs_to :course_type
  belongs_to :pupil
  has_many :lessons
  attr_accessible :min_minutes, :name, :course_type, :lessons, :pupil

  def long_name
    "#{pupil.full_name} (#{course_type.name})"
  end
end
