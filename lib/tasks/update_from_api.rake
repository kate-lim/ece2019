namespace :update_from_api do 
	desc "Update course information from uwapi calls"

	task :courses_to_update => :environment do
		Course.where.not(subject: 'Elective').each do |course|
			course.update_courses_from_api
		end
	end

	desc "Update course information from uwapi calls"

	task :electives_to_update => :environment do
		Elective.where.not(number: '*').each do |elective|
			elective.update_electives_from_api
		end
	end

	desc "Update news"
	task :update_news_info => :environment do
		Information.delete_all
		data = Information.new.get_news_info
		data.each do |article|
			new_info = Information.new(:category => article["site"], :title => article["article"].title, :url => article["article"].link, 
				:published_date => DateTime.iso8601(article["article"].published).to_date)
			new_info.save
		end
	end

	desc "Update exam information"
	task :update_exam_info => :environment do
		Exam.delete_all
		courses_this_term = Course.where(:term => '2A').where.not(:subject => 'Elective')

		courses_this_term.each do |course|
			schedule = Exam.new.save_new_exam_info(course.subject, course.number)

			if schedule != false
				schedule["sections"].each do |section_info|
					schedule_save = Exam.new(:course => schedule["course"], :section => section_info.section, :exam_day => section_info.day, 
						:exam_date => section_info.date, :start_time => section_info.start_time, :end_time => section_info.end_time, 
						:location => section_info.location, :notes => section_info.notes)
					schedule_save.save
				end
			end
		end
	end

end

#rake update_from_api:courses_to_update
#rake update_from_api:electives_to_update
#rake update_from_api:update_electives
#rake update_from_api:update_news_info
#rake update_from_api:update_exam_info