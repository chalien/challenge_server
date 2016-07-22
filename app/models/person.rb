class Person < ApplicationRecord
  belongs_to :household
  has_many :vehicles, dependent: :destroy
end
