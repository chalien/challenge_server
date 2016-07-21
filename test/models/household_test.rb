require "test_helper"

describe Household do
  let(:household) { Household.new }
  should have_many(:people)
  should have_many(:vehicles).through(:people)
end
