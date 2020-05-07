class QuestionsController < ApplicationController

def subject
end

def topic
end

def question_type
end

def list
@sub = Subject.all
end

def create
		@sub = Subject.new(subject_params)
		if @sub.save
              redirect_to  questions_subject_path
        else
        	abort(@user.errors.inspect)
        end
end	

def new
	@sub = Subject.new
end	

def show
@sub = Subject.find(params[:id])
end	



end
