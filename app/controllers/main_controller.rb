class MainController < ApplicationController
	def index
	end

	def info
		@navBarTitle = "Information"
		@pageName = "Information"
		@showNav = true
	end

end
