class CreateStops < ActiveRecord::Migration
  def self.up
    create_table :stops do |t|
      t.string :name
      t.references :stoptype

      t.timestamps
    end
  end

  def self.down
    drop_table :stops
  end
end
