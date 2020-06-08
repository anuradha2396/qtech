class SchedulesController < ApplicationController
	def create
		@sch = Scheduler.new(Scheduler_params)
		if @sch.save
			render 'schedule'
		else 
		   abort(@sch.errors.inspect)
        end
	end

	def new
		@sch = Scheduler.new
	end

	def schedule
		@sch = Scheduler.all
	end

    private
	def Scheduler_params   
       params.require(:Scheduler).permit(:startdate, :enddate, :starttime, :endtime, :examname)   
    end  

end
