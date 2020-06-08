class ObjectivesController < ApplicationController
def create
	@ques = Question.new(question_params)
	if @ques.save
		render 'objective'
	else 
		abort(@ques.errors.inspect)
	end
end	

def new
	@ques = Question.new
end

def ques
	@ques = Question.all
end

 private
	def question_params   
       params.require(:question).permit(:question_body, :option1, :option2, :option3, :option4, :modal_ans ,:ans , :marks ,:question_status)   
    end  
end
