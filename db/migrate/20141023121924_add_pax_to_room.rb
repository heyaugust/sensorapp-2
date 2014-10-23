class AddPaxToRoom < ActiveRecord::Migration
  def change
    add_column :rooms, :pax, :integer
  end
end
