class StartquesController < ApplicationController
	def ques
		@ques = Questions.select(params[:id])
	end
end
