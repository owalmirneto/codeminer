# frozen_string_literal: true

FactoryBot.define do
  factory :pilot do
    certification { Luhn.generate(6) }
    name { Faker::Name.name }
    age { rand(18..65) }
    credits { rand(100..999) }
    location_planet { Faker::Space.planet }

    trait :blank do
      certification { nil }
      name { nil }
      age { nil }
      credits { nil }
      location_planet { nil }
    end

    trait :invalid do
      certification { SecureRandom.alphanumeric(6) }
    end

    factory :blank_pilot, traits: [:blank]
    factory :invalid_pilot, traits: [:invalid]
  end
end
