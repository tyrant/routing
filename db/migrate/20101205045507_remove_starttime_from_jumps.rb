class RemoveStarttimeFromJumps < ActiveRecord::Migration
  def self.up
    remove_column :jumps, :starttime
  end

  def self.down
    add_column :jumps, :starttime, :datetime
  end
end
