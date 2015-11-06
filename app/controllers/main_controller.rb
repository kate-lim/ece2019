class MainController < ApplicationController
	def index
		@showNav = false
	end

	def info
		@showNav = true
	end

end
