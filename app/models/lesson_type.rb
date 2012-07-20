class LessonType < ActiveRecord::Base
  belongs_to :lesson
  attr_accessible :name, :hourly_rate
end
