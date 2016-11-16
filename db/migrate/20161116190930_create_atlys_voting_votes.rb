class CreateAtlysVotingVotes < ActiveRecord::Migration
  def change
    create_table :atlys_voting_votes do |t|
      t.integer :user_id
      t.string :ip
      t.references :answer, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
