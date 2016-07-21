class Person < ApplicationRecord
  belongs_to :household
  has_many :vehicles
end
