class Performance < ActiveRecord::Base
  has_many :votes
  has_one :address, :as => :addressable
  accepts_nested_attributes_for :address
  belongs_to :production
end
