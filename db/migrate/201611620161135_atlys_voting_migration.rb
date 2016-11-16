class AtlysVotingMigration < ActiveRecord::Migration
  def change

    drop_table :atlys_voting_questions
    drop_table :atlys_voting_answers
    drop_table :atlys_voting_votes

    create_table :atlys_voting_questions do |t|
      t.text :body
      t.integer :user_id
      t.timestamps null: false
    end

    create_table :atlys_voting_answers do |t|
      t.string :body
      t.references :question, index: true, foreign_key: true
      t.timestamps null: false
    end

    create_table :atlys_voting_votes do |t|
      t.integer :user_id
      t.string :ip
      t.references :answer, index: true, foreign_key: true
      t.timestamps null: false
    end
  end

end
