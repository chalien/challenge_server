FactoryGirl.define do
  factory :vehicle do

    make "Fiat"
    model "Siena"
    year "2005"
    license_plate "KMU890"
    person
  end
end
