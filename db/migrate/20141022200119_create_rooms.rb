class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.integer :pax
      t.integer :storey_id

      t.timestamps
    end
  end
end
