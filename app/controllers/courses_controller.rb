class CoursesController < ApplicationController
	def courses
		@showNav = true
		@navBarTitle = "Courses"
		@terms = Course.uniq.pluck(:term).sort! {|x, y| x <=> y}

		@courses = Array.new
		
		Course.all.order(:term, :number, :major).each do |course|
			course_info = {
				"course_code" 	=> course.subject == 'Elective' ? course.subject : course.subject + " " + course.number,
				"term" 			=> course.term,
				"title" 		=> course.subject == 'Elective' ? "See more information below" : course.title,
				"major" 		=> course.major
			}
			@courses.push(course_info)
		end
	end

	def detail
		course_code = params[:course_code].split(' ')
		@selected_course = Course.where(:subject => course_code[0], :number => course_code[1]).first
		render partial: 'detail'
	end

	def load_electives
		@cse_electives = Array.new
		@nse_electives = Array.new
		@te_electives = Array.new

		Elective.all.order(:number, :notes, :elective_type, :list, :subject).each do |elective|
			elective_info = {
				"code" 		=> elective.subject + " " + elective.number,
				"list"		=> elective.list,
				"title"		=> elective.title,
				"notes"		=> elective.notes
			}

			if elective.elective_type == "CSE"
				@cse_electives.push(elective_info)
			elsif elective.elective_type == "NSE"
				@nse_electives.push(elective_info)
			else
				@te_electives.push(elective_info)
			end
		end
		render partial: 'electives'
	end

	def detail_elective
		course_code = params[:course_code].split(' ')
	
		selected = Elective.where(:subject => course_code[0], :number => course_code[1]).first
		display_code = ((selected.subject + " " + selected.number) if selected.number != "*") || (selected.subject)
		
		if(selected.elective_type == "NSE" && selected.list == "1" && selected.lab == true)
			display_code = display_code + "/" + display_code + "L"
		end
		puts display_code
		@elective_info = {
			"code" 			=> display_code,
			"type"			=> selected.elective_type,
			"list"			=> selected.list,
			"units"			=> selected.units,
			"title"			=> selected.title,
			"notes"			=> selected.notes,
			"subject"		=> selected.subject,
			"number"		=> selected.number,
			"description"	=> selected.description
		}
		render partial: 'detail_electives'
	end
end
