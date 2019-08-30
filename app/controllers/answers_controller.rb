class AnswersController < ApplicationController
	def create
		if user_signed_in?
			if Answer.where(user_id: current_user.id, vote_poll_id: params[:answers][:vote_poll_id]).first.present?
				return redirect_to root_path, notice: 'You have already voted'
			else
				@answer = Answer.new(vote_poll_id: params[:answers][:vote_poll_id], vote_option_id: params[:option_answer], user_id: params[:answers][:user_id])
				@answer.save
				redirect_to root_path
			end
		else
			if cookies[:vote_poll_id] && cookies[:vote_poll_id] == params[:answers][:vote_poll_id] 
				return redirect_to root_path, notice: 'You have already voted'	
			else
				@answer = Answer.new(vote_poll_id: params[:answers][:vote_poll_id], vote_option_id: params[:option_answer])
				cookies[:vote_poll_id] = params[:answers][:vote_poll_id]
			@answer.save
			redirect_to root_path
			end
		end
				# @vote = params[:answers][:vote_poll_id]
				# @vote_poll = VotePoll.find(@vote)
				# @vote_poll = @vote_poll.update_attributes(is_voted: true) 
	end
end
