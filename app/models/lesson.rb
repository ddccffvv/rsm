class Lesson < ActiveRecord::Base
  belongs_to :teacher
  belongs_to :course
  belongs_to :lesson_type
  attr_accessible :end, :start, :type, :teacher, :course
end
