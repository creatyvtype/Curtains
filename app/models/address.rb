class Address < ActiveRecord::Base
  has_many :productions
  has_many :companies
end
