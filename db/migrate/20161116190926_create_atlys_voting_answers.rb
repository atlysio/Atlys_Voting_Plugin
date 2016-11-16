class CreateAtlysVotingAnswers < ActiveRecord::Migration
  def change
    create_table :atlys_voting_answers do |t|
      t.string :body
      t.references :question, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
