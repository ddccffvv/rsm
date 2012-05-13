class Lesson < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :pupil
  has_one :lesson_type
  attr_accessible :end, :start, :type, :teacher, :pupil
end
