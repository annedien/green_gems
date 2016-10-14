FactoryGirl.define do
    factory :product do
      name          "bamboo"
      species        "prikelyplant"
      price           { Faker::Commerce.price }
      description     { Faker::Lorem.sentence(5) }

      trait :active do
        active true
      end

      trait :inactive do
        active false
      end
    end
  end