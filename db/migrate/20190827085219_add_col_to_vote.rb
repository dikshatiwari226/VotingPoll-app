class AddColToVote < ActiveRecord::Migration[5.2]
  def change

  	add_column :vote_options, :vote_poll_id, :integer
  	remove_column :vote_options, :vote_polls_id, :integer
  end
end
