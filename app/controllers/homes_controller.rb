class HomesController < ApplicationController
	def index
		# render 'layouts/header'
	end

	def create
		@user = User.new(user_params)
		if @user.save
              redirect_to  sessions_new_path
        else
        	abort(@user.errors.inspect)
        end
	end					
	def new
		@user = User.new
	end

	def login
		@user = User.show
    end 

    
    
    private
	def user_params   
       params.require(:user).permit(:first_name, :last_name, :email, :birthdate, :gender, :password, :retype_password, :phone_no )   
    end  


end