class CreateWorks < ActiveRecord::Migration
  def self.up
    create_table :works do |t|
      t.string :title
      t.text :description
      t.string :sketch
      t.integer :artist_id
      t.boolean :is_real
      t.integer :location_id

      t.timestamps
    end
  end

  def self.down
    drop_table :works
  end
end
