class AddStartTimestampToJump < ActiveRecord::Migration
  def self.up
    add_column :jumps, :starttime, :datetime
  end

  def self.down
    remove_column :jumps, :starttime
  end
end
