class AddStarttimeDataToJumps < ActiveRecord::Migration

  # The starting time of a Jump isn't a timestamp - it's simply a time of day, plus the day of the week.
  # Convention: Sunday=0, Monday=1, etc., like Ruby.
  def self.up
    add_column :jumps, :starttime, :time
    add_column :jumps, :day, :integer
  end

  def self.down
    remove_column :jumps, :day
    remove_column :jumps, :starttime
  end
end
