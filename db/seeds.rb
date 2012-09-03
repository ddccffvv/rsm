# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


pupils = Pupil.create([{:name => 'test_name1', :first_name => 'test first name1'}, {:name => 'test_name2', :first_name => 'test first name2'}, {:name => 'test_name3', :first_name => 'test first name3'}, {:name => 'test_name4', :first_name => 'test first name4'}])
teachers = Teacher.create([{:name => 'teacher test_name1', :first_name => 'teacher test first name1'}, {:name => 'teacher test_name2', :first_name => 'teacher test first name2'}, {:name => 'teacher test_name3', :first_name => 'teacher test first name3'}, {:name => 'teacher test_name4', :first_name => 'teacher test first name4'}])
course_types = CourseType.create([{:name => 'lange type', :min_minutes => '1200', :hourly_rate => '53.00'},{:name => 'korte type', :min_minutes => '360', :hourly_rate => '53.00'}])
