class Path < ActiveRecord::Base

  # Standard graph theory stuff. A Path is a series of Jumps and Stops throughout the graph in question, making,
  # well, a path. A Cycle is a closed path - that is, a path where the starting and ending Stop are the same.
  # It's necessary to create a unique model for a Path because Tranz Metro, and I'm guessing, every other mass
  # transit agency, attaches a charge to a Path, not a Jump.
  
  has_and_belongs_to_many :jumps
  has_and_belongs_to_many :stops
  belongs_to :start, :class_name => 'Stop', :foreign_key => 'start_id'
  belongs_to :finish, :class_name => 'Stop', :foreign_key => 'finish_id'
  
  before_save :verify_jumps_and_stops_make_valid_path
  
  # Test that the chain of jumps and stops given to the newly created Path object do in fact make a valid path.
  # Connect-the-dots stuff. Start at the starting Stop, and verify that a continuous chain of Jumps/Stops lead to
  # the Finish stop, and don't do anything else.
  def verify_jumps_and_stops_make_valid_path
    #TODO
  end
  
  def get_time
    @time ||= self.find_by_sql('SELECT SUM(endtime - starttime) FROM jumps WHERE '
  end
  
  
  def Path.every_single_endpoint
    Path.all.collect { |p| [p.start, p.finish] }.flatten!.uniq!
  end
  
  
end
