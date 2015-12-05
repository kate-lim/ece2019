class FeedbackMailer < ApplicationMailer
	default from: "uw.ece.2019@gmail.com"

	def feedback(data, email_to)
		@name = data["name"]
		@email = data["email"]
		@feedback = data["feedback"]

	    mail(to: email_to, subject: "New Feedback From ECE 2019")
	end
end
