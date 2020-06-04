class ExamcreationsController < ApplicationController
def create
	@exam = Examcreation.new(examcreation_params)
	if @exam.save
      redirect_to examcreations_examcreation_path      
    else
        abort(@exam.errors.inspect)
    end
end

def new
  @exam = Examcreation.new
 end

 def examcreation
 	@exam = Examcreation.all
 end

private
	def examcreation_params   
       params.require(:examcreation).permit(:exam_name, :exam_duration, :exam_type)   
    end  
end

