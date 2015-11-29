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

	desc "Update "
	task :update_news_info => :environment do
		Information.delete_all
		data = Information.new.get_news_info
		data.each do |article|
			boo = Information.new(:category => article["site"], :title => article["article"].title, :url => article["article"].link, :published_date => DateTime.iso8601(article["article"].published).to_date)
			boo.save
		end
	end

end

#rake update_from_api:courses_to_update
#rake update_from_api:electives_to_update
#rake update_from_api:update_electives
