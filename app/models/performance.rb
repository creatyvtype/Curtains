class Performance < ActiveRecord::Base
  has_many :votes
  belongs_to :address
  accepts_nested_attributes_for :address
  belongs_to :production

  def rating
    votes.map(&:score).inject(:+)/votes.count.to_f
  end
end
