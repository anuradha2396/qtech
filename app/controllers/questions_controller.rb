class QuestionsController < ApplicationController

def create
	@sub = Subject.new(subject_params)
	if @sub.save
      redirect_to questions_subject_path       
    else
        abort(@sub.errors.inspect)
    end
end	

def new
	@sub = Subject.new
end	

def show
  @sub = Subject.find(params[:name])
end

def subject
  @sub = Subject.all
end


  private
	def subject_params   
       params.require(:subject).permit(:name)   
    end  
end
