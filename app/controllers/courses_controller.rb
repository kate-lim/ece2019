class CoursesController < ApplicationController
	def courses
		@showNav = true
		@navBarTitle = "Courses"
		@terms = Course.uniq.pluck(:term).sort! {|x, y| x <=> y}

		@courses = Array.new

		Course.all.order(:term, :major, :number).each do |course|
			course_info = {
				"course_code" => course.subject + " " + course.number,
				"term" => course.term,
				"title" => course.title,
				"major" => course.major
			}
			@courses.push(course_info)
		end
	end

	def detail
		course_code = params[:course_code].split(' ')
		@selected_course = Course.where(:subject => course_code[0], :number => course_code[1])
		render partial: 'detail'
	end
end
