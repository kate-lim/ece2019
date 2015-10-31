require 'uwaterlooapi'

class CoursesController < ApplicationController
	def courses
		api = UWaterlooAPI.new('7467c4874254fc4f0ee969d9edaaada3');
		my_favorite_course = api.courses.subject('ECE').catalog_number(103)
		@course_title = my_favorite_course.title
		@courses = api.courses.subject('ECE')
		@boo = api.courses.class_number('5377').schedule
	end
end
