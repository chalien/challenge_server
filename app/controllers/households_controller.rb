class HouseholdsController < ApplicationController
  def create
    household = Household.new(household_params)
    if household.save
      render_json_api_serializer household
    else
      render json: JSONAPI::Serializer.serialize_errors(household.errors), status: 422
    end
  end

  def show
    household = Household.find(params[:id])
    render_json_api_serializer household
  end

  def index
    render_json_api_serializer Household.all, :ok, is_collection: true
  end

  def household_params
    params.require(:household).permit(:address, :zip, :city, :state, :number_of_bedrooms)
  end
end
