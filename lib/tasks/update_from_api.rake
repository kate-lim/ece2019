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
end

#rake update_from_api:courses_to_update
#rake update_from_api:electives_to_update