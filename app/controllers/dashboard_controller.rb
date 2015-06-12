class DashboardController < ApplicationController
	def index
		if user_signed_in?
			case current_user.role
				when "admin" 
					@no_size_count = User.where(shirt_size: "No size provided").count
					@s_count = User.where(shirt_size: "S").count
					@m_count = User.where(shirt_size: "M").count
					@l_count = User.where(shirt_size: "L").count
					@xl_count = User.where(shirt_size: "XL").count
					@xxl_count = User.where(shirt_size: "XXL").count
					@two_xxl_count = User.where(shirt_size: "2XXL").count

					@no_restriction_count = User.where(meal_restriction: "No Restriction").count
					@gluten_free_count = User.where(meal_restriction: "Gluten Free").count
					@kosher_count = User.where(meal_restriction: "Kosher").count
					@lactose_intolerance_count = User.where(meal_restriction: "Lactose Intolerance").count
					@vegan_count = User.where(meal_restriction: "Vegan").count
					@vegetarian_count = User.where(meal_restriction: "Vegetarian").count
					@hindu_meal_count = User.where(meal_restriction: "Hindu Meal").count
					@muslim_meal_count = User.where(meal_restriction: "Muslim Meal").count
					@seminars = Seminar.all   
					render "_admin_dashboard"
				when "speaker"
					@seminars = current_user.seminars  
					render "_speaker_dashboard"
				when "attendee" 
					render "_attendee_dashboard"
			end
		else
			redirect_to "/users/sign_in"
		end
	end
end
