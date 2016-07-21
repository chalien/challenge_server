require 'jsonapi-serializers'

class HouseholdSerializer
  include JSONAPI::Serializer

  attribute :address
  attribute :zip
  attribute :city
  attribute :state
  attribute :number_of_bedrooms
  attribute :created_at
  attribute :updated_at

  has_many :people
  has_many :vehicles

  def self_link
    nil
  end
end
