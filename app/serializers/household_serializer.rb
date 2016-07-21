class HouseholdSerializer < BaseSerializer
  attribute :address
  attribute :zip
  attribute :city
  attribute :state
  attribute :number_of_bedrooms
  attribute :created_at
  attribute :updated_at

  has_many :people, include_links: false, include_data: true
  has_many :vehicles, include_links: false, include_data: true
end
