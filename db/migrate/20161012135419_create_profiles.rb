class CreateProfiles < ActiveRecord::Migration[5.0]
  def change
    create_table :profiles do |t|
      t.string :first_name
      t.string :last_name
      t.integer :phone_nr
      t.string :street_name
      t.integer :house_nr
      t.string :house_nr_add
      t.string :postal_code
      t.string :city
      t.string :country
      t.string :birthday
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
