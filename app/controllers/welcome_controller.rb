class WelcomeController < ApplicationController

	def index
		@profile = Profile.new
	end

end
