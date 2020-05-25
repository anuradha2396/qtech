class UsersController < ApplicationController
	def create
  	user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to subject_user_path
    else
      flash.now[:alert] = "Email or password is invalid"
      redirect_to login_path
    end
  end
end
