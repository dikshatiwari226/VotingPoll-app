class CreateVotePolls < ActiveRecord::Migration[5.2]
  def change
    create_table :vote_polls do |t|
      t.string :title
      t.string :description
      t.datetime :startdate
      t.datetime :enddate

      t.timestamps
    end
  end
end
