class StopType < ActiveRecord::Base
  has_many :stops

  validates :name, :presence => true
  
end
