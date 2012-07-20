# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Emanuel', :city => cities.first)


pupils = Pupil.create([{:name => 'test_name', :first_name => 'test first name'}, {:name => 'test_name2', :first_name => 'test first name2'}, {:name => 'test_name', :first_name => 'test first name3'}, {:name => 'test_name', :first_name => 'test first name'}])
teachers = Teacher.create([{:name => 'teacher test_name', :first_name => 'teacher test first name'}, {:name => 'teacher test_name2', :first_name => 'teacher test first name2'}, {:name => 'teacher test_name', :first_name => 'teacher test first name3'}, {:name => 'teacher test_name', :first_name => 'teacher test first name'}])
