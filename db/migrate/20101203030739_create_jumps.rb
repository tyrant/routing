class CreateJumps < ActiveRecord::Migration
  def self.up
    create_table :jumps do |t|
      t.string :name
      t.integer :length
      t.integer :stop_id    # Foreign key 1: points to the origin Stop.
      t.integer :stop_id_2  # Foreign key 2: points to the destination Stop.

      t.timestamps
    end
  end

  def self.down
    drop_table :jumps
  end
end
