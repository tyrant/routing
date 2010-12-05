class Stop < ActiveRecord::Base
  belongs_to :stoptype, :foreign_key => 'stoptype_id'
  has_many :jumps
end
