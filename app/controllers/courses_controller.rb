class CoursesController < ApplicationController
	def courses
		@showNav = true

		@courses = Array.new
		Course.all.each do |course|
			course_info = {
				"CourseCodeDisplay" => course.subject + " " + course.number,
				"CourseCodeLink" => course.subject + "" + course.number,
				"CourseTitle" => course.title,
				"Term" => course.term
			}
			@courses.push(course_info)
		end
	end
end
