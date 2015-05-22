class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :performance
  belongs_to :vote_type

  # def total_score

  # end
end
