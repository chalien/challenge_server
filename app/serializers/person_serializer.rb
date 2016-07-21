class PersonSerializer < BaseSerializer
  attribute :first_name
  attribute :last_name
  attribute :email
  attribute :age
  attribute :gender
  attribute :created_at
  attribute :updated_at

  has_many :vehicles, include_links: false, include_data: true
end
