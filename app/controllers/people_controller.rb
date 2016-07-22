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
    render_json_api_serializer person
  end

  def index
    render_json_api_serializer(Person.all, :ok, is_collection: true)
  end

  def destroy
    if person.destroy
      render status: :no_content
    end
  end

  private

  def person
    @person ||= Person.find(params[:id])
  end

  def person_params
    params.require(:person).permit(:first_name, :last_name, :age, :gender, :email, :household_id)
  end
end
