class CreatePaxes < ActiveRecord::Migration
  def change
    create_table :paxes do |t|
      t.integer :name
      t.integer :room_id

      t.timestamps
    end
  end
end
