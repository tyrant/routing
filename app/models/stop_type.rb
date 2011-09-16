class StopType < ActiveRecord::Base
  has_many :stops

  validates_presence_of :name
  
end
