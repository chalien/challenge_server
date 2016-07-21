class VehiclesController < ApplicationController
  def create
    vehicle = Vehicle.new(vehicle_params)
    if vehicle.save
      render json: JSONAPI::Serializer.serialize(vehicle)
    else
      render json: vehicle.errors
    end
  end

  def show
    vehicle = Vehicle.find(params[:id])
    render json: JSONAPI::Serializer.serialize(vehicle)
  end

  def index
    render json: JSONAPI::Serializer.serialize(Vehicle.all, is_collection: true)
  end

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :license_plate, :person_id)
  end
end
