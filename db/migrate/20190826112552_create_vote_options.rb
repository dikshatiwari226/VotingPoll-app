class CreateVoteOptions < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_options do |t|
      t.string :title
      t.references :vote_polls, foreign_key: true

      t.timestamps
    end
  end
end
