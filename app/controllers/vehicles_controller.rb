class VehiclesController < ApplicationController
  def create
    vehicle = person.vehicles.build(vehicle_params)
    if vehicle.save
      render_json_api_serializer vehicle
    else
      render json: vehicle.errors
    end
  end

  def show
    render_json_api_serializer vehicle
  end

  def index
    render_json_api_serializer(Vehicle.all, :ok, is_collection: true)
  end

  def destroy
    if vehicle.destroy
      render status: :no_content
    end
  end
  private

  def vehicle
    @vehicle ||=  Vehicle.find(params[:id])
  end

  def vehicle_params
    params.require(:vehicle).permit(:make, :model, :year, :license_plate, :person_id)
  end

  def person
    @person ||= Person.find(params[:person_id])
  end
end
