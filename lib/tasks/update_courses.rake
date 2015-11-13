namespace :update_courses do 
	desc "Update course information from uwapi calls"

	task :get_all_course_to_update => :environment do
		Course.all.each do |course|
			course.update_courses_from_api
		end
	end
end