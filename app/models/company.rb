class Company < ActiveRecord::Base
  has_many :productions
  belongs_to :address
  accepts_nested_attributes_for :address
  has_many :votes, through: :productions

  def rating
    (votes.map(&:score).inject(:+)/votes.count.to_f).round(2)
  end

end
