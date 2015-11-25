class MainController < ApplicationController
	def index
	end

	def info
		@navBarTitle = "Information"
		@showNav = true
	end

end
