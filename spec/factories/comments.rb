# frozen_string_literal: true

FactoryBot.define do
  factory :comment do
    body { Faker::Quote.matz }
    user
    for_user

    trait :for_user do
      association :commentable, factory: :user
    end

    trait :for_book do
      association :commentable, factory: :book
    end

    trait :for_author do
      association :commentable, factory: :author
    end
  end
end
