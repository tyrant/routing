class Stop < ActiveRecord::Base
  belongs_to :stoptype, :class_name => 'StopType', :foreign_key => 'stoptype_id'
  has_many :jumps
end
