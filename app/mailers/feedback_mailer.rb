class FeedbackMailer < ApplicationMailer
	default from: "hotkoreanchick@hotmail.com"

	def feedback(data)
		@name = data["name"]
		@email = data["email"]
		@feedback = data["feedback"]

	    mail(to: "katelim604@gmail.com", subject: "New Feedback From ECE 2019")
	end
end
