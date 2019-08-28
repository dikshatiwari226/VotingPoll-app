class AnswersController < ApplicationController
	def create
		@answer = Answer.new(vote_poll_id: params[:answers][:vote_poll_id], vote_option_id: params[:option_answercd], user_id: params[:answers][:user_id])
		@answer.save
		redirect_to root_path
	end
end
