class DashboardController < ApplicationController
	def index
		if user_signed_in?
			case current_user.role
				when "admin"    
					render "_admin_dashboard"
				when "speaker"  
					render "_speaker_dashboard"
				when "attendee" 
					render "_attendee_dashboard"
			end
		else
			redirect_to "/users/sign_in"
		end
	end
end
