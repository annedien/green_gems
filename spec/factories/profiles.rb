FactoryGirl.define do
  factory :profile do
    first_name    { Faker::Name.first_name }
    last_name     { Faker::Name.last_name }
    phone_nr      1234567890
    street_name   "ergensweg"
    house_nr       123
    house_nr_add   "A"
    postal_code    "1234BB"
    city            "Ergens"
    country         "Lalalnd"
    birthday        "22-okt-2016"
    end
  end