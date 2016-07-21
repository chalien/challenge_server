class VehiclesController < ApplicationController
  def create
    vehicle = Vehicle.new(vehicle_params)
    if vehicle.save
      render_json_api_serializer vehicle
    else
      render json: vehicle.errors
    end
  end

  def show
    vehicle = Vehicle.find(params[:id])
    render_json_api_serializer vehicle
  end

  def index
    render_json_api_serializer(Vehicle.all, :ok, is_collection: true)
  end

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :license_plate, :person_id)
  end
end
