require "test_helper"

describe Vehicle do
  let(:vehicle) { Vehicle.new }

  should belong_to(:person)
end
