class FoodTrucksController < ApplicationController
  expose(:food_trucks) {FoodTruck.all}
  expose(:food_truck, attributes: :food_truck_params)

  def create
  end

  def update
  end

  def destroy
  end

  def show
  end

  private

  def food_truck_params
    params.require(:food_truck).permit(:name, :description, :is_open, :open_until, :lattitude, :longitude, :closing_time )
  end
end
