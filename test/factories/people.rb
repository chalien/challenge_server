FactoryGirl.define do
  factory :person do
    first_name "Jhon"
    last_name "Doe"
    email "test@test.com"
    age 45
    gender "F"
    household
  end
end
