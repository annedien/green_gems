class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :name
      t.string :species
      t.string :maintenance
      t.decimal :price
      t.text :description
      t.string :image_url
      t.string :location
      t.boolean :needs_sun
      t.boolean :needs_shade
      t.boolean :needs_halfshade

      t.timestamps
    end
  end
end
