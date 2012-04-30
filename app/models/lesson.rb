class Lesson < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :pupil
  attr_accessible :end, :start, :type, :teacher, :pupil
end
