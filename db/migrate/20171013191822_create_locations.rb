class CreateLocations < ActiveRecord::Migration[5.1]
  def change
    create_table :locations do |t|
      t.integer :lat
      t.integer :lng
      t.string :location_name
      t.integer :user_id

      t.timestamps
    end
  end
end
