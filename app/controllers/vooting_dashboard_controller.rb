class VootingDashboardController < ApplicationController
	def index
		@vooting_all = VotePoll.all.where("startdate > ?",  DateTime.now)
		# today = DateTime.now
		# @vooting_all = VotePoll.all.where("today >= startdate AND today <= enddate")


		# @vooting_all = VotePoll.all.where("startdate <= ? AND enddate >= ?", today, today )
	end

	

	def show
    @vote_poll = VotePoll.find(params[:id])
    @vote_option = @vote_poll.vote_options
	end

end
