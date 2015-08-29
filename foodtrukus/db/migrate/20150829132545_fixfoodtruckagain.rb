class Fixfoodtruckagain < ActiveRecord::Migration
  def change
    rename_column :food_trucks, :lattitude, :latitude
  end
end
