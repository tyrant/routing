class AddPathsJoins < ActiveRecord::Migration
  def self.up
  
    change_table :paths do |t|
      t.float :price
    end
    
    create_table :paths_jumps do |t|
      t.references :paths
      t.references :jumps
    end
    
    create_table :paths_stops do |t|
      t.references :paths
      t.references :stops
    end
  end

  def self.down
    change_table :paths do |t|
      t.remove :price
    end
    drop_table :paths_jumps
    drop_table :paths_stops
  end
end
