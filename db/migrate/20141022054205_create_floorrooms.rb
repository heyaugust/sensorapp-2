class CreateFloorrooms < ActiveRecord::Migration
  def change
    create_table :floorrooms do |t|
      t.integer :floor_id, :null => false
      t.integer :room_id, :null => false

      t.timestamps
    end
  end
end
