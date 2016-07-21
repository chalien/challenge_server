class Household < ApplicationRecord
  has_many :people
  has_many :vehicles, through: :people
end
