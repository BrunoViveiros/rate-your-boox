# frozen_string_literal: true

FactoryBot.define do
  factory :author do
    name { Faker::Book.author }
    birthday { Faker::Date.birthday(min_age: 18, max_age: 99) }
    also_known_as { rand(1..4).times.map { Faker::Internet.username } }

    trait :without_name do
      name { nil }
    end

    trait :without_birthday do
      birthday { nil }
    end

    trait :without_aka do
      also_known_as { nil }
    end
  end
end
