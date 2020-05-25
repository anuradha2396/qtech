class SchedulesController < ApplicationController
	def create
		@sch = Exam_Schdeule.new(exam_Schdeule_params)
		if @sch.save
			render 'schedule'
		else 
		   abort(@sch.errors.inspect)
        end
	end

	def new
		@sch = Exam_Schdeule.new
	end


    private
	def exam_Schdeule_params   
       params.require(:exam_Schdeule).permit(:start_date, :end_date, :start_time, :end_time, :duration )   
    end  

end
