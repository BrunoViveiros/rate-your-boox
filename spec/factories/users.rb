# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { Faker::Internet.unique.username }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.unique.password }

    trait :invalid do
      username { nil }
    end
  end
end
