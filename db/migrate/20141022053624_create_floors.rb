class CreateFloors < ActiveRecord::Migration
  def change
    create_table :floors do |t|
      t.string :name, :null => false

      t.timestamps
    end
  end
end
