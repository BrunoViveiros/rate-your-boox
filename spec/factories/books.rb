# frozen_string_literal: true

FactoryBot.define do
  factory :book do
    title { Faker::Book.title }
    release_date { Faker::Date.birthday(min_age: 0, max_age: 99) }
    author

    trait :without_title do
      title { nil }
    end

    trait :without_release_date do
      release_date { nil }
    end

    trait :without_author do
      author { nil }
    end
  end
end
