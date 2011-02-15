class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.float :lat
      t.float :lng
      t.string :title
      t.integer :user_id
      t.boolean :is_active

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
