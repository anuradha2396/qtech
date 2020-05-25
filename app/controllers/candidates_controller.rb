class CandidatesController < ApplicationController
	def create
	@user = User.new(user_params)
	if @topic.save
      redirect_to candidates_candidatedata_path       
    else
        abort(@user.errors.inspect)
    end
end

def new
	@user =User.new
end

def candidate
  @user= User.all
end

def edit
  @user = User.find(params[:id])
end

 
def update
  @user = User.find(params[:id])
 
  if @user.update(user_params)
    redirect_to candidates_candidatedata_path  
  else
    render 'edit'
  end
end


def destroy
  @user =User.find(params[:id])
  @user_params.destroy
 
  redirect_to candidates_candidatedata_path  
end


private
	def user_params   
       params.require(:user).permit(:firstname, :lastname, :gender , :Dob ,:email , :password ,:contact)   
    end  
end

