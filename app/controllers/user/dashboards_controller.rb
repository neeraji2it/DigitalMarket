class User::DashboardsController < ApplicationController

	def index
		@user = current_user
	end

end
