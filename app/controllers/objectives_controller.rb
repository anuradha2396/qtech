class ObjectivesController < ApplicationController
def create
	@ques = Questions.new(question_params)
	if @ques.save
		render 'objective'
	else 
		abort(@ques.errors.inspect)
	end
end	

def new
	@ques = Questions.new
end

def list
	@ques = Question.all
end

 private
	def questions_params   
       params.require(:questions).permit(:question_body, :option1, :option2, :option3, :option4, :modal_ans ,:ans , :marks ,:question_status)   
    end  
end
