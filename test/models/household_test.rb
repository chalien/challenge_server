require "test_helper"

describe Household do
  let(:household) { Household.new }
  should have_many(:people)
  should have_many(:vehicles).through(:people)

  should validate_presence_of(:address);
  should validate_presence_of(:zip);
  should validate_presence_of(:city);
  should validate_presence_of(:state);
  should validate_presence_of(:number_of_bedrooms);
end
