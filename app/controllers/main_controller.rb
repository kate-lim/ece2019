require 'uwaterlooapi'

class MainController < ApplicationController
	def index
		#@navBarTitle = "Home"
		@is_home = true
	end

	def feedback_popup
		render partial: 'feedback_popup'
	end

	def feedback_email

		data = {
			"name" 	=> params[:name_to],
			"email"	=> params[:email_to],
			"feedback" => params[:feedback_content]
		}

		# puts params[:name_to]
		# puts params[:email_to]
		# puts params[:feedback_content]
		FeedbackMailer.feedback(data).deliver
		render :nothing => true
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

		@exam_schedule = Exam.all.order(:exam_date)
		
		puts @exam_schedule.where(:exam_day => "Thursday")
		
		@first_monday = @exam_schedule.first.exam_date
		while @first_monday.monday? == false do
		   @first_monday -= 1
		end

		@last_friday = @exam_schedule.last.exam_date
		while @last_friday.friday? == false do
		   @last_friday += 1
		end

		puts @first_monday
		puts @last_friday

		@days_in_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
	end

end
