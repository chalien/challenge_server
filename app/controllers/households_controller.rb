class HouseholdsController < ApplicationController
  def create
    household = Household.new(household_params)
    if household.save
      render json: JSONAPI::Serializer.serialize(household)
    else
      render json: household.errors
    end
  end

  def show
    household = Household.find(params[:id])
    render json: JSONAPI::Serializer.serialize(household)
  end

  def index
    render json: JSONAPI::Serializer.serialize(Household.all, is_collection: true)
  end

  def household_params
    params.require(:household).permit(:address, :zip, :city, :state, :number_of_bedrooms)
  end
end
