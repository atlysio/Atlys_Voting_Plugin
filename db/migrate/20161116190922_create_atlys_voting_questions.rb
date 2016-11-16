class CreateAtlysVotingQuestions < ActiveRecord::Migration
  def change
    create_table :atlys_voting_questions do |t|
      t.text :body
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
