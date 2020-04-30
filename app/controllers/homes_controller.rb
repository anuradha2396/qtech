class HomesController < ApplicationController
	def index
	end

	def create
		@user = User.new(user_params)
		if @user.save
              redirect_to login_path
        else
        	abort(@user.errors.inspect)
        end
	end					
	def new
		@user = User.new
	end
	def login
	end
    
    private
	def user_params   
       params.require(:user).permit(:first_name, :last_name, :email, :birthdate, :gender, :password, :retype_password, :phone_no )   
    end   
end