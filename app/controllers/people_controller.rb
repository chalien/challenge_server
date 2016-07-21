class PeopleController < ApplicationController
  def create
    person = Person.new(person_params)
    if person.save
      render_json_api_serializer person
    else
      render json: person.errors
    end
  end

  def show
    person = Person.find(params[:id])
    render_json_api_serializer person
  end

  def index
    render_json_api_serializer(Person.all, :ok, is_collection: true)
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :gender, :email, :household_id)
  end
end
