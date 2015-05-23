class Company < ActiveRecord::Base
  has_many :productions
  belongs_to :address
  accepts_nested_attributes_for :address
end
