class Stop < ActiveRecord::Base
  belongs_to :stoptype, :class_name => 'StopType', :foreign_key => 'stoptype_id'
  has_many :jumps
  has_and_belongs_to_many :paths, :join_table => 'paths_stops'
end
