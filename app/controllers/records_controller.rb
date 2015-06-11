class RecordsController < ApplicationController
	def registrations
		if current_user.role == "admin"
			@users = User.all
		else
			redirect_to dashboard_path
		end
	end

	def make_admin
		if current_user.role == "admin"
			user = User.find params[:id]
			user.role = "admin"
			user.save
			redirect_to registrations_path
		else
			redirect_to dashboard_path
		end
	end

	def remove_admin
		if current_user.role == "admin"
			user = User.find params[:id]
			user.role == "speaker"
			user.save
			redirect_to registrations_path
		else
			redirect_to dashboard_path
		end
	end
end