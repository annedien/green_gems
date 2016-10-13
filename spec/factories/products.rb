FactoryGirl.define do
    factory :product do
      name          "bamboo"
      species        "prikelyplant"
      Maintenance     "makkelijk"
      price           { Faker::Commerce.price }
      description     { Faker::Lorem.sentence(10) }
      image_url       {Faker::Avatar.image}
      location        "toilet"
      needs_sun       true
      needs_shade     false
      needs_halfshade false

      trait :active do
        active true
      end

      trait :inactive do
        active false
      end
    end
  end