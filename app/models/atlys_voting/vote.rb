module AtlysVoting
  class Vote < ActiveRecord::Base
    belongs_to :answer
  end
end
