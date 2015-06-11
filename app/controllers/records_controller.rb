class RecordsController < ApplicationController
	def registrations
		@users = User.all
	end
end