require 'uwaterlooapi'

class CoursesController < ApplicationController
	def courses
		@showNav = true
		api = UWaterlooAPI.new('7467c4874254fc4f0ee969d9edaaada3');
		# my_favorite_course = api.courses.subject('ECE').catalog_number(103)
		# @course_title = my_favorite_course.title
		# @boo = api.courses.class_number('5377').schedule

		#  terms = CourseName.uniq.pluck(:term)
		# all_courses = CourseName.all

		@courses = Array.new
		# terms.each do |each_term|
		CourseName.all.each do |course|
			# Actual data, comment out when testing since it takes long
			course_info = {"CourseCode" => course.courseName + " " + course.catalogNumber,
						   "CourseName" => api.courses.subject(course.courseName).catalog_number(course.catalogNumber).title,
						   "Term" => course.term}
			# Use this when testing
			# course_info = {"CourseCode" => "ECE103",
			# 			   "CourseName" => "Discrete Mathematics",
			# 			   "Term" => "1B"}
			
			@courses.push(course_info)
		end
	end
end
