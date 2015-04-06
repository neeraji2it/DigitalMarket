class User::ProfilesController < ApplicationController

 def index
   @user = current_user
 end
 
 def edit
  @user = User.find(params[:id])
end

def update_profile
  @user = User.find(params[:id])
  if @user.update!(profile_params)
    sign_in(:user, @user, :bypass => true)
    redirect_to user_profiles_path
  else
    render "edit"
  end
end

def change_password
    @user = current_user
    
    if @user.errors.empty? and @user.update(profile_params)
      flash[:notice] = "Your password is successfully updated."
      sign_in(:user, @user, :bypass => true)
      redirect_to user_profiles_path(current_user.id)
    else
      render :action => :edit
    end
  end

private

def profile_params
  params.require(:user).permit!
end 
end
