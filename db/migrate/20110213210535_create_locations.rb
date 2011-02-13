class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.float :x_coord
      t.float :y_coord
      t.text :description
      t.integer :user_id
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
