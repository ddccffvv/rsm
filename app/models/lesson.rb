class Lesson < ActiveRecord::Base
  attr_accessible :end, :start, :type, :teacher, :course
  belongs_to :teacher
  belongs_to :course
  belongs_to :lesson_type
end
