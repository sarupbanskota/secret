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
			user.role = "speaker"
			user.save
			redirect_to registrations_path
		else
			redirect_to dashboard_path
		end
	end

  def show_csv
    if current_user.role == "admin"
      @users = User.all
      respond_to do |format|
        format.html
        format.csv do
          headers['Content-Disposition'] = "attachment; filename=\"registrations-list\""
          headers['Content-Type'] ||= 'text/csv'
        end
      end
    else
      redirect_to dashboard_path
    end
  end

end