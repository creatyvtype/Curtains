class Production < ActiveRecord::Base
  has_many :performances
  belongs_to :company
  has_many :votes, through: :performances


  def rating
    (votes.map(&:score).inject(:+)/votes.count.to_f).round(2)
  end
end
