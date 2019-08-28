class VoteOptionsController < ApplicationController

	def new
		
	end

	def index
		
	end
	
	# def create
	# 	@vote_option = VoteOption.new(vote_polls_id: params[:vote_option][:vote_polls_id], title: params[:vote_poll]) 
	# 	if @vote_option.save!
	# 		flash[:notice] = "Vote option saved successfully ."
	# 		redirect_to @vote_option
	# 	else
	# 		flash[:alert] = "Vote option failed to save ."
	# 		redirect_to @vote_option
	# 	end
	# end

	# private
	# def vote_option_params
	# 	params.require(:vote_option).permit(:title, :vote_pools_id)
	# end
end
