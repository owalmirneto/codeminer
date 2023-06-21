# frozen_string_literal: true

FactoryBot.define do
  factory :ship do
    pilot

    fuel_level { rand(1..90) }
    fuel_capacity { fuel_level + rand(1..50) }
    weight_capacity { rand(1..50) }

    trait :blank do
      pilot { nil }

      fuel_level { nil }
      fuel_capacity { nil }
      weight_capacity { nil }
    end

    factory :blank_ship, traits: [:blank]
  end
end
