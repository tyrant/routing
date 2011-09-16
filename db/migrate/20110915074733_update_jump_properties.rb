class UpdateJumpProperties < ActiveRecord::Migration
  def self.up
    change_table :jumps do |t|
      t.integer :startday
      t.time :endtime
      t.integer :endday
      t.boolean :halt_at_start
      t.boolean :halt_at_end
      
      t.remove :day
    end
  end

  def self.down
     change_table :jumps do |t|
       t.remove :startday
       t.remove :endtime
       t.remove :endday
       t.remove :halt_at_start
       t.remove :halt_at_end
       
       t.integer :day
     end
  end
end
