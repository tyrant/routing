class RemoveNameFromJump < ActiveRecord::Migration
  def self.up
    remove_column :jumps, :name
  end

  def self.down
    add_column :jumps, :name, :text
  end
end
