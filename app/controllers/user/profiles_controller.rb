class User::ProfilesController < ApplicationController

 def index
   @user = current_user
 end

  private
  def profile_params
    params.require(:user).permit!
  end 
end
