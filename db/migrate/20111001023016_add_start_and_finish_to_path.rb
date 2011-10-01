class AddStartAndFinishToPath < ActiveRecord::Migration

  # Trading space for speed - of course it's possible to deduce the start and finish Stops
  # on a path simply by looking at the sets of Stops and Jumps associated with it, but that
  # can take quite a lot of time. It's faster to simply 
  def self.up
    change_table :paths do |t|
      t.integer :start_id
      t.integer :finish_id
    end
  end

  def self.down
    change_table :paths do |t|
      t.remove :start_id
      t.remove :finish_id
    end
  end
end
