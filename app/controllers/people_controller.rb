class PeopleController < ApplicationController
  def create
    person = Person.new(person_params)
    if person.save
      render json: JSONAPI::Serializer.serialize(person)
    else
      render json: person.errors
    end
  end

  def show
    person = Person.find(params[:id])
    render json: JSONAPI::Serializer.serialize(person)
  end

  def index
    render json: JSONAPI::Serializer.serialize(Person.all, is_collection: true)
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :gender, :email, :household_id)
  end
end
