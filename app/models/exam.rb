require 'uwaterlooapi'

class Exam < ActiveRecord::Base
	def save_new_exam_info (subject, number)
		api = UWaterlooAPI.new('7467c4874254fc4f0ee969d9edaaada3')
		schedule = api.courses.subject(subject).catalog_number(number).examschedule
		
		if !schedule["course"]
			return false
		end

		return schedule
	end
end
