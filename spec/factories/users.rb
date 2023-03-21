# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    username { Faker::Internet.unique.username(specifier: 3..15) }
    email { Faker::Internet.unique.email }
    password { Faker::Internet.password }
    first_name { Faker::Name.first_name }
    last_name { Faker::Name.last_name }
    birthday { Faker::Date.birthday(min_age: 18, max_age: 99) }
    bio { Faker::Quote.jack_handey }

    trait :without_username do
      username { nil }
    end

    trait :without_email do
      email { nil }
    end

    trait :without_password do
      password { nil }
    end

    trait :without_first_name do
      first_name { nil }
    end

    trait :without_last_name do
      last_name { nil }
    end

    trait :without_birthday do
      birthday { nil }
    end

    trait :without_bio do
      bio { nil }
    end
  end
end
