require 'uwaterlooapi'

class MainController < ApplicationController
	def index
	end

	def info
		@navBarTitle = "Information"
		@pageName = "Information"
		@showNav = true
		
		@general_news = Array.new
		@eng_news = Array.new
		# @sys_news = Array.new

		Information.all.order(published_date: :desc).each do |info|
			if info.category == 'news'
				@general_news.push(info)
			elsif info.category == 'engineering'
				@eng_news.push(info)
			# elsif info.category == 'information-systems-technology'
			# 	@sys_news.push(info)
			end
		end
	end

end
