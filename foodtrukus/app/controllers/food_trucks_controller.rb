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
  
  @food_trucks = HappyHour.all
  @geojson = Array.new

  @food_trucks.each do |food_truck|
    @geojson << {
      type: 'Feature',
      geometry: {
        type: 'Point',
        coordinates: [food_truck.longitude, food_truck.latitude]
      },
      properties: {
        name: food_truck.name,
        description: food_truck.description,
        :'marker-color' => '#00607d',
        :'marker-symbol' => 'circle',
        :'marker-size' => 'medium'
      }
    }
  end
  
  respond_to do |format|
    format.html
    format.json { render json: @geojson }  # respond with the created JSON object
  end
  
  private

  def food_truck_params
    params.require(:food_truck).permit(:name, :description, :is_open, :open_until, :lattitude, :longitude, :closing_time )
  end
end
