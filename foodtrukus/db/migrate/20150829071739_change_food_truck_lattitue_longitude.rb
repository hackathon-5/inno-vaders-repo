class ChangeFoodTruckLattitueLongitude < ActiveRecord::Migration
  def change
    rename_column :food_trucks, :current_lat, :lattitude
    rename_column :food_trucks, :current_long, :longitude
  end
end
