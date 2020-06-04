class CandidatesController < ApplicationController
	def create
	@user = User.new(user_params)
	if @user.save
      redirect_to candidates_candidatedata_path       
    else
        abort(@user.errors.inspect)
    end
end

def new
	@user =User.new
end

def candidatedata
  @candidate = User.all
end

def destroy
  @user =User.find(params[:id])
  redirect_to candidates_candidatedata_path  
end


private
	def user_params   
       params.require(:user).permit(:first_name, :last_name, :email, :birthdate, :gender, :password,  :phone_no )   
  end 
end

