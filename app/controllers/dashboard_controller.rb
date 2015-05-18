class DashboardController < ApplicationController
	def index
		case current_user.role
			when "admin"    
				render "_admin_dashboard"
			when "speaker"  
				render "_speaker_dashboard"
			when "attendee" 
				render "_attendee_dashboard"
		end
	end
end
