class AddKeyToLocations < ActiveRecord::Migration[5.1]
  def change
    change_column :locations, :lat, :decimal
    change_column :locations, :lng, :decimal
  end
end
