class Jump < ActiveRecord::Base

  belongs_to :origin, :class_name => 'Stop', :foreign_key => 'stop_id' 
  belongs_to :destination, :class_name => 'Stop', :foreign_key => 'stop_id_2'

  validates_presence_of :starttime, :length, :origin, :destination
  validates_numericality_of :length
  validates_uniqueness_of :starttime, :scope => [:day, :length, :origin, :destination]
  
end
