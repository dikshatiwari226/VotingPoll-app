class AddColumnIsVotedToVotePolls < ActiveRecord::Migration[5.2]
  def change
  	add_column :vote_polls, :is_voted, :boolean
  end
end
