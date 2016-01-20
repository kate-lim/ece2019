require 'uwaterlooapi'
require 'date'

class MainController < ApplicationController
	def index
		@navBarTitle = "Home"
	end

	def feedback_popup
		render partial: 'feedback_popup'
	end

	def feedback_email
		success = true
		selector = Array.new
		message = ""

		name_to = params[:name_to].split(' ')
		if(name_to.length < 2)
			success = false
			selector.push("name-to")
		end

		email_to = params[:email_to].split('@')
		if ( (email_to.length < 2) || (!email_to[1].include? ".") )
			success = false
			selector.push("email-to")
		end

		feedback_content = params[:feedback_content]
		if(feedback_content.length < 30)
			success = false
			selector.push("feedback-content")
		end

		if success
			emails = [ENV["kate-email"], ENV["bilal-email"]]
			data = {
				"name" 	=> params[:name_to],
				"email"	=> params[:email_to],
				"feedback" => params[:feedback_content]
			}

			emails.each do |email_to|
				FeedbackMailer.feedback(data, email_to).deliver
			end
			success = true
		end

		render :json => { :success => success, :selector => selector}
	end

	def info
		@navBarTitle = "Information"
		@showNav = true

		@general_news = Array.new
		@eng_news = Array.new
		@sys_news = Array.new

		Information.all.order(published_date: :desc).each do |info|
			if info.category == 'news'
				@general_news.push(info)
			elsif info.category == 'engineering'
				@eng_news.push(info)
			elsif info.category == 'information-systems-technology'
				@sys_news.push(info)
			end
		end

		@exam_schedule = Exam.all.order(:exam_date)

		if !@exam_schedule.blank? 
			@first_monday = @exam_schedule.first.exam_date
			while @first_monday.monday? == false do
			   @first_monday -= 1
			end

			@last_friday = @exam_schedule.last.exam_date
			while @last_friday.friday? == false do
			   @last_friday += 1
			end

			if @first_monday.month == @last_friday.month
				@month_string = Date::MONTHNAMES[@first_monday.month]
			else
				@month_string = Date::MONTHNAMES[@first_monday.month] + " / " + Date::MONTHNAMES[@last_friday.month]
			end

			@days_in_week = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
		end
	end

end
