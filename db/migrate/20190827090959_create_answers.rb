class CreateAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :answers do |t|
      t.string :title
      t.integer :vote_poll_id
      t.integer :vote_option_id

      t.timestamps
    end
  end
end
