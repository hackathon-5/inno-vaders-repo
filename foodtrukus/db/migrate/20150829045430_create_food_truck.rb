class CreateFoodTruck < ActiveRecord::Migration
  def change
    create_table :food_trucks do |t|
      t.string :name
      t.integer :user_id
      t.text :description
      t.boolean :is_open
      t.float :current_lat
      t.float :current_long
      t.time :closing_time

      t.timestamps null: false
    end
  end
end
