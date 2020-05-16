class TopicsController < ApplicationController
def create
	@top = Topic.new(topic_params)
	if @top.save
      redirect_to question_topic_path       
    else
        abort(@top.errors.inspect)
    end
end

def new
	@top = Topic.new
end

private
	def topic_params   
       params.require(:topic).permit(:name)   
    end  
end
