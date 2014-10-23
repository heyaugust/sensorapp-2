class CreateStoreys < ActiveRecord::Migration
  def change
    create_table :storeys do |t|
      t.string :name

      t.timestamps
    end
  end
end
