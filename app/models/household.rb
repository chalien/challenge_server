class Household < ApplicationRecord
  has_many :people, dependent: :destroy
  has_many :vehicles, through: :people
  validates :address, :zip, :city, :state, :number_of_bedrooms, presence: true
end
