require "test_helper"

describe Person do
  let(:person) { Person.new }

  should belong_to(:household)
  should have_many(:vehicles)
end
