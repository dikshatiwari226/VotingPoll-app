class AddCategoryIdToVotePolls < ActiveRecord::Migration[5.2]
  def change
    add_column :vote_polls, :category_id, :integer
  end
end
