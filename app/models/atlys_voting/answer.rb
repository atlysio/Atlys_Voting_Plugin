module AtlysVoting
  class Answer < ActiveRecord::Base
    belongs_to :question
  end
end
