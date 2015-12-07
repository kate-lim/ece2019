require 'uwaterlooapi'

class Elective < ActiveRecord::Base
	def update_electives_from_api
		api = UWaterlooAPI.new('7467c4874254fc4f0ee969d9edaaada3')
		course = api.courses.subject(self.subject).catalog_number(self.number)
		self.update_attributes(:title => course.title, :units => course.units, :description => course.description)
	end
end
