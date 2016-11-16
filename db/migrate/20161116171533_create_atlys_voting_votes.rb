class CreateAtlysVotingVotes < ActiveRecord::Migration
  def change
    create_table :atlys_voting_votes do |t|
      t.integer :fromuser
      t.string :ip

      t.timestamps null: false
    end
  end
end
