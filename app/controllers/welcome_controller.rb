class WelcomeController < ApplicationController

	def index
		if user_signed_in?
	  	  dude=Profile.find_by owner: current_user.id
	      @read=current_user.id
	      if dude.nil?
	          p=Profile.new()
	          p.owner=current_user.id
	          p.name=" "
	          p.surname=" "
	          p.age=" "
	          p.save
	      end
	      @m=current_user.email
	    else
	    	@m="nop";
	    end
	end

end
