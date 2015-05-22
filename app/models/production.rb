class Production < ActiveRecord::Base
  has_many :performances
  belongs_to :company

  # def rating
  #   votes.map(&:total_score).inject(:+)
  # end
end
