class HomesController < ApplicationController
	def index
	end

	def create
		@user = User.new(user_params)
		if @user.save
              redirect_to root_path
        else
        	abort(@user.errors.inspect)
        end
	end					
	def new
		@user = User.new
	end
	def login
	end
end