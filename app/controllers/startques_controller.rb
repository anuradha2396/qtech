class StartquesController < ApplicationController
	def ques
		@ques = Question.all
	end
end
