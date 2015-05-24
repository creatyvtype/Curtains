class Vote < ActiveRecord::Base
  belongs_to :user
  belongs_to :performance
  belongs_to :vote_type
  belongs_to :production
  belongs_to :company

  validates :score, numericality: { only_integer: true }

end
