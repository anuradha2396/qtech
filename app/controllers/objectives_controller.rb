class ObjectivesController < ApplicationController
def create
	@ques = Questions.new(ques_params)
	if @ques.save
		render 'objective'
	else 
		abort(@ques.errors.inspect)
	end
end	

def new
	@ques = Questions.new
end

def ques
	@ques = Question.new
end

 private
	def ques_params   
       params.require(:ques).permit(:question_body, :option1, :option2, :option3, :option4, :modal_ans ,:ans , :marks ,:question_status)   
    end  
end
