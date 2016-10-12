class CreateLocations < ActiveRecord::Migration[5.0]
  def change
    create_table :locations do |t|
      t.boolean :living_room
      t.boolean :kitchen
      t.boolean :bathroom
      t.boolean :outdoor

      t.timestamps
    end
  end
end
